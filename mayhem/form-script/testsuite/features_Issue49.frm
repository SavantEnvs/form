* Add mul_ function for polynomial multiplications
Symbols x,y,z;
#$p = (1+x+y+z)^4;
#$q = $p+1;
#$r = mul_($p,$q);
L r1 = $r;
L r2 = $p^2 + $p;
.sort
Drop;
L Zero = r1 - r2;
P;
.end
