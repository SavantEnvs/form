#:threadbucketsize 10
#:processbucketsize 10
CF f;
Auto S x;

* NOTE: Large N gives another problem with ParFORM (#141).
#define N "500"
L F0 =
  #do i=1,`N'
    + f(1+x`i') * f(1+x{`i'+100}) * f(1+x{`i'+200})
  #enddo
;
.sort
Hide;

L F1 = F0;
.sort

* If all workers fail to share an unique mapping in a consistent way,
* the following code gives a non-zero result or a crash.
argtoextrasymbol;
.sort
argument;
  frompolynomial;
endargument;
.sort

Drop;

L ZERO = F1 - F0;
P;
.end
