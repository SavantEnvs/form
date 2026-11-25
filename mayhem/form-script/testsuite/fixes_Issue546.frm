#-
Off statistics;
Symbol x,y;

Local test =
	+ 1
	+ 3*x
	+ 3/4*x^2
	+ (2^y-1)*x^3
	+ (2^y)*x^4
	+ 1/(2^y-1)*x^5
	+ 1/(2^y)*x^6
	+ 3/(2^y-1)*x^7
	+ 3/(2^y)*x^8
	+ (2^y)/(2^y-1)*x^9
	+ (2^y-1)/(2^y)*x^10
	+ (2^y)/(2^y+1)*x^11
	;
.sort
Drop;
Local test31 = replace_(y,31)*test;
Local test32 = replace_(y,32)*test;

#message C
Format C;
Print +s;
.sort
#message Fortran
Format Fortran;
Print +s;
.sort
#message Doublefortran
Format Doublefortran;
Print +s;
.sort
#message Quadfortran
Format Quadfortran;
Print +s;
.sort
#message Fortran90
Format Fortran90;
Print +s;
.sort
#message Fortran90_ki
Format Fortran90,_ki;
Print +s;
.sort
#message Pfortran;
Format Pfortran;
Print +s;
.sort
#message Float
Format Float;
Print +s;
.sort
#message Normal
Format Normal;
Print +s;
.sort
.end
