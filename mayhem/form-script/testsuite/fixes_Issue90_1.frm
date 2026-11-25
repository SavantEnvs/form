* Errors in symbol powers
CFunction SP;
Symbol nn, shat;
Vector k1,k2,k3;
Local testExpr0 = shat^(-1+nn);
Local testExpr1 = shat^(-3+nn);
Local testExpr4 = SP(k2,k3)*(shat)^(-3+nn);
Argument;
    Identify nn = 2;
EndArgument;
Print +s;
.end
