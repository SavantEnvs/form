* Test div_, rem_ functions for non-monic multivariate polynomials without remainder
#-
S x1,x2;

L F1 = (2*x1*x2+1*x1)^2;
L F2 = (2*x1*x2+1*x1);
.sort
L F3 = div_(F1,F2);
L F4 = rem_(F1,F2);

P;
.end
