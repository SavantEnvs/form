#-
Off Statistics;

Symbol a;
CFunction f,g;

Local test = f(a)^2;

#do i = 1,2
	Identify,once f(a?$dol) = g(a);
	FactDollar $dol;
	Do $i = 1,$dol[0];
		Print "In %t factor %$ is %$",$i,$dol[$i];
	Enddo;
	ModuleOption local $dol,$i;
	.sort
#enddo

Print;
.end
