Symbol a,n,x,jj;
CFunction mzvhalf;
#do weight=1,6
	L F`weight' = x^`weight'*mzvhalf();
#enddo
* Generate all possible arguments
repeat id x^n?{>0}*mzvhalf(?a) = sum_(jj,1,n, x^(n-jj)*mzvhalf(?a,jj));
.sort

Hide;
#do weight=1,6
	#StartFloat 74b, MZV = `weight'
	Local MZVHALF`weight' = F`weight';
	id mzvhalf(?a) = mzvhalf(?a)*mzvhalf_(?a);
	Evaluate mzvhalf_;
	Print +s;
	.sort
	Hide;
	#endfloat
#enddo
.end
