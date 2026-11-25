#StartFloat 24d
Symbol n;
CFunction sin;
Local SIN = sum_(n,4,27,sin(2*pi_*n/24)*sin_(2*pi_*n/24))+sin(4*pi_/13)*sin_(4*pi_/13)+sin(-1.2*pi_/13)*sin_(-1.2*pi_/13);
Evaluate sin_;
Print +s;
.end
