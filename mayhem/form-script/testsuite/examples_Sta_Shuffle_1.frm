   CF f,ff,g;
   S a,b,c,d,x1,x2;
   Local F1 = ff*f(a,b)*f(c,d);
   Local F2 = g(a,b)*g(c,d);
   repeat id f(x1?,?a)*f(x2?,?b)*ff(?c) =
            +f(?a)*f(x2,?b)*ff(?c,x1)
            +f(x1,?a)*f(?b)*ff(?c,x2);
   id f(?a)*f(?b)*ff(?c) = f(?c,?a,?b);
   shuffle,g;
   Print;
   .end
