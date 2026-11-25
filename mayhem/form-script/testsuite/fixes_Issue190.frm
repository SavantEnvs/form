* Polyratfun coming from function argument does not add properly
Auto S x1,x2,ep;
CF f,rat;
Polyratfun rat;

* x1 and x2 should have coefficient -1
L F =
      +f((rat(1-ep,1)*x1-2*x2)*rat(1,1+ep))
      +f((rat(1-ep,1)*x2-2*x1)*rat(1,1+ep))
;

id f(x1?) = x1;

Print +s;
.end
