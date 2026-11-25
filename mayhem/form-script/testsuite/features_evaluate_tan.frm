#StartFloat 24d
Symbol n;
CFunction tan;
Local TAN = sum_(n,4,27,tan(2*pi_*n/24)*tan_(2*pi_*n/24))+tan(4*pi_/13)*tan_(4*pi_/13)+tan(-1.2*pi_/13)*tan_(-1.2*pi_/13);
Evaluate tan_;
Print +s;
.end
