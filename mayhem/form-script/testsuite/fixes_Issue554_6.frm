#-
CF f,g,h,i;
S x;

#$x1 = f(1,3,5);
#$x2 = f();

#inside $x1
  if (match(f(?a$a)));
  endif;
#endinside
#inside $x2
  if (match(f(?a$b)));
  endif;
#endinside

L F = f(1,2,3,4,5,6);
L G = g(1,2,3,4,5,6);
L H = h(1,2,3,4,5,6);
L I = i(1,2,3,4,5,6);

repeat id f(?a,x? {`$a',},?b) = x * f(?a,?b);
repeat id g(?a,x?!{`$a',},?b) = x * g(?a,?b);
repeat id h(?a,x? {`$b',},?b) = x * h(?a,?b);
repeat id i(?a,x?!{`$b',},?b) = x * i(?a,?b);

P;
.end
