* Substitutions just after putinside/antiputinside may fail
S x;
CF f;
L F1 = 1+x+x^2;
L F2 =-1-x-x^2;
putinside f, x;
*argument; endargument;  * <-- (1)
id f( 1)   = 0;
id f(-1)   = 0;
id f( x)   = 0;
id f(-x)   = 0;
id f( x^2) = 0;
id f(-x^2) = 0;
P;
.end
