#: SubTermsInSmall 64

CFunction f,g;
Symbol a;

* Generate a function arg with more than SubTermsInSmall terms:
* Make sure one of the factors has more than SubTermsInSmall itself.
* Use functions to trigger LocalConvertToPoly and the EndSort there.
Local F = f((g(1)+g(2)) * (<g(1)>+...+<g(65)>)) - g(1+2, 1+...+65);

FactArg f;
Argument f;
	Identify g(a?) = a;
EndArgument;
Identify g(?a) = f(?a);

Print F;
.end
