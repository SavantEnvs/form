#-
#define NPOLYS "60"
#define NVARS "1"
#define NEGPOW "0"
#define MAXPOW "10"
#define MAXCOEFF "100"
#define NTERMS "40"
#include polynomial.frm # polynomial_prc
#call genpoly(`NPOLYS',`NVARS',`NEGPOW',`MAXPOW',`MAXCOEFF',`NTERMS')
#call testiaj(mul,2,`NPOLYS',2,`NPOLYS')
.end
