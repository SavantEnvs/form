#-
#:filepatches       16
#:largepatches      20
#:maxtermsize      200
#:termsinsmall      16

Off stats;

#define N "323"
S x,k;
L F = sum_(k,1,`N',x^k);
.sort

L CheckZero = F - {`N'*(`N'+1)/2};
id x^k?pos_ = k;

Print CheckZero;
.end
