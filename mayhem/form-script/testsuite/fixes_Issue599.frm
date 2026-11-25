#-
On names;
Off statistics;
CFunction A1,...,A6;
Symbol j,x,z,y;

Local ff =
	+ A1(1) + A2(2) + A3(3)
		+ A4(1) + A5(2) + A6(3)
		;

Identify A1(j?{1,2,3}[x]) = A1({ 10, 20, 30}[x]);
Identify A2(j?{1,2,3}[x]) = A2({+10,+20,+30}[x]);
Identify A3(j?{1,2,3}[x]) = A3({-10,-20,-30}[x]);
Identify A4(j?{1,2,3}[x]) = A4({+-10,--20,-+30}[x]);
Identify A5(j?{1,2,3}[x]) = A5({--10,-+20,+-30}[x]);
Identify A6(j?{1,2,3}[x]) = A6({-+10,+-20,--30}[x]);

Print;
.end
