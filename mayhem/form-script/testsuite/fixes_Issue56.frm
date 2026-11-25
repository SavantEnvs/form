* PolyRatFun(expand) does not expand substituted expressions
CF rat;
S x;
PolyRatFun rat;
L F = rat(1,1+x);
L G = rat(1-x,1);
.sort
PolyRatFun rat(expand,x,2);
Drop;
L H = F - G;
*.sort;  * <-- (1)
P;
.end
