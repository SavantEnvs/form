#StartFloat 9d
Symbol a,b;
CFunction f;
Local F = 1.0*f(a);
.sort
#endfloat

Local F = F + f(a);
Print;
.end
