* Wrong normalization of PolyRatFun
CF num,rat;
PolyRatFun rat;
S n1,x,ep;
L F1 = num(n1)*num(1/2);
L F2 = num(n1)*num(-1/2);
L F3 = rat(1,1) - rat(1,1);
L F4 = rat(x,1)*rat(1+ep,1);
id num(x?) = rat(x,1);
P;
.end
