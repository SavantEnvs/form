* Invalid read in Normalize
#define N "9999"
CF f;
S x1,x2;
L F = f(1,...,`N');
id f(x1?,?a,x2?) = f(?a);
id f(?a,x2?) = x2+1;
P;
.end
