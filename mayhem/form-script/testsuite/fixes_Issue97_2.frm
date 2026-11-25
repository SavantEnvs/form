On OldFactArg;
V p1,p2,p3,p4;
S x;
CF f;
T t;
L OK1 = f(t(p1)*x);
L OK2 = f(t(p1,p2)*x);
L OK3 = f(t(p1,p2,p3)*x);
L BAD = f(t(p1,p2,p3,p4)*x);
factarg f;
P;
.end
