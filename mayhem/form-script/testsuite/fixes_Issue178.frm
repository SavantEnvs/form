* PolyRatFun performance regression
* Josh's example:
Symbol a,b,c,ep;
CFunction redprf,epprf;

Local test1 =
       + epprf(-1, - 1 + ep)*redprf(1,1)
       + epprf(-1,1 - 3*ep + 2*ep^2)*redprf(-1,1)
      ;
.sort

PolyRatFun redprf;
Identify redprf(a?,b?) = redprf(a*c,b*c);
Identify epprf(a?,b?) = redprf(a,b);
.sort

Print;
.end
