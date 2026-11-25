    Symbol x,y;
    Local F = x^4-y^4;
    Factorize F;
    .sort
    #$n = numfactors_(F);
    #do i = 1,`$n'
    Local F`i' = F[factor_^`i'];
    #enddo
    Print;
    .end
