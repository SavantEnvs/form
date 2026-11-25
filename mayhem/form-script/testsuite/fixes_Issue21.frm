* Occurs() with two or more terms in function arguments may get freeze
S x;
CF f;
L F = f(1+x);
if (occurs(x));
  id f(?a) = 1;
endif;
P;
.end
