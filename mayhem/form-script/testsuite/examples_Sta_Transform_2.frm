Symbol x,x1,x2;
CF  H,H1;
Off Statistics;
L   F = H(3,4,2,6,1,1,1,2);
repeat id H(?a,x?!{0,1},?b) = H(?a,0,x-1,?b);
Print;
.sort

Multiply H1;
repeat id H(x?,?a)*H1(?b) = H(?a)*H1(?b,1-x);
id  H1(?a)*H = H(?a);
Print;
.sort

repeat id H(x1?,x2?,?a) = H(2*x1+x2,?a);
Print;
.end
