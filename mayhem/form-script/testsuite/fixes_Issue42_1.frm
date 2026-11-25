* Factorize/FactDollar are much slower than FactArg
CF num;
S ep,n1,...,n14;
L F =
      +(n1)^5*(n2)^2*(n5)^4*(n6)^4*(n7)^7*(n8)^10*(n9)^21*(-8589934592)
      *(-1+n5)^2*(1+n9)*(30-19*n9+2*n9^2-18*n8+2*n8*n9-64*n7+14*n7*n9+
      16*n7*n8+12*n7^2-22*n6+4*n6*n9+4*n6*n8+8*n6*n7+4*n6^2+12*n5-2*n5*
      n9+4*n5*n8-4*n5*n6-4*n5^2+20*n4-6*n4*n9+4*n4*n8-4*n4*n7-8*n4*n6+4
      *n4^2-2*n3*n9+4*n3*n7+4*n3*n5-4*n3*n4-32*n2+8*n2*n9+2*n2*n8+22*n2
      *n7+8*n2*n6-2*n2*n5-4*n2*n4+6*n2^2+6*n1+7*n1*n9+6*n1*n7+10*n1*n6-
      6*n1*n5-12*n1*n4+4*n1*n2-2*n1^2-16*ep+8*ep*n9+8*ep*n8+32*ep*n7+8*
      ep*n6-16*ep*n5-16*ep*n4+16*ep*n2)
;
.sort

* FactArg

L F1 = num(F);
factarg num;
chainout num;
.sort

* #FactDollar
* FIXME: ParFORM hangs. (#46)
#$F2 = F;
#factdollar $F2
L F2 =
  num(`$F2[1]')
  #do i=2,`$F2[0]'
    * num(`$F2[`i']')
  #enddo
;
.sort

* FactDollar

L F3 = 1;
inexpression F3;
  $F3 = F;
  factdollar $F3;
  do $i=1,$F3[0];
    multiply num($F3[$i]);
  enddo;
endinexpression;
ModuleOption local $i,$F3;

.sort

* FIXME: Factorize still have the performance issue. (#44)
#if 0
L F4 = F;
Factorize F4;
.sort
#endif

P;
.end
