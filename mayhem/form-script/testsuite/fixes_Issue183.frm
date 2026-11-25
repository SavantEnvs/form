#: MaxTermSize 16K
#: SubTermsInSmall 800

CF f;
Auto S x;
L F = f(<x1+x2+x3+x4>,...,<x6+x7+x8+x9>);
*repeat id f(x1?,x2?,?a) = f(x1*x2,?a);  * error: Sorted function argument...
transform f,mulargs(1,last);  * silent crash
P;
.end
