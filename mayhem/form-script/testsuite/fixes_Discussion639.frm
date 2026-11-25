#-
Off stats;

CFunction eps(antisymmetric);
Vector p1,p2,p3;

Local zero = eps(p1,p2,p3,p1+p2);

ChainOut eps;
SplitArg eps;
Repeat Identify eps(p1?,p2?) = eps(p1)+eps(p2);
ChainIn eps;
* the result should be zero without a sort here

Print;
.end
