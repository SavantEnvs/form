* denominators statement for nested functions
S x;
CF den;
L F1 = 1/(1+x);
L F2 = 1/(1+1/(1+x));
L F3 = 1/(1+1/(1+1/(1+x)));
L F4 = 1/(1+1/(1+1/(1+1/(1+x))));
denominators den;
multiply replace_(x,2);
P;
.end
