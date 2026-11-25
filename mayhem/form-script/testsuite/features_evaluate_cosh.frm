#Startfloat 96b
CFunction cosh;
Local COSH = cosh(0)*cosh_(0)+cosh(1.0)*cosh_(1.0)+cosh(-1.0)*cosh_(-1.0)+cosh(ln_(2))*cosh_(ln_(2))+cosh(-ln_(2))*cosh_(-ln_(2));
Argument cosh_;
	Evaluate;
Endargument;
Evaluate cosh_;
Print +s;
.end
