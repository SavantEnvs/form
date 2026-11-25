* Redefining a hidden expression #129
L F = 1;
.sort

#procedure redefine()
  Hide F;
  .sort
  L F = F + 1;
  .sort
#endprocedure

#do i=1,5
  #call redefine()
#enddo

On names;
P;
.end
