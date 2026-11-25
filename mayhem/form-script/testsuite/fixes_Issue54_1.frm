* Transform,replace xarg_ acts only on symbols
CF f;
S a;
L xx = f(a,1);
Transform,f,replace(1,last)=(xarg_,2*xarg_);
P;
.end
