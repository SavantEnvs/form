    S	x,a,b;
    Off statistics;
    L	F = (a+b)^4+a*(a+x)^3;
    .sort
    #$a = 0;
    if ( count(x,1) > $a ) $a = count_(x,1);
    Print "      >> After %t the maximum power of x is %$",$a;
    ModuleOption noparallel; * suppresses noparallel warning
    #write "     ># $a = `$a'"
    .sort
    #write "     ># $a = `$a'"
    .end
