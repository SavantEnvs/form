* $args not expanded for distrib_
S x1,...,x4;
CF f;
L F = f(x1,...,x4);
id f(?a$a) = 1;
multiply distrib_(1,1,f,dummy_,$a);
P;
ModuleOption local $a;
.end
