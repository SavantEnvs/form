* Id not matching when using ?a and symmetric function
S n1,n2;
CF f,g(s);
L F = f(n1,n2)*g(n1,n2);
id f(n1?,n2?,?a)*g(n1?,n2?) = 1; * works if g not symmetric or ?a is removed
Print;
.end
