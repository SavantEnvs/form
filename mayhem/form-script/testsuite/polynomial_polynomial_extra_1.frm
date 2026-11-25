* Assorted additional tests, to fully cover flintinterface.cc with just this test set
Symbol w,x,y,z;
CFunction f,g,prf;

* Negative powers and fast-notation symbols
Local test1 = prf(1/x + y + z,w);
Local test2 = prf(1/x + x + 1,x);
* Zero conversion
#$zero = 0;
Local test3 = mul_($zero,1);
* GCD which must fit in a term: I don't think this is reachable
*Local test4 = f(gcd_((x+1)^2,(x+1)*(x-1)));
*Local test5 = f(gcd_((x+1)^2,(x+1)*(y-1)));
* Long integer conversion with different limb counts
Local test6 =
	+ g(1)*prf(y+2^32-1,1)
	+ g(2)*prf(y+2^64-1,1)
	+ g(3)*prf(y+2^96-1,1)
	+ g(4)*prf(y+2^128-1,1)
	+ g(5)*prf(y+2^160-1,1);
* Output coeff has longer denominator than numerator:
Local test7 = mul_(1+x,1/2^64+x) + mul_(y+x,y/2^64+x);
* Result is 0
Local test8 = prf(1+x,1) + prf(-1-x,1);
Local test9 = prf(y+x,1) + prf(-y-x,1);
* Result is fast notation
Local test10 = prf(x+1,2) + prf(x-1,2);
Local test11 = prf(x+y,2) + prf(x-y,2);
* Copy non-prf term data, absorb coefficient
Local test12 = prf(x+1,1) + prf(x-1,1)*(f(1)*g(1)*x*3/2);
Local test13 = prf(x+y,1) + prf(x-y,1)*(f(1)*g(1)*x*3/2);

.sort
PolyRatFun prf;

Print;
.end
