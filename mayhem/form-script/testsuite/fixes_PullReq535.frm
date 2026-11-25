* This test requires more than the specified 50K workspace.
#:maxtermsize 200
#:workspace 50000
S x1,...,x19;
L F = (x1+...+x19)^4;
Format O1;
.sort
#optimize F
L G = `optimvalue_';
P G;
.end
