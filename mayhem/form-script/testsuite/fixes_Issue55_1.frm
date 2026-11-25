* Pattern matching with sets, and (ex-)PolyRatFun CFunction
CFunction coeff,coeff2;
Symbol x,y,z;
Symbol ca,cf,zeta2;

Local test1 = + dum_( - 7117/81 - 64/9*zeta2)*ca^2*cf;
Local test2 = + dum_(1 + 576/7117*zeta2)*coeff(- 7117,81)*ca^2*cf;
.sort

Identify coeff(x?neg_,y?) = -coeff(-x,y);
Identify dum_(z?)*coeff(x?,y?) = dum_(z * x/y);
Print +s;
.sort

PolyRatFun coeff;
Normalize dum_;
Print +s;
.sort
PolyRatFun;
.sort

Identify coeff(x?neg_,y?) = -coeff(-x,y);
*Identify coeff(x?,y?) = coeff2(x,y);
*Identify coeff2(x?neg_,y?) = -coeff2(-x,y);

Print +s;
.end
