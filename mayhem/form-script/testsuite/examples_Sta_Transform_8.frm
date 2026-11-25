CFunction f,cyc;
Symbol a1,...,a7;
Local test = f(a1,a2,a3,a4,a5,a6,a7)*cyc(2,6);
Identify cyc(?a$cyc) = 1;
Transform f permute(1,3,5)($cyc);
ModuleOption local $cyc;
Print;
.end
