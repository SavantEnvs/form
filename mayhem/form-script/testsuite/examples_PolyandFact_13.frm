    Symbol x,y;
    LFactorized F = (x+1)*(x+y)*(y+1);
    Print;
    .sort
    #$num = numfactors_(F);
    Local   G = <F[factor_^1]>*...*<F[factor_^`$num']>;
    Bracket x;
    Print;
    .end
