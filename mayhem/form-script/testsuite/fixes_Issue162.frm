* Missing Expr[x] with B+ for functions
#define N "5"
#define M "2"
#define P "3"

S x;
CF x1,...,x`M';
S x{`M'+1},...,x`N';

* Test input.

L F = (x1+...+x`N')^`P';
.sort:input;

* Bracket for some functions.

B+ x1,...,x`M';
Print[];
.sort:bracket;
Hide;

* Check if all entries exist.

L FF = F;
B x1,...,x`M';
.sort:test input;
Keep Brackets;

#define failed "0"

$x = term_;
$y = F[$x];
$n = termsin_($y);
if ($n == 0);
  P "Error: F[%$] == %$", $x, $y;
  redefine failed "1";
endif;
ModuleOption local $n,$x,$y;
.sort:test;

#if `failed'
  #terminate
#endif
.end
