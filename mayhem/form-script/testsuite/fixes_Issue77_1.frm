* Freeze when pattern matchings with powers of dollar variables ($x^n?)
S x,n;
L F = 1;
#$x = x;
id $x^n? = 1;
P;
ModuleOption local $x;
.end
