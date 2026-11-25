* Crash with replace_ and nested functions
cfunction prop, mom;
vector q1, q2, k1, k2, p;

l test =  prop(mom(-q1-q2+p));
multiply replace_(q1,k1-k2);
print+s;
.sort
multiply replace_(q2,k2);
print+s;
.end
