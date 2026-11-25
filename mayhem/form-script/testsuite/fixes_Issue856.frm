#-
Off Statistics;
CFunction f,g,h;

#define MODE "1"
#define MAX "4"

* Each expression is a different size:
#do i = 1,`MAX'
	Local test`i' = f(`i')^`i';
	Local htest`i' = g(`i')^{`i'+`MAX'};
	Local ihtest`i' = h(`i')^{`i'+2*`MAX'};
#enddo
.sort

* Start with "htest" expr hidden
Hide htest1,...,htest`MAX';
.sort

#do i = 1,`MAX'
	UnHide htest`i';
	.sort
	IntoHide ihtest`i';
	#if `MODE' == 1
		InParallel;
	#endif
	Multiply 2;
	.sort
	Hide htest`i';
#enddo
.sort

* UnHide all, mixture of InParallel and regular:
InParallel htest1,...,htest`MAX';
UnHide;
.sort


* Reset
Hide htest1,...,htest`MAX';
.sort

* Same again, with UnHide in the inparallel module
#do i = 1,`MAX'
	UnHide htest`i';
	IntoHide ihtest`i';
	#if `MODE' == 1
		InParallel;
	#endif
	Multiply 2;
	.sort
	Hide htest`i';
#enddo
.sort

UnHide;
.sort


* Reset
Hide htest1,...,htest`MAX';
.sort

* Same again, leave the first expression in the Hide file
#do i = 2,`MAX'
	UnHide htest`i';
	.sort
	IntoHide ihtest`i';
	#if `MODE' == 1
		InParallel;
	#endif
	Multiply 2;
	.sort
	Hide htest`i';
#enddo
.sort

UnHide;
.sort


* Reset
Hide htest1,...,htest`MAX';
.sort

* Same again, leave the first expression in the Hide file, but take from the end
#do i = `MAX',2,-1
	UnHide htest`i';
	.sort
	IntoHide ihtest`i';
	#if `MODE' == 1
		InParallel;
	#endif
	Multiply 2;
	.sort
	Hide htest`i';
#enddo
.sort

UnHide;
Print;
.end
