#-
* Example from the FORM Workshop (Madrid 2023) slides, also in the manual.

#StartFloat 500b,MZV=15

Local F1 =
	-mzv_(8,1,1,5)
	+29056868/39414375*mzv_(2)^6*mzv_(3)
	-47576/40425*mzv_(2)^5*mzv_(5)
	-163291/18375*mzv_(2)^4*mzv_(7)
	-4/105*mzv_(2)^3*mzv_(3)^3
	-450797/11025*mzv_(2)^3*mzv_(9)
	+7/5*mzv_(2)^2*mzv_(3)^2*mzv_(5)
	+16/25*mzv_(2)^2*mzv_(3)*mzv_(5,3)
	+454049/1400*mzv_(2)^2*mzv_(11)
	-16/25*mzv_(2)^2*mzv_(5,3,3)
	+3*mzv_(2)*mzv_(3)^2*mzv_(7)
	+61/14*mzv_(2)*mzv_(3)*mzv_(5)^2
	+2/7*mzv_(2)*mzv_(3)*mzv_(7,3)
	+2172853/420*mzv_(2)*mzv_(13)
	-2/7*mzv_(2)*mzv_(7,3,3)
	+1/7*mzv_(2)*mzv_(5,5,3)
	-33/4*mzv_(3)^2*mzv_(9)
	-133/6*mzv_(3)*mzv_(5)*mzv_(7)
	-25/9*mzv_(3)*mzv_(9,3)
	-244/105*mzv_(5)^3
	-359/105*mzv_(5)*mzv_(7,3)
	+3/10*mzv_(7)*mzv_(5,3)
	+89/18*mzv_(9,3,3)
	+569/105*mzv_(7,3,5);
L F2 = mzv_(15);
Evaluate mzv_;
Print;
.sort

Skip F1,F2;
Local X = F1/F2;
ToRational;
Print;
.sort

#EndFloat
Local G1 = F1;
Local G2 = F2;

Print G1,G2;
.end
