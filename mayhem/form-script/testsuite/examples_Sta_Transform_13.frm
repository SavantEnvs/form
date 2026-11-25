CFunction f;
Symbol y,n;
Local test = f(0) + f(1) + f(0,1) + f(0,0,1) + f(0,1,1)
   + f(0,0) + f(1,0) + f(1,1) + f(1,0,0) + f(0,1,0) + f(1,0,1);
Transform f tolyndon(1,last)=(y,n);
Print;
.end
