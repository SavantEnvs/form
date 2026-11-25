    Symbols x1,x2,x3,x4,a,b;
    Local F = exteuclidean_(97,101);
    Print;
    .sort
    id exteuclidean_(x1?,x2?,x3?,x4?) = x1*x3+x2*x4
        +a*mod2_(1/97,101)+b*mod2_(1/101,97);
    Print;
    .end
