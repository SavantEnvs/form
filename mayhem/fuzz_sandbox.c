/*
 * Fuzz-build environment shim (linked into the FUZZ binaries only; the test-suite/oracle build
 * is untouched).  FORM scripts can act on the host by design, and a fuzzed input must not:
 *
 * 1) Processes: #system, #pipe, #external, `On checkpoint` run-before/after and the -pipe
 *    option spawn shell commands.  system/popen/fork/execvp fail the way they do on a system
 *    without a shell (errno = ENOSYS); FORM's own error paths then report the failed command.
 *
 * 2) Files: #write/#append/#create, `save`, `TableBase ... create/open`, checkpoints and a
 *    setup file's `tempdir` can create or overwrite any path, and #remove calls remove() on
 *    any path.  A fuzzed script could delete the target binary or a driver script, or leave a
 *    file that a later input #include's, so one input's result would depend on earlier ones.
 *
 *    So every run gets its own empty scratch directory: the entry point calls
 *    fuzz_scratch_enter() before FORM starts, which creates $TMPDIR/form-fuzz-<pid>.XXXXXX
 *    (mkdtemp), chdir()s into it and removes it again at exit.  FORM's own scratch files
 *    (./xformxxx.str, .sc1, .sor...) and anything a script writes under a bare file name
 *    land there and vanish with the run.  A run killed by a sanitizer abort or a timeout
 *    cannot clean up, so fuzz_scratch_enter() first removes the directories of earlier runs
 *    whose process is gone.
 *
 *    Every call that modifies the filesystem (open/fopen/freopen for writing, creat, remove,
 *    unlink, rename, truncate) is allowed only on a bare file name (no '/') once the process
 *    is inside its scratch directory.  Anything else fails with EACCES, which FORM reports as
 *    an ordinary "cannot open/create file" error.  Reading stays unrestricted.  FORM has no
 *    chdir/mkdir/symlink of its own, so a bare name cannot leave the scratch directory.
 *
 * Wrapping libc to mock the environment, not to change FORM's code: the real calls are reached
 * through dlsym(RTLD_NEXT), or a raw syscall for the cleanup.
 */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <dirent.h>
#include <limits.h>
#include <signal.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

/* ---- 1) no process spawning ---- */
int system(const char *cmd) { (void)cmd; errno = ENOSYS; return -1; }
FILE *popen(const char *cmd, const char *mode) { (void)cmd; (void)mode; errno = ENOSYS; return NULL; }
pid_t fork(void) { errno = ENOSYS; return -1; }
int execvp(const char *file, char *const argv[]) { (void)file; (void)argv; errno = ENOSYS; return -1; }

/* ---- 2) a private scratch directory per run; writes only to bare names inside it ---- */
static char scratch_dir[PATH_MAX];
static int in_scratch;

static int scratch_ok(const char *path)
{
	if ( !in_scratch || path == NULL ) return 0;
	while ( path[0] == '.' && path[1] == '/' ) path += 2;
	return path[0] != 0 && strcmp(path, ".") != 0 && strcmp(path, "..") != 0
		&& strchr(path, '/') == NULL;
}

/* Empty a (flat) scratch directory and remove it; raw syscalls bypass the wrappers below. */
static void remove_dir(const char *dir)
{
	DIR *d = opendir(dir);
	if ( d != NULL ) {
		struct dirent *e;
		while ( ( e = readdir(d) ) != NULL ) {
			if ( strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0 ) continue;
			syscall(SYS_unlinkat, dirfd(d), e->d_name, 0);
		}
		closedir(d);
	}
	rmdir(dir);
}

static void scratch_leave(void)
{
	if ( in_scratch ) { in_scratch = 0; remove_dir(scratch_dir); }
}

/* Remove form-fuzz-<pid>.* directories left by runs that were killed: the process is gone
   (kill() says ESRCH) and the directory has not changed for two minutes (a worker in another
   PID namespace sharing $TMPDIR is never mistaken for a dead one while it runs). */
static void sweep_stale(const char *tmp)
{
	DIR *d = opendir(tmp);
	struct dirent *e;
	time_t now = time(NULL);
	if ( d == NULL ) return;
	while ( ( e = readdir(d) ) != NULL ) {
		char path[PATH_MAX];
		struct stat st;
		int pid, n = 0;
		if ( sscanf(e->d_name, "form-fuzz-%d.%n", &pid, &n) != 1 || n == 0
		  || strlen(e->d_name + n) != 6 || pid <= 0 || pid == (int)getpid() ) continue;
		if ( kill((pid_t)pid, 0) == 0 || errno != ESRCH ) continue;
		if ( snprintf(path, sizeof(path), "%s/%s", tmp, e->d_name) >= (int)sizeof(path) ) continue;
		if ( lstat(path, &st) != 0 || !S_ISDIR(st.st_mode) || st.st_uid != getuid()
		  || now - st.st_mtime < 120 ) continue;
		remove_dir(path);
	}
	closedir(d);
}

