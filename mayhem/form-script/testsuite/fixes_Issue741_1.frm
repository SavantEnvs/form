* Crash or hang with replace_(x,0) in nested functions
CF f,g,f1,...,f4;
S x,y;

L F1 = f(g(x))*replace_(x,0);
L F2 = f(g(-x))*replace_(x,1);
L F3 = f(g(-x))*replace_(x,0);
L F4 = f(g(x+y))*replace_(x,0);
L F5 = f1(f2(f3(x*f4(x+y))))*replace_(x,0);
L F6 = f(x+g(-x))*replace_(x,0);
P;
.end
