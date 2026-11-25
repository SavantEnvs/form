#-
CFunction f,g;
Off Statistics;
#StartFloat 10d
Local F = 1.0*f(1,2,3)*g(3,2,1);
Transform float_, reverse(1,last);
Transform {float_,f}, addargs(1,last);
Print;
.sort

#endfloat
Transform float_, dropargs(1,last);
Transform {float_,f}, selectargs(1,2);
Print;
.end
