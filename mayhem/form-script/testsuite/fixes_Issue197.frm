* mul_ ignores denominator factors
#if "{2^32}" == "0"
* LONG has 4 bytes, which indicates WORD has 2 bytes.
* Avoid the "polynomials too large" error.
  #define n "3"
#else
  #define n "5"
#endif
S x,y,z;
L F1 = mul_(2/3,5/7);
L F2 = mul_(1/2+x/3,1/5+x/7);
P;
.sort
Drop;
L A1 = (5000000029/7+3/2*x-5/11*x/y+7/8*y*z+z-x*z)^`n';
L A2 = (3/4-1/9*x+9/5000000039*x*y+5/12*y*z+2/z*z^3)^`n';
.sort
Drop;
L G1 = A1 * A2;
L G2 = mul_(A1,A2);
.sort
Drop;
L Nterms = termsin_(G1);
L Zero = G1 - G2;
P;
.end
