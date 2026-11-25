*TODO: OldFactArg is needed for the result in the manual.
    On OldFactArg;
    Symbols a,b,c;
    CFunctions f,f1,f2,f3;
    Local F = f(-3*a*b)+f(3*a*b)
             +f1(-3*a*b)+f1(3*a*b)
             +f2(-3*a*b)+f2(3*a*b)
             +f3(-3*a*b)+f3(3*a*b);
    FactArg,f;
    Factarg,(0),f1;
    Factarg,(1),f2;
    Factarg,(-1),f3;
    Print;
    .end
