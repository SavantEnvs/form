* PolyRatFun and Argument
Symbol x,s,t,u,m1,m2;
Symbol q1q2,q1q3,q2q3,q3q3;
CFunction rat;

PolyRatFun rat;
Local test = x*rat( - 4*s^2,q1q2^2*q3q3 - 2*q1q2*q1q3*q2q3);
.sort

Argument;
  Identify q1q2 = s/2;
  Identify q1q3 = (t-m1^2)/2;
  Identify q2q3 = (-s-t+m1^2+m2^2)/2;
  Identify q3q3 = m1^2;
EndArgument;

* This works fine:
*Multiply replace_(q1q2,s/2);
*Multiply replace_(q1q3,(t-m1^2)/2);
*Multiply replace_(q2q3,(-s-t+m1^2+m2^2)/2);
*Multiply replace_(q3q3,m1^2);

* PROBLEM 1
* rat is not properly normalized at the end of this module, in the case of the Argument environment
Print +s;
.sort

* PROBLEM 2
* move some other symbol into the rat
* Now the overall factor of the denominator is lost completely
Identify x^s? = rat(x^s,1);
.sort

Print +s;
.end
