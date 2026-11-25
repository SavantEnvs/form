    Symbol x,y;
    CFunction f;
    Off Statistics;
    #$a = x^4-y^4;
    Local F = f(x^4-y^4)+f(x^6-y^6);
    Print;
    .sort
    #factdollar $a;
    #do i = 1,`$a[0]'
    #write <> "Factor `i' of `$a' is `$a[`i']'"
    #enddo
    id  f(x?$b) = f(x);
    FactDollar $b;
    do $i = 1,$b[0];
      Print "Factor %$ of %$ is %$",$i,$b,$b[$i];
    enddo;
    Print;
    ModuleOption noparallel; * suppresses noparallel warning
    .end
