* occurs() freezes with tensors #74
CF a,acc;

S x,y;
I i,j;
V p,q;
CT t;
CF f,g;

L F1 = 1;
L F2 = x;
L F3 = 1/x;
L F4 = i;
L F5 = p;
L F6 = p(i);
L F7 = p(N1_?);
L F8 = p.p;
L F9 = p.q;
L F10 = t;
L F11 = t(i);
L F12 = t(p);
L F13 = f;
L F14 = f(1);
L F15 = f(x);
L F16 = f(-x);
L F17 = f(1/x);
L F18 = f(x+y);
L F19 = f(i);
L F20 = f(-i);
L F21 = f(i+j);
L F22 = f(p);
L F23 = f(-p);
L F24 = f(p+q);
L F25 = f(p(i));
L F26 = f(p(N1_?));
L F27 = f(p.p);
L F28 = f(p.q);
L F29 = f(t);
L F30 = f(t(i));
L F31 = f(t(p));
L F32 = g(f(x));
L F33 = g(f(i));
L F34 = g(f(p));
L F35 = g(f(t));
L F36 = g(g(f));
L F37 = g_(i,p);
L F38 = g_(1,i,p);
L F39 = g(1,g(2,3-f(x))+g(t(p),t(i)));
L F40 = d_(p,i);

if (occurs(x)) multiply a(1);
if (occurs(i)) multiply a(2);
if (occurs(p)) multiply a(3);
if (occurs(t)) multiply a(4);
if (occurs(f)) multiply a(5);
chainin a;

antiputinside acc,a;
id acc(?a) = 1;

P;
.end
