* Pattern with index and set restriction matches to number
I mu1,...,mu9;
CF f;
Set indices: mu1,...,mu9;
Set indices2: mu1,...,mu9, 127, 128;
L F1 = f(132);
L F2 = <f(126)>+...+<f(132)>;
id f(mu1?indices) = 1;
id f(mu1?indices2) = 0;
P;
.end
