* Improve format mathematica, for powers of dot products
* Also check C mode:
Vector p,q;
Local test = p.q + p.q^2 + 1/p.q + 1/p.q^2;
Format C;
Print;
.end
