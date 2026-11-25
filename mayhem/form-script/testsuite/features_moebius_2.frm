S x,x1,x2;
CF f1,f2;
L F = 1;
multiply <f1(1)*x1^1>+...+<f1(10)*x1^10>;
multiply <f2(1)*x2^1>+...+<f2(10)*x2^10>;
id x1 = x;
id x2 = x^20;
.sort
S n;
id f1(n?) = moebius_(10000+n);
.sort
id f2(n?) = moebius_(20000+n);
P;
.end:result;
