L F1 = 1;
L F2 = 1;
L F3 = 1;

L F1 = 1;  * redefine in the same module!

*.sort  ;* workaround

#message `numactiveexprs_'
#message `activeexprnames_'

#do e={`activeexprnames_'}
  L `e' = `e' + 1;
#enddo

P;
.end
