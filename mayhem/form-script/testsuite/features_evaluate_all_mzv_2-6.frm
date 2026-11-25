#-
Symbol a,n,x,jj;
CFunction mzv;
#do weight=2,6
	L F`weight' = x^`weight'*mzv();
#enddo
* Generate all possible arguments
repeat id x^n?{>0}*mzv(?a) = sum_(jj,1,n, x^(n-jj)*mzv(?a,jj));
* Only keep convergent MZVs
id mzv(1,?a) = 0;
.sort

Hide;
#do weight=2,6
	#StartFloat 74b,MZV=`weight'
	Local MZV`weight' = F`weight';
	id mzv(?a) = mzv(?a)*mzv_(?a);
	Evaluate mzv_;
	Print +s;
	.sort
	Hide;
	#endfloat
#enddo
.end
