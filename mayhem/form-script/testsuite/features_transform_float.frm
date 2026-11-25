#-
CFunction f;
Off Statistics;
#StartFloat 10d
#message StartFloat
Local F = 1.0*f(1,2,3);
Transform replace(1,last)=(xarg_,2*xarg_+1);
Print;
.sort

#endfloat
#message endfloat
Transform mulargs(1,last);
Print;
.end
