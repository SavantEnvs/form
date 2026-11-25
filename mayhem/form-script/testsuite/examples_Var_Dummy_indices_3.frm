    Index mu,nu;
    Symbol x;
    CFunctions f,g;
    Vectors p,q;
    Local F = x^2;
    repeat;
        id,once,x = f(mu)*g(mu);
        sum mu;
    endrepeat;
    id f(nu?) = p(nu);
    id g(nu?) = q(nu);
    print;
    .end
