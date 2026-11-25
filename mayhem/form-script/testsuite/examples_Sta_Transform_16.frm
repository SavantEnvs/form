CFunction f,g;
Symbol x;
Local test = f(1,...,5) + g(1,...,5);
Transform f dropargs(2,4);
Transform g dropargs(1,last);
Print;
.end
