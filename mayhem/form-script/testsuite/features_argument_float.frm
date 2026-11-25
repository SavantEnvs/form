#StartFloat 24d
CFunction f;
Symbol a,b,c,d;
#StartFloat 24d
Local F = 1.0 -2.0*f(a+5*b-3*c)+f(3.14*a*b);
Normalize;
MakeInteger;
Argument;
	Multiply 10*d;
EndArgument;
SplitArg;
FactArg;
Print;
.end
