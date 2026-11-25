I mu1,...,mu9;
CF f1(s),f2(a),f3(c),f4(r);
Set indices: mu1,...,mu9;
Set indices2: mu1,...,mu9, 127, 128;
L F1 = <f1(126)>+...+<f1(132)>;
L F2 = <f2(126)>+...+<f2(132)>;
L F3 = <f3(126)>+...+<f3(132)>;
L F4 = <f4(126)>+...+<f4(132)>;
id f1?(mu1?indices) = 1;
id f1?(mu1?indices2) = 0;
P;
.end
