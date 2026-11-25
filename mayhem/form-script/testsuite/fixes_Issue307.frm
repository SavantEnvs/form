* replace_ with nested CFunctions crashes
S N,j1;
CF cfun1,cfun2;
V p;
L test1 = cfun1(cfun2(-p,-3 - j1 + N)*cfun2(p,j1)) * cfun2(p,j1);
L test2 = cfun1(j1,0, - 3 + N,cfun2(-p, - 3 - j1 + N)*cfun2(p,j1));
multiply replace_(N,3);
Print;
.end
