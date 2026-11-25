S a1,...,a10;
L F =
  #do i = 1,10
    #$x = `i'*a`i'
          +2;
    +`$x'
  #enddo
;
P;
.end
