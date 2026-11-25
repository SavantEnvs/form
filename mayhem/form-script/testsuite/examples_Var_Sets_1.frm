    Symbols a1,a2,a3,b1,b2,b3,x,n;
    CFunctions g1,g2,g3,g;
    Local expr =
        g(a1)+g(a2)+g(a3)+g(x);
    id,g(x?{a1,a2,a3}[n]) = {g1,g2,g3}[n]({b1,b2,b3}[n]);
    print;
    .end
