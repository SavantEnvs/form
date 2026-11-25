#-
#define NPOLYS "7"
#define NVARS "5"
#define NEGPOW "0"
#define MAXPOW "10"
#define MAXCOEFF "100"
#define NTERMS "9"
#include polynomial.frm # polynomial_prc
#call genpoly(`NPOLYS',`NVARS',`NEGPOW',`MAXPOW',`MAXCOEFF',`NTERMS')
#call testprf(norm,2,`NPOLYS',2,`NPOLYS',2,`NPOLYS',2,`NPOLYS')
.end
