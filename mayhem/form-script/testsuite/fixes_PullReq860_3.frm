#-

CFunction f,g,tag;
Symbol x;

Local test =
	#do i = -3,3
	#do j = -3,3
		+ f(`i'*x+`j')*tag(`i',`j')
		- g(`i'*x+`j')*tag(`i',`j')
	#enddo
	#enddo
	;
.sort

On highfirst;
FactArg f;
Transform f mulargs(1,last);

* Trigger re-sort of g into highfirst order
Argument g;
EndArgument;
Identify g(x?) = f(x);

Print;
.end
