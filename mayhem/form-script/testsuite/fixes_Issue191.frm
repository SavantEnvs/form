* gcd_ crashes for zero $-variables

S x;

* immediate values
#define a1 "10"
#define a2 "-20"
#define a3 "100000000000000000000"
#define a4 "-200000000000000000000"
#define a5 "x"
#define a6 "-x"
#define a7 "1+x"
L F0  = gcd_(0,0);
#do i=1,7
  L Fa`i' = gcd_(0,`a`i'');
  L Fb`i' = gcd_(`a`i'',0);
#enddo
L Fc1 = gcd_(0,1+x,0,0,0);
L Fc2 = gcd_(0,1+x,0,-x,0,0);
L Fc3 = gcd_(0,1+x,0,1-x^2,0,0);
P;
.sort
Drop;

* subexpressions
L a0 = 0;
L a00 = 0;
L a1 = 10;
L a2 = -20;
L a3 = 100000000000000000000;
L a4 = -200000000000000000000;
L a5 = x;
L a6 = -x;
L a7 = 1+x;
L G0 = gcd_(a0,a00);
#do i=1,7
  L Ga`i' = gcd_(a0,a`i');
  L Gb`i' = gcd_(a`i',a0);
#enddo
L Gc1 = gcd_(0,a7,0,0,a0);
L Gc2 = gcd_(0,a7,0,a3,0,a0);
L Gc3 = gcd_(0,a7,0,1-x^2,0,a0);
P;
.sort
Drop;

* $-variables
#$a0 = 0;
#$a00 = 0;
#$a1 = 10;
#$a2 = -20;
#$a3 = 100000000000000000000;
#$a4 = -200000000000000000000;
#$a5 = x;
#$a6 = -x;
#$a7 = 1+x;
L H0 = gcd_($a0,$a00);
#do i=1,7
  L Ha`i' = gcd_($a0,$a`i');
  L Hb`i' = gcd_($a`i',$a0);
#enddo
L Hc1 = gcd_(0,$a7,0,0,$a0);
L Hc2 = gcd_(0,$a7,0,$a3,0,$a0);
L Hc3 = gcd_(0,$a7,0,1-x^2,0,$a0);
P;
.end
