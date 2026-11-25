* Normalize statement doesn't work for "MINVECTOR"
CF f1,f2;
V p;
L F1 = f1(-p);
L F2 = f2(-p);
normalize f1;
normalize (0) f2;
P;
.end
