Symbol a,n,x,jj;
CFunction euler;
#do weight=1,6
	L F`weight' = x^`weight'*euler();
#enddo
* Generate all possible arguments
repeat id x^n?{>0}*euler(?a) = sum_(jj,1,n, x^(n-jj)*euler(?a,-jj))+sum_(jj,1,n, x^(n-jj)*euler(?a,jj));
* Only keep convergent sums
id euler(1,?a) = 0;
.sort

Hide;
#do weight=1,4
	#StartFloat 74b,MZV=`weight'
	Local EULER`weight' = F`weight';
	id euler(?a) = euler(?a)*euler_(?a);
	Evaluate euler_;
	Print +s;
	.sort
	Hide;
	#endfloat
#enddo
.end
