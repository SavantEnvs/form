NF f;
L F = 1;
#do i=1,3
  #do i=1,2
    #continuedo 0
    multiply right, f(`i');
  #enddo
#enddo
chainin f;
P;
.end
