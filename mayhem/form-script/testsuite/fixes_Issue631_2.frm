#-
#define MYTOUPPER(x,y) "toupper_(`~x',`~y')"
#procedure foo(x,y)
	#message ``MYTOUPPER(`x',`y')''
	#message `toupper_(`x',`y')'
#endprocedure
#call foo(a,b)
#message ``MYTOUPPER(c,d)''
.end
