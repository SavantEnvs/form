* #continuedo?
NF f;
L F = 1;
#do i=1,5
  #if `i' == 3
    #continuedo
  #endif
  multiply right, f(`i');
#enddo
chainin f;
P;
.end
