* bug in argument environment? [function specified by a set]
CF f1,f2,f3;
Set ff1: f1;
Set ff2: f2;
Set ff3: f3;
L F = f1(1) + f2(2) + f3(3);
argument ff2;
  discard;
endargument;
P;
.end
