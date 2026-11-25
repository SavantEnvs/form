#-
Off stats;

Index i1,i2,i3,i4;
CFunction f;
Set sumind: i2,i3;

Local test1 = f(i1,i2,i3,i4)^2;
Local test2 = f(i1,i2,i3,i4)^2;

Repeat;
	If (Match(f(?a,i1?sumind$sum,?b))) Sum $sum;
EndRepeat;
InExpression test2;
	Repeat;
		If (Match(f(?a,i1?!dummyindices_$sum,?b))) Sum $sum;
	EndRepeat;
EndInExpression;

ModuleOption,local $sum;
Print;
.end
