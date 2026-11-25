     Indices mu,nu;
     CFunctions f;
     L F = f(mu,nu)*f(nu,mu);
     sum  mu, nu;
     Print;
     .sort
     Indices rho,si;
     Vectors p1,p2,p3,v;
     Tensor g;
     Local G = e_(mu,nu,rho,si)*g(mu,nu,p1,v)*g(rho,si,p2,v);
     sum mu,nu,rho,si;
     Multiply F^3;
     id  v = e_(p1,p2,p3,?);
     print;
     .end
