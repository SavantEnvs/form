S n1,n2;
S x1,x2,x3;
CF f,g(s);
L F1 = f(x1,x2)*g(x1,x2);
L F2 = f(x2,x1)*g(x1,x2);
L F3 = f(x1,x2,x3)*g(x1,x2);
L F4 = f(x2,x1,x3)*g(x1,x2);
L F5 = f(x1,x2)*f(x2,x1,x3)*g(x2,x1)^2;
id f(n1?,n2?,?a) * g(n1?,n2?) = 1;
P;
.end
