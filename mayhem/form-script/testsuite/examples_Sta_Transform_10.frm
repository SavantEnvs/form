CFunction f,g;
Function h,i;
Symbol x;
Vector p;
Index mu;
Local test = f(100,g(1),g(2)^2,x,x^2,mu,p,p.p,1/p.p,h*i,i*h);
Identify f(?a) = f(?a,?a);
Transform f dedup(1,last);
Print;
.end
