CFunction prf,pf;
Symbol x,y,z;

Local test = prf(x+y,z) + prf(x,z) + prf(y-z,z) + pf(x+y) + pf(x) + pf(y-z);
.sort

Multiply 2;
ModuleOption polyratfun,prf;
.sort
Multiply 2;
ModuleOption polyfun,pf;
.sort
Multiply 2;
ModuleOption polyratfun = prf;
.sort
Multiply 2;
ModuleOption polyfun = pf;
.sort
Multiply 2;
.sort(polyratfun=prf)
Multiply 2;
.sort(polyfun=pf)

* Combination with other ModuleOptions:
ModuleOption polyratfun,prf,parallel;
.sort

Identify pf(x?$tmp) = pf(x);
* This works, but not if you specify the "local" option first:
ModuleOption polyfun, pf, local, $tmp;
.sort

Identify pf(x?$tmp) = pf(x);
* This works, but not if you specify the "local" option first:
ModuleOption polyfun=pf, local, $tmp;

Print;
.end
