NF f;
L F = 1;
#define i "9"
#do i=1,2
  #do i=1,3
    #do i=1,8
      #if `i' == 3
        #continuedo 2
      #endif
      multiply right, f(`i');
    #enddo
    multiply right, f(-`i');
  #enddo
  multiply right, f(-`i');
#enddo
multiply right, f(`i');
chainin f;
P;
.end
