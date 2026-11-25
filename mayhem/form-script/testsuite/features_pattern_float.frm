#-
Off Statistics;
#StartFloat 10d
#message StartFloat
Symbol a,x1,...,x4;
CFunction f,g;
Vector p;
Local F = 1.0-2.0*a+3.0*f-4.0*p.p+5.0*p;
id 1.0 = 5;
id f?(?a) = g(?a);
id float_(?a) = g(?a);
id float_(x1?,x2?,x3?,x4?) = g(x1,x2,x3,x4);
Print;
.sort

#endfloat
#message endfloat
id float_(2,3,1,340282366920938463463374607431768211456) = 5;
id f?(?a) = g(?a);
id float_(?a) = g(?a);
id float_(x1?,x2?,x3?,x4?) = g(x1,x2,x3,x4);
Print +s;
.end
