Symbol a;
Vector p;
CFunction f1,f2;
Local test = f1(0,1) + f2(2,a) + f2(2,p);
Transform f1 replace(1,last)=(0,1,1,0);
* This will not affect f2(2,p) because xarg_ does not match vectors:
Transform f2 replace(1,last)=(xarg_,2*xarg_+1);
Print;
.end
