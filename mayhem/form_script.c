/*
 * form_script [FORM OPTIONS...] SCRIPT — run FORM on SCRIPT read from standard input, i.e.
 *     form -q [FORM OPTIONS...] - < SCRIPT
 * FORM appends ".frm" to a script name without that extension, and Mayhem's staged input
 * file has none, so the script is handed to FORM through its own stdin mode ("-") instead
 * of by name.  FORM's real main() is compiled as form_main (-Dmain=form_main) and runs
 * unchanged.  Used by the form-script target (`form_script @@`) and the form-setup target
 * (`form_script -S @@ setup.frm`).
 * Before FORM starts, every file argument is made absolute and the process moves into its own
 * empty scratch directory (fuzz_scratch_enter, mayhem/fuzz_sandbox.c), so FORM's scratch files
 * and anything a script writes stay private to this run and are removed with it.
 */
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int form_main(int argc, char **argv);
int fuzz_scratch_enter(void);

int main(int argc, char **argv)
{
	char *args[64];
	int i, n = 0;
	if ( argc < 2 || argc > 60 ) {
		fprintf(stderr, "usage: %s [FORM OPTIONS...] SCRIPT\n", argv[0]);
		return 2;
	}
	if ( freopen(argv[argc-1], "r", stdin) == NULL ) {
		perror(argv[argc-1]);
		return 2;
	}
	args[n++] = argv[0];
	args[n++] = "-q";
	for ( i = 1; i < argc-1; i++ ) {
		char *abs = argv[i][0] != '-' ? realpath(argv[i], NULL) : NULL;
		args[n++] = abs != NULL ? abs : argv[i];
	}
	args[n++] = "-";
	args[n] = NULL;
	if ( fuzz_scratch_enter() != 0 ) {
		perror("scratch directory");
		return 2;
	}
	return form_main(n, args);
}
