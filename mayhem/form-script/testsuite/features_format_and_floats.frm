#-
Off Statistics;
#Startfloat 10d
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
ToFloat;
#message Raw
Format FloatPrecision off;
Print +s;
.sort

#message Mathematica
Format FloatPrecision 5d;
Format mathematica;
Print +s;
.sort

#message Maple
Format FloatPrecision 20b;
Format maple;
Print +s;
.sort

#message C
Format FloatPrecision;
Format c;
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
.end
