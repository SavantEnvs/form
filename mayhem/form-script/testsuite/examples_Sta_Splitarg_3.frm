CFunction f;
Symbol x,y;
Local test = f(2 + 3*x + 4*x^2 + 5*x*y + 6*y);
SplitArg ((x)) f;
Print;
.end
