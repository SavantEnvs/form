* replace_ corruption in nested multi-argument functions
Function f,I;
S s1,s2,s3;
L F = I(f(s1+2,s2,s3))*replace_(s1,0);
P;
.end
