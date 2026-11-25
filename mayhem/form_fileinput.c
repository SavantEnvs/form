/*
 * form_fileinput SCRIPT INPUT — run FORM on a fixed driver SCRIPT with the fuzzed side file
 * INPUT passed in as the preprocessor variable FILE, exactly as a user would type
 *     form -q -D FILE=INPUT SCRIPT
 * The scripts (mayhem/form-load/load.frm, mayhem/form-tablebase/tablebase.frm) read the file
 * through FORM's own statements (`Load`, `TableBase ... open/load/enter`).  This only builds the
 * argument vector, because Mayhem substitutes @@ only as a whole argument, not inside
 * "FILE=@@".  FORM's real main() is compiled as form_main (-Dmain=form_main) and runs unchanged.
 * Before FORM starts, both paths are made absolute and the process moves into its own empty
 * scratch directory (fuzz_scratch_enter, mayhem/fuzz_sandbox.c), so FORM's scratch files and
 * anything a script writes stay private to this run and are removed with it.
 */
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int form_main(int argc, char **argv);
int fuzz_scratch_enter(void);

int main(int argc, char **argv)
{
	if ( argc != 3 ) {
		fprintf(stderr, "usage: %s SCRIPT INPUT\n", argv[0]);
		return 2;
	}
	char *script = realpath(argv[1], NULL), *input = realpath(argv[2], NULL);
	if ( script == NULL ) script = argv[1];
	if ( input == NULL ) input = argv[2];
	size_t n = strlen(input) + sizeof("FILE=");
	char *def = malloc(n);
	if ( def == NULL ) return 2;
	snprintf(def, n, "FILE=%s", input);
	char *args[] = { argv[0], "-q", "-D", def, script, NULL };
	if ( fuzz_scratch_enter() != 0 ) {
		perror("scratch directory");
		return 2;
	}
	return form_main(5, args);
}
