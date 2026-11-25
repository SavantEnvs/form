* Crash on PolyRatFun(expand) when the result is zero
CF rat;
S x;
L F = rat(x^10,1-x);
P;
.sort
PolyRatFun rat(expand,x,5);
P;
.end
