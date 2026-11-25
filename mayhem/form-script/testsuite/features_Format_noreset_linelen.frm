#-
Off stats;
Auto S x;
L F = (x1+...+x5)^3;
.sort

#message (0) normal,80
#write " F = %E;", F
.sort

#message (1) Fortran,72
Format Fortran;
#write " F = %E;", F
.sort

#message (2) C,50
Format 50;
Format C;
#write " F = %E;", F
.sort

#message (3) Fortran,50
Format Fortran;
#write " F = %E;", F
.end
