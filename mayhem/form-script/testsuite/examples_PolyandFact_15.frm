    Symbol x,y;
    CFunction f;
    Format Nospaces;
    #$a = x^4-y^4;
    #factdollar $a;
    Local F = f(numfactors_($a))
        +f(<$a[1]>,...,<$a[`$a[0]']>);
    Print;
    .end
