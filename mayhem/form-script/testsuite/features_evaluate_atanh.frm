#Startfloat 21d
CFunction atanh;
Local ATANH = atanh(0)*atanh_(0)+atanh(1.0)*atanh_(1.0)+atanh(-1)*atanh_(-1)+atanh(24/7)*atanh_(24/7)+atanh(1/9)*atanh_(1/9)+atanh(-.54321)*atanh_(-.54321);
Evaluate atanh_;
Print +s;
.end
