CF f;
Auto S x;
L F = f(<x1+x2+x3>,...,<x7+x8+x9>);

* Consume ebuf. (Assume the default setup parameters on 64-bit systems.)
#do i=1,10
  id f(?a,x1?,x2?,?c) = f(?a,x1,x2,?c);
#enddo

* This extends ebuf.
transform f,mulargs(1,last);

* Crashed here.
id f(?a) = f(?a);

* Check a "hash", just in case.
multiply replace_(<x1,1>,...,<x9,1>);
id f(x?) = x;
P;
.end
