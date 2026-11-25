CFunction f;
Index mu,nu;
Local test1 = f(mu,mu);
Local test2 = f(mu,nu);
Local test3 = f(mu,nu)*f(mu,nu);
Sum mu,0,1,2, nu,0,1,2;
Print;
.end
