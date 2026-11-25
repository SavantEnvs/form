* FactDollar still broken
#procedure PrintFactorizedDollar(name,dollar)
  #write " `name' = (%$)%", `dollar'[1]
  #do i=2,``dollar'[0]'
    #write "*(%$)%", `dollar'[`i']
  #enddo
  #write ";"
#endprocedure

S x,y;
#$a = 1+x-y;  * <-- The bug was found for this.
#$b = 2*(1+x-y);
#$c = (1+x+y)*(1+x-y);
#factdollar $a
#factdollar $b
#factdollar $c
#call PrintFactorizedDollar(F1,$a)
#call PrintFactorizedDollar(F2,$b)
#call PrintFactorizedDollar(F3,$c)
.end
