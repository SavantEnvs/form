* Loop over currently active expressions #175
L FF = 1;
L [FF|a,b] = 1;
L [FF,[GG]] = 1;
#do e={`activeexprnames_'}
  L `e' = `e' + 1;
#enddo
L N = `numactiveexprs_';
P;
.end
