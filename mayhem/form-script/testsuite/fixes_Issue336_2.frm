#-
CFunction rat,f,tag;
Symbol a,b,y,x;

* Build lots of combinations
Local test = (
	+ f(1)
	+ f(1+x)
	+ f(1+x+x^2)
	+ f(x+x^2)
	+ f(1+x^-1)
	+ f(1+x^-2)
	+ f(1+x+x^-1)
	+ f(x+x^-1)
	+ f(x^-1)
	+ f(x^-2)
	+ f(x^-1+x^-2)
	+ f(1+x+y)
	+ f(1+x+x^2+y+y^2)
	+ f(x+x^2+y+y^2)
	+ f(1+x^-1+y^-1)
	+ f(1+x^-2+y^-2)
	+ f(1+x+x^-1+y+y^-1)
	+ f(x+x^-1+y+y^-1)
	+ f(x^-1+y^-1)
	+ f(x^-2+y^-2)
	+ f(x^-1+x^-2+y^-1+y^-2)
	+ f(x^-1*x^-1)
	+ f(x^-2+x^-1*y^-1+y^-2)
	+ f(x^2+x^1*y^-1+y^-2)
	)^2;
DropCoefficient;
* Create rational polys, with both orderings of the num and den
Identify f(a?)*f(b?) = rat(a,b) + rat(b,a);
.sort
DropCoefficient;
#$i = 0;
Multiply tag($i);
$i = $i+1;
Print +s;
ModuleOption noparallel;
.sort

* Everything should cancel in the end, and we should get zero.
Identify rat(?a) = rat(?a) - f(rat(?a));
.sort

PolyRatFun rat;
.sort

Identify f(x?) = x;

Print;
.end
