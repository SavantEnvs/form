V p1,p2,q1,q2,nosquare;
Set pp:p1,p2;
CF f;
T Q1,functions;
#$q1 = q1;
#$Q1 = Q1;
L F0 = f(q1,q2) * p1.q1 * p2.q1 * q1.q1 * q1.q2;
#do i={1,...,7,11,...,17,51,61,71,72}
  L F`i' = F0;
#enddo
inexpression F1;
  totensor q1,Q1;
endinexpression;
inexpression F2;
  totensor nosquare,q1,Q1;
endinexpression;
inexpression F3;
  totensor functions,q1,Q1;
endinexpression;
inexpression F4;
  totensor nosquare,functions,q1,Q1;
endinexpression;
inexpression F5;
  totensor !pp,q1,Q1;
endinexpression;
inexpression F6;
  totensor !{p1},q1,Q1;
endinexpression;
inexpression F7;
  totensor nosquare,functions,!pp,q1,Q1;
endinexpression;

inexpression F11;
  totensor $q1,Q1;
endinexpression;
inexpression F12;
  totensor q1,$Q1;
endinexpression;
inexpression F13;
  totensor $q1,$Q1;
endinexpression;
inexpression F14;
  totensor Q1,q1;
endinexpression;
inexpression F15;
  totensor $Q1,q1;
endinexpression;
inexpression F16;
  totensor Q1,$q1;
endinexpression;
inexpression F17;
  totensor $Q1,$q1;
endinexpression;

inexpression F51;
  totensor !{p1,p2},q1,Q1;
endinexpression;

inexpression F61;
  totensor !p1,q1,Q1;
endinexpression;

inexpression F71;
  multiply replace_(q1,nosquare);
  totensor nosquare,functions;
endinexpression;

inexpression F72;
  multiply replace_(q1,nosquare);
  totensor nosquare,functions,nosquare,functions;
endinexpression;

P;
.end
