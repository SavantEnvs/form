* Improve format mathematica, for powers of dot products
* Also check Fortran mode:
Vector p,q;
Local test = p.q + p.q^2 + 1/p.q + 1/p.q^2;
Format Fortran;
Print;
.end
