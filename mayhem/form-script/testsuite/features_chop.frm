#StartFloat 15d
#StartFloat 15d
Symbol x;
Local F1 = 4.7*x-1.0e-10*x^2+.2e-10*x^3-0.00005*x^4+x^5/1000000;
Local F2 = 4.7*x-1.0e-10*x^2+.2e-10*x^3-0.00005*x^4+x^5/1000000;
Local F3 = 4.7*x-1.0e-10*x^2+.2e-10*x^3-0.00005*x^4+x^5/1000000;
Local F4 = 4.7*x-1.0e-10*x^2+.2e-10*x^3-0.00005*x^4+x^5/1000000;
Local F5 = 4.7*x-1.0e-10*x^2+.2e-10*x^3-0.00005*x^4+x^5/1000000;
Print;
.sort
Skip;
NSkip F1;
Chop 1.0e-10;
.sort
Skip;
NSkip F2;
Chop 1/10000;
.sort
Skip;
NSkip F3;
Chop 7;
.sort
Skip;
NSkip F4;
Chop 10^-6;
.sort
Skip;
NSkip F5;
Chop 10^6;
.sort
Print;
.end
