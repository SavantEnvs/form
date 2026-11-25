#-
Off statistics;
#$a = 0;
Local test = 1;
$b = 0;
* Test no leaks when working inside a 0 dollar variable
#inside $a
	Multiply 2;
#endinside
Inside $a;
	Multiply 2;
EndInside;
Inside $b;
	Multiply 2;
EndInside;
ModuleOption local $a,$b;
Print;
.end
