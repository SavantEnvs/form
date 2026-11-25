#: MaxTermSize 322
CFunction prf;
Symbol x,y;
PolyRatFun prf;
#define N "3"
* This one goes wrong in flint::ratfun_normalize rather than to_argument_mpoly
Local test = prf((x+y)^`N',(x+2*y)^`N')*prf((x^`N'-y)^`N',(x^`N'-2*y)^`N');
Print;
.end
