* Crash by replace_(x,0)
S x;
V p;
CF f;

L F = f(p.p+x);
L G = f(p.p*x);

multiply replace_(x,0);
P;
.end
