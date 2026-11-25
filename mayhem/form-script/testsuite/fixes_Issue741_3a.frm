#-
#: FunctionLevels 31

#define DEPTH "30"

Off Statistics;

CFunction f,f1,...,f`DEPTH';
Symbol x,y;

Local test = replace_(x,0)*
	#do i = 1,`DEPTH'
		f`i'(
	#enddo
			y*f(x+y)
	#do i = 1,`DEPTH'
		)
	#enddo
	;

Local expected =
	#do i = 1,`DEPTH'
		f`i'(
	#enddo
			0
	#do i = 1,`DEPTH'
		)
	#enddo
	;
.sort

Local diff = replace_(y,0)*test - expected;

Print diff;
.end
