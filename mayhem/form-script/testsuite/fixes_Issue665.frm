CFunction f,g;
Vector p1,p2;
Local test = p1*p2 + f(p1*p2) + p1*f(p2);
Identify p1?*p2? = g(1,p1,p2);
Identify f(p1?*p2?) = g(2,p1,p2);
Identify p1?*f(p2?) = g(3,p1,p2);
Print;
.end
