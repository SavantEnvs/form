#-
#: MaxTermSize 200
CFunction prf;
Symbol x;
PolyRatFun prf;
#define N "3"
* This one goes wrong in flint::ratfun_normalize rather than to_argument_poly
Local test = prf((x+1)^`N',(x+2)^`N')*prf((x^`N'-1)^`N',(x^`N'-2)^`N');
Print;
.end
