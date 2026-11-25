* repeat ignored in some output terms of dd_
V p1,p2,p3,p4;
CF f;
L F = f(p1,p2,p3,p4)*f(p3,p4);
repeat id once f(?a) = dd_(?a);
P +s;
.end
