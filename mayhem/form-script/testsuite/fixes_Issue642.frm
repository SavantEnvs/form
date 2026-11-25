#-
Off statistics;

CFunction d;
CFunction f,g;
Symbol a,b,c;
CFunction h;

Local F =
*	Example terms with args that are in fast notation and full expressions
	+ f(1,a,2)
	+ f(1,-a,2)
	+ f(1,a+b,2)
	+ f(1,h,2)
	+ f(1,h(1,2),2)
	+ f(1,h(a),2)
	+ f(1,h(a)+a,2)
	;
Identify f(?a) = f(?a) - g(?a);
* Produce test terms where f appears at the beginning, end,
* and in the middle of the term data.
Multiply 1+d(1,2,3);
Multiply 1+h(1,2,3);
.sort

Identify f(?a) = putfirst_(f,2,?a);
Identify g(a?,b?,c?) = f(b,a,c);

Print;
.end
