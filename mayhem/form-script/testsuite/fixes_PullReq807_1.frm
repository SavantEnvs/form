CF f;
S x;
L F = (<f(1)>+...+<f(10)>)^4;
dropcoefficient;
.sort
#do i=1,10
  if (match(f(`i')));
    $x = `i';
  endif;
#enddo
id f(x?) = x;
ModuleOption maximum $x;
.sort
P;
.sort
#message $x: `$x'
.end
