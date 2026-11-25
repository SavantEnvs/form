#procedure PrintFactorizedDollar(name,dollar)
  #write " `name' = (%$)%", `dollar'[1]
  #do i=2,``dollar'[0]'
    #write "*(%$)%", `dollar'[`i']
  #enddo
  #write ";"
#endprocedure

S x,y;
#$a = (1-x)*(1+y);
#$b = (1-x)*(1-y);
#factdollar $a
#factdollar $b
#call PrintFactorizedDollar(F1,$a)
#call PrintFactorizedDollar(F2,$b)
.end
