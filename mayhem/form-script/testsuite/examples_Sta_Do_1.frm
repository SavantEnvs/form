Symbol x,y;
CFunction f;
LocalFactorized F = (1+y)*(2+y)*(3+y)*(4+y)*(5+y);
.sort
#$nf = numfactors_(F);
Local G = <x^1>+...+<x^`$nf'>;
Do $i = 1,$nf;
   Identify,only x^$i = f(F[factor_^$i]);
Enddo;
Print;
ModuleOption local $i;
.end
