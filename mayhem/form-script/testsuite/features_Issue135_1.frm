* "Assign instructions cannot occur inside statements" without inside statements
L F =
  #do i=1,10
    #$x = `i';
    + `$x'
  #enddo
;
P;
.end
