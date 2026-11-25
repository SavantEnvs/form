    Table B(1:1);
    Local dummy = 1;
    .sort
    Fill B(1) = dummy;
    Drop dummy;
    .sort
* The next line is disabled to prevent a segmentation fault.
*   Local F = B(1);
    Print;
    .end
