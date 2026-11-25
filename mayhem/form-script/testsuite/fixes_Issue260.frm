* gcd_ doesn't give the correct result
S x1,...,x5;
#$a = 34*x2^2*x5 + x1^2*x2*x4*x5 + x1^5;
#$b = x4^5 + x3^5 + x2*x3*x5^3;
#$g = x3*x4^4 + x2^3*x4 + x1*x3;
#$p = $a * $g;
#$q = $b * $g;
L F1 = gcd_($p,$q);
.sort

#$a = 79*x2 + x2^4 + x1*x3*x4;
#$b = x4^5 + x1*x3^4 + x1^5;
#$g = x2^4*x3 + 84*x1^5;
#$p = $a * $g;
#$q = $b * $g;
L F2 = gcd_($p,$q);

P;
.end
