* Test div_, rem_ functions for non-monic univariate polynomials with remainder
#-
S x1;

L F1 = (2*x1+1)^2+3*x1+5;
L F2 = (2*x1+1);
.sort
L F3 = div_(F1,F2);
L F4 = rem_(F1,F2);

P;
.end
