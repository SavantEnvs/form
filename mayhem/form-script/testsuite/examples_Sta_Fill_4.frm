    Table B(1:1);
    Local u = 2;
    Local dummy = 1;
    .sort
    Fill B(1) = dummy;
    Drop dummy;
    .sort
    Local v = 5;
    Local F = B(1);
    Print;
    .end
