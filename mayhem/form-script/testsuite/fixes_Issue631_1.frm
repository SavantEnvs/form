#procedure foo(?a)
	#message `toupper_(abc)'
	#message `toupper_(a,b,c)'
	#message `toupper_(`?a')'
	#message `tolower_(ABC)'
	#message `tolower_(A,B,C)'
	#message `tolower_(`?a')'
	#message `?a'
#endprocedure

#call foo(1,2,3,abc,a,b,c,ABC,A,B,C)
.end
