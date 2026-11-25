#StartFloat 6d
CFunction f;
Local F1 = 1.23456789e-4+f(1.0)+f(1.0000001);
Print;
.sort

Skip F1;
Local F2 = F1;
StrictRounding 4d;
Argument f;
	StrictRounding;
EndArgument;
Print;
.end
