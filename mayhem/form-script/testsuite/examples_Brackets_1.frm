    Symbols a,b,c,x;
    L  F = a*x^2+b*x+c;
    B x;
    .sort
    L  Discriminant = F[x]^2-4*F[x^2]*F[1];
    Print;
    .end
