S n1,...,n4;
L F1 = (1+n1)*(1+n2)*n1*n2*n3;
L F2 = (1+n2)*n1*n2*n3*n4;
L F3 = (1+n4)*n1*n2*n3*n4^2;
L F = gcd_(F1,F2,F3);
P F;
.end
