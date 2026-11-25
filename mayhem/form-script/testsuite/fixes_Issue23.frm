#-
CFunction f,g;
Symbol x;

Local F = (x+1)^2*(f(x)+g(x))^2;
Local G = (x+1)^2*(f(x)+g(x))^2;

Format Mathematica;

Bracket x;
Print +s F;
.sort

Print +s G;
.end
