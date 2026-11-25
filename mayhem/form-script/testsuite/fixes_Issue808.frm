#do i=0,9
Global E`i' = `i';
#enddo
.store
#do i=1,80
Global F1 = E{`i' % 10}*E2*E3*E4;
#enddo
.sort
.end
