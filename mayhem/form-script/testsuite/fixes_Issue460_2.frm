* Improve format mathematica, for powers of dot products
* Check regular mode is unchanged:
Vector p,q;
Local test = p.q + p.q^2 + 1/p.q + 1/p.q^2;
Print;
.end
