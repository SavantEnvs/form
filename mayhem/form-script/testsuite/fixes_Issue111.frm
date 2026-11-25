* PolyRatFun(expand) doesn't expand numeric coefficients in one go
S x;
CF rat;
PolyRatFun rat(expand,x,3);
L F = rat(1+x);
.sort
multiply 2;
*.sort; * <-- workaround
P;
.sort
Drop;
L F1 = 3/5;
L F2 = 6/5;
L F3 = 2/5;
L F4 = 12345678901234567890123456789012345678901234567890;
L F5 = 2/5 * rat(1+x);
L F6 = 2/5 * rat(1,1-x);
L F7 = 2/5 * rat(1+x) * rat(1-2*x);
L F8 = 2/5 * rat(1+x) * rat(1,1-x);
L F9 = 2/5 * rat(1,1+x) * rat(1,1-2*x);
multiply 5/3;
P;
.end
