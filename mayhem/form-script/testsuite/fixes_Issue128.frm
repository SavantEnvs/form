* The result check here requires the old prf sign convention:
On oldprfsign;
* Rational arithmetic giving pi_
CF rat;
PolyRatFun rat;
S cw,sw,e;
*S MZ,sp12;  * <-- This fixes the problem.
S sp12,MZ;

L F =     cw * sw * e * rat(- MZ, 2 * sp12 - 1 * MZ);
L G = 2 * cw * sw * e * rat(- MZ, 4 * sp12 - 2 * MZ);
.sort
PolyRatFun rat;  * <-- workaround: renormalize rat
.sort
L FF = F^2;
L GG = G^2;
P +s;
.end
