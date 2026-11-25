#-
Symbol x,y,z;
Local test1 = x;
Local test3 = x;
.sort
Local test1 = y;
Local test2 = test1;
Local test1 = z;
Local test3 = y;
InExpression test1;
	Multiply 2;
EndInExpression;
If ( expression(test3) );
	Multiply 3;
EndIf;
Identify y = z;
Print;
.end
