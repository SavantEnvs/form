#procedure foo
  #continuedo 2
#endprocedure
#do i=1,3
  #do j=1,3
    #call foo
  #enddo
#enddo
.end
