* Wrong result of content_

* This is OK.
S x,y;
#$p = (x/3+2/y)^2;
#$c = content_($p);
#$q = $p/$c;
L C1 = $c;
L Q1 = $q;
.sort

* This was BAD.
S x;
#$p = 1+1/x;
#$c = content_($p);
#$q = $p/$c;
L C2 = $c;
L Q2 = $q;
.sort

* Workaround.
S x,xxx;
#$p = 1+1/x;
#$tmp = $p*xxx;
#$c = content_($tmp)/xxx;
#$q = $p/$c;
L C3 = $c;
L Q3 = $q;

P;
.end
