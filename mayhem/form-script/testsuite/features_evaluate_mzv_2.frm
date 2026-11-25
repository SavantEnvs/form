#-
L F = mzv_(2);
.sort

Hide;
#do digits=1,10
	#StartFloat `digits'd,MZV=2
	Local F`digits' = F;
	Evaluate mzv_;
	Print;
	.sort
	Hide;
	#endfloat
#enddo
* The following checks that a new StartFloat without a previous  
* EndFloat causes no problems. 
#do digits=11,20
	#StartFloat `digits'd,MZV=2
	Local F`digits' = F;
	Evaluate mzv_;
	Print;
	.sort
	Hide;
#enddo
.end
