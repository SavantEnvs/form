* Mystery of count_ in functions
S x;
CF f;
L F = 1 + x + x^2;
multiply f(count_(x,1));
P;
.sort
Drop;
L G = 1 + x + x^2;
$x = f(count_(x,1));
multiply $x;
P;
ModuleOption local $x;
.end
