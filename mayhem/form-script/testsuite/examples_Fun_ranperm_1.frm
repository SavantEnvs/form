    Function f;
    Symbols x1,...,x5;
    Local F = ranperm_(f,1,2,3,4,5,6)
             +ranperm_(f,x1,x2,x3+x1,x4,x5);
    Print +s;
    .end
