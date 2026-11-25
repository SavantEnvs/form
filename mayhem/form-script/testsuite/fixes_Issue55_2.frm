* Pattern matching with sets, and (ex-)PolyRatFun CFunction
CF frac;
S x,y;
L F = - 2/3*x;
P;
.sort(PolyRatFun=frac);
*.sort;  * putting .sort is useless for this bug
*argument frac,1;endargument;  * workaround
id frac(x?neg_,y?) = - frac(-x,y);  * doesn't match
P;
.end
