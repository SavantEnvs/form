#Startfloat 96b
CFunction tanh;
Local TANH = tanh(0)*tanh_(0)+tanh(1.0)*tanh_(1.0)+tanh(-1.0)*tanh_(-1.0)+tanh(ln_(2))*tanh_(ln_(2))+tanh(-ln_(2))*tanh_(-ln_(2));
Argument tanh_;
	Evaluate;
Endargument;
Evaluate tanh_;
Print +s;
.end
