#StartFloat 24d
Symbol n;
CFunction cos;
Local COS = sum_(n,4,27,cos(2*pi_*n/24)*cos_(2*pi_*n/24))+cos(-2^32*pi_/3)*cos_(-2^32*pi_/3)+cos(4*pi_/13)*cos_(4*pi_/13)+cos(-1.2*pi_/13)*cos_(-1.2*pi_/13)+cos(2^32*pi_/(2^32+1))*cos_(2^32*pi_/(2^32+1));
Evaluate cos_;
Print +s;
.end
