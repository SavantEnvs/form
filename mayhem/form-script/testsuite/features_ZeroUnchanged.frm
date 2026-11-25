#-

#procedure exprinfo
	#message Module `CMODULE_':
	#do e = {`activeexprnames_'}
		#if `ZERO_`e''
			#message zero `e': `ZERO_`e''
		#endif
		#if `UNCHANGED_`e''
			#message unchanged `e': `UNCHANGED_`e''
		#endif
	#enddo
	#if `ZERO_'
		#message All zero: `ZERO_'
	#endif
	#if `UNCHANGED_'
		#message All unchanged: `UNCHANGED_'
	#endif
	#message
#endprocedure


Off stats;

Symbol x,y;

Local test1 = x;
Local test2 = y;
Local test3 = 1;
.sort:1;

#call exprinfo
Identify x = 0;
.sort:2;

#call exprinfo
Identify y = 0;
.sort:3;

#call exprinfo
.sort:4;

#call exprinfo
Multiply 0;
.sort:5;

#message Here, test3 is incorrectly flagged as unchanged:
#call exprinfo
Print;
.end
