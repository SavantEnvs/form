* Test div_, rem_ functions for monic univariate polynomials
#-
S x1;

L F1 = (x1+1)^2;
L F2 = (x1+1);
.sort
L F3 = div_(F1,F2);
L F4 = rem_(F1,F2);

P;
.end
