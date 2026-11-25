#StartFloat 82b
CFunction asin;
Local ASIN = asin(0)*asin_(0)+2*asin(-1.0)*asin_(-1.0)/pi_+2*asin(1)*asin_(1)/pi_+asin(-0.7356)*asin_(-0.7356)+asin(4/13)*asin_(4/13)+asin(-3/2)*asin_(-3/2)+asin(5)*asin_(5);
Evaluate asin_, pi_;
Print +s;
.end
