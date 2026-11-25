* Bug reported 2005-09-27 by Aneesh Manohar
* Symmetrize did not make expression y equal to zero
* Fixed 2005-10-09
cfunctions      f,g;
symbols         a,b;
local x=f(a,b)-f(b,a);
local y=f(g(a),b)-f(b,g(a));
symmetrize f;
.sort
print;
.end
