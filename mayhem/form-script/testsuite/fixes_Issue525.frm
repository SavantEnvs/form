#:threadbucketsize 5
#:processbucketsize 5
S x;
L F = (1-x)^100;
L F1 = 1;
L F2 = 1;
.sort
#define x "0"
if (expression(F1)) redefine x "1";
.sort
id x = `x';
P F;
.end
