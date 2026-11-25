Symbol w,x,y,z;
CFunction f,g;
Local F1 = -5/3*f(g(1/(x^5+y),x-y),z)*replace_(x,100000,y,w);
Local F2 = -5/3*f(exp_(x+y,5),z);
Local F3 = f(exp_(5+x-(w-y),5+x^2-(w-y)^2)) - f(exp_(5,5));
Local F4 = f(1/((5+x^2-(w-y)^2)/(5+x^2-(w-y)^2))) - f(1/((5)/(5)));
Multiply replace_(x,w-y);
Print;
.end
