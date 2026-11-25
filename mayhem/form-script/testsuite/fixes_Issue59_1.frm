* Crash when PolyRatFun(expand)
CF num,rat;
S x;
PolyRatFun rat(expand,x,2);
L F = <num(1+5*x)>*...*<num(28+5*x)>
    * <num(-1-3*x)>*...*<num(-27-3*x)>
;
id num(x?) = rat(x,1);
.sort
P +s;
.end
