* gcd_ gives wrong results
S s,t,m;
L test1   = 1/5*s + 1/5*(s+t)*m;
L test2   = (s+t)*m;
L result1 = gcd_(test1*replace_(s,t,t,m,m,s),test2*replace_(s,t,t,m,m,s));
L result2 = gcd_(test1,test2);
* Previous versions gave
*   result1 = 1 (correct), but had Valgrind errors
*   result2 = m (wrong)
P;
.end
