CF f;
S a;
L xx = f(a,a^2,1,2);
Transform,f,replace(1,last)=(xarg_,2*xarg_,1,3);
Print;
.end
