* See also Issue #216.
#-
Off stats;
S x;
L F = x - x^2 + 2*x^3 + 1/2*x^4 - 2/3*x^5;
.sort

#message (0) normal
#write " F = %E;", F
.sort

#message (1) Fortran
Format Fortran;
#write " F = %E;", F
.sort

* TODO: this combination doesn't work correctly, though no one may use
* single-precision Fortran seriously.
*
* #message Fortran,allfloat
* Format Fortran;
* Format allfloat;
* #write " F = %E;", F
* .sort

#message (2) DoubleFortran
Format DoubleFortran;
#write " F = %E;", F
.sort

#message (3) DoubleFortran,allfloat
Format DoubleFortran;
Format allfloat;
#write " F = %E;", F
.sort

#message (4) QuadrupleFortran
Format QuadrupleFortran;
#write " F = %E;", F
.sort

#message (5) QuadrupleFortran,allfloat
Format QuadrupleFortran;
Format allfloat;
#write " F = %E;", F
.sort

#message (6) Fortran90,.0_wp
Format Fortran90,.0_wp;  * forcibly allfloat
#write " F = %E;", F
.end
