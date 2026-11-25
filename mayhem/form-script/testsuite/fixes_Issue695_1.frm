#StartFloat 20b
CFunction f;
Local F1 = f(1.0)+f(1.0);
Local F2 = f(1.0)/3+f(1.0)*2.0;
Local F3 = 1.0*f(1.0)/3+f(1.0)*2.0;
Local F4 = f(1.0)+f(1.1);
Local F5 = f(0.5)+f(1/2);
Print;
.end
