    Table B(1:1);
    Local dummy = 1;
    .sort
    #$value = dummy;
    Fill B(1) = `$value';
    Drop dummy;
    .sort
    Local F = B(1);
    Print;
    .end
