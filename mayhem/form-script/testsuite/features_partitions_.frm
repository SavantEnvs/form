* Test partitions function
#-
V p1,p2,p3,p4,p5,p6;
CF f1,f2,f3;

L F1 = partitions_(3,f1,2,f1,2,f1,2,p1,p2,p3,p4,p5,p6) - dd_(p1,p2,p3,p4,p5,p6);
L F2 = partitions_(0,f1,2,p1,p2,p3,p4,p5,p6) - dd_(p1,p2,p3,p4,p5,p6);
L F3 = partitions_(4,f1,2,f1,2,f2,1,f3,1,p1,p1,p1,p1,p1,p1) - 90*f1(p1,p1)^2*f2(p1)*f3(p1);
L F4 = partitions_(2,f1,2,f2,0,p1,p2,p3,p4,p5,p6) - distrib_(1,2,f1,f2,p1,p2,p3,p4,p5,p6);
id p1?.p2? = f1(p1,p2); * for dd_

P;
.end
