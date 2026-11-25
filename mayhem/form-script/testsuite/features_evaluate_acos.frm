#StartFloat 82b
CFunction acos;
Local ACOS = 2*acos(0)*acos_(0)/pi_+acos(-1.0)*acos_(-1.0)/pi_+acos(1)*acos_(1)+acos(-0.7356)*acos_(-0.7356)+acos(4/13)*acos_(4/13)+acos(-3/2)*acos_(-3/2)+acos(5)*acos_(5);
Evaluate acos_, pi_;
Print +s;
.end
