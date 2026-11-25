CF F1,F2,F3;

L [F1(1,1,1,1)] = F1(1,1,1,1);
L [F2(-1,1,1,1)] = F2(-1,1,1,1);
.sort

* Redefine.
Local [F1(1,1,1,1)] = F1(1,1,1,1);
.sort

#message `numactiveexprs_'
#message `activeexprnames_'

#do e={`activeexprnames_'}
  L `e' = `e' + 1;
#enddo

P;
.end
