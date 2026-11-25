CFunction f,g,h;
Symbol x,y;
Local test = f(2 + 3*x + 4*x^2) + g(2 + 3*x + 4*x^2) + h(x + x*y + x^2*y);
SplitArg (x) f;
SplitArg (x^2) g;
SplitArg (x*y) h;
Print;
.end
