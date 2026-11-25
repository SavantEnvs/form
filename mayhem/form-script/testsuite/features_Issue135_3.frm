S a1,...,a10,x;
CF f;
CTable sparse,tab(1);

#do i=1,10
  Fill tab(`i') = f(`i'*a`i') + 2;
#enddo

L F =
  #do i = 1,10
    #$tmp = tab(`i');
    #inside $tmp
      id f(x?) = x;
    #endinside
    + (`$tmp')
  #enddo
;
P;
.end
