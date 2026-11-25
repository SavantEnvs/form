#-
#: MaxTermSize 16K
#: SubTermsInSmall 800
#: SubSortIOSize 8K

CFunction f;
AutoDeclare Symbol x;

Local test = x - f(x);
.sort

Identify x = (x1+...+x11)^4;
Argument f;
	Identify x = (x1+...+x11)^4;
EndArgument;
.sort

Identify f(x?) = x;
Print test;
.end
