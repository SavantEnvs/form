#StartFloat 82b
CFunction atan;
Local ATAN = atan(0)*atan_(0)+atan(-1.0)*atan_(-1.0)+atan(1)*atan_(1)+atan(-0.7356)*atan_(-0.7356)+atan(4/13)*atan_(4/13)+2*atan(-10^20)*atan_(-10^20)/pi_+2*atan(10^20)*atan_(10^20)/pi_;
Evaluate atan_, pi_;
Print +s;
.end