/* Called by the entry point before FORM runs; returns 0, or -1 (errno set) on failure. */
int fuzz_scratch_enter(void)
{
	const char *tmp = getenv("TMPDIR");
	if ( tmp == NULL || *tmp == 0 ) tmp = "/tmp";
	sweep_stale(tmp);
	if ( snprintf(scratch_dir, sizeof(scratch_dir), "%s/form-fuzz-%d.XXXXXX", tmp, (int)getpid())
	     >= (int)sizeof(scratch_dir) ) { errno = ENAMETOOLONG; return -1; }
	if ( mkdtemp(scratch_dir) == NULL ) return -1;
	if ( chdir(scratch_dir) != 0 ) { int e = errno; rmdir(scratch_dir); errno = e; return -1; }
	in_scratch = 1;
	atexit(scratch_leave);
	return 0;
}

static int deny(void) { errno = EACCES; return -1; }
static int open_writes(int flags)
{
	return (flags & (O_WRONLY | O_RDWR | O_CREAT | O_TRUNC | O_APPEND)) != 0;
}
static int mode_writes(const char *mode)
{
	return mode != NULL && strpbrk(mode, "wa+") != NULL;
}
#define REAL(name) static __typeof__(name) *real; \
	if ( real == NULL ) real = (__typeof__(name) *)dlsym(RTLD_NEXT, #name)

#define OPEN_WRAPPER(name) \
int name(const char *path, int flags, ...) \
{ \
	mode_t mode = 0; \
	if ( (flags & O_CREAT) || (flags & O_TMPFILE) == O_TMPFILE ) { va_list ap; va_start(ap, flags); mode = va_arg(ap, int); va_end(ap); } \
	if ( open_writes(flags) && !scratch_ok(path) ) return deny(); \
	REAL(name); \
	return real(path, flags, mode); \
}
OPEN_WRAPPER(open)
OPEN_WRAPPER(open64)

#define OPENAT_WRAPPER(name) \
int name(int dirfd, const char *path, int flags, ...) \
{ \
	mode_t mode = 0; \
	if ( (flags & O_CREAT) || (flags & O_TMPFILE) == O_TMPFILE ) { va_list ap; va_start(ap, flags); mode = va_arg(ap, int); va_end(ap); } \
	if ( open_writes(flags) && ( dirfd != AT_FDCWD || !scratch_ok(path) ) ) return deny(); \
	REAL(name); \
	return real(dirfd, path, flags, mode); \
}
OPENAT_WRAPPER(openat)
OPENAT_WRAPPER(openat64)

int creat(const char *path, mode_t mode)   { return open(path, O_CREAT | O_WRONLY | O_TRUNC, mode); }
int creat64(const char *path, mode_t mode) { return open(path, O_CREAT | O_WRONLY | O_TRUNC, mode); }

#define FOPEN_WRAPPER(name) \
FILE *name(const char *path, const char *mode) \
{ \
	if ( mode_writes(mode) && !scratch_ok(path) ) { errno = EACCES; return NULL; } \
	REAL(name); \
	return real(path, mode); \
}
FOPEN_WRAPPER(fopen)
FOPEN_WRAPPER(fopen64)

#define FREOPEN_WRAPPER(name) \
FILE *name(const char *path, const char *mode, FILE *stream) \
{ \
	if ( mode_writes(mode) && !scratch_ok(path) ) { errno = EACCES; return NULL; } \
	REAL(name); \
	return real(path, mode, stream); \
}
FREOPEN_WRAPPER(freopen)
FREOPEN_WRAPPER(freopen64)

int remove(const char *path)
{
	if ( !scratch_ok(path) ) return deny();
	REAL(remove);
	return real(path);
}
int unlink(const char *path)
{
	if ( !scratch_ok(path) ) return deny();
	REAL(unlink);
	return real(path);
}
int unlinkat(int dirfd, const char *path, int flags)
{
	if ( dirfd != AT_FDCWD || !scratch_ok(path) ) return deny();
	REAL(unlinkat);
	return real(dirfd, path, flags);
}
int rename(const char *from, const char *to)
{
	if ( !scratch_ok(from) || !scratch_ok(to) ) return deny();
	REAL(rename);
	return real(from, to);
}
int renameat(int fd1, const char *from, int fd2, const char *to)
{
	if ( fd1 != AT_FDCWD || fd2 != AT_FDCWD || !scratch_ok(from) || !scratch_ok(to) ) return deny();
	REAL(renameat);
	return real(fd1, from, fd2, to);
}
int truncate(const char *path, off_t len)
{
	if ( !scratch_ok(path) ) return deny();
	REAL(truncate);
	return real(path, len);
}
