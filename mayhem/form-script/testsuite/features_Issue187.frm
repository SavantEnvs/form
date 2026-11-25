* What is the fastest equivalent of Foreach in FORM?

* distrib_ generates combinations in lexicographical order (in the given
* arguments.)

S x1,...,x5;
CF f;
L F = f(x2,x5,x3,x1,x4);
#$counter = 0;
id f(?a$a) = 1;
term;
  multiply distrib_(1,3,f,dummy_,$a);
  $counter = $counter + 1;
  id f(?a) = f($counter,?a);
endterm;
P +s;
ModuleOption noparallel;
.end
