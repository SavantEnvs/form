L F1 = 1;
L F2 = 1;
L F3 = 1;

.sort

L F1 = 1;  * replace an existing expression!

*.sort  ;* workaround

#message `numactiveexprs_'
#message `activeexprnames_'

#do e={`activeexprnames_'}
  L `e' = `e' + 1;
#enddo

P;
.end
