* Test div_, rem_ functions for non-monic multivariate polynomials with remainder
#-
S x1,x2,x3;

L F1 = -7*x1*x2^9*x3+5*x1*x2^10*x3-3*x1^2*x2^3*x3^2+35*x1^2*x2^4*x3^4
-42*x1^2*x2^5*x3^2-25*x1^2*x2^5*x3^4+30*x1^2*x2^6*x3^2-8*x1^4*x2^5*x3^3+40*x1^5*x3^6
-48*x1^5*x2*x3^4+3*x1^6*x2^2*x3;
L F2 = x1*x2^5-5*x1^2*x3^3+6*x1^2*x2*x3;
L F3 = div_(F1,F2);
L F4 = rem_(F1,F2);

P;
.end
