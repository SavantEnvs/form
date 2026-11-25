* This tests AddWithFloat in float.c
#StartFloat 10d
Symbol x1,...,x4;
Local F = (x1+1.0*x2+x3+1.0*x4)^5;
id x1 = 1-x2-x3-x4;
Print;
.end
