* TODO: change the the result of F2 in the manual.
    Symbol x,y;
    Local F1 = x^4-y^4;
    Local F2 = 0;
    Local F3 = 1;
    Local F4 = x^4-y^4;
    Print;
    Factorize F1,F2,F3;
    .sort
    #do i = 1,4
    #$n`i' = numfactors_(F`i');
    #message expression F`i' has `$n`i'' factors
    #enddo
    .end
