* This tests MergeWithFloat in float.c
#: termsinsmall 16
On fewerstats 1;
#StartFloat 10d
Auto Symbol x;
* This tests most cases of MergeWithFloat
Local F = (x1+1.0*x2+x3+1.0*x4)^5;
id x1 = 1-x2-x3-x4;
.sort
* This tests a corncer case of MergeWithFloat
Local G = x1+...+x15+1.0*x16+2^320*x16;
Print;
.end
