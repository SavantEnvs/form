* Test warning message when modifying a dollar variable forces
* a module into sequential mode

*  need an expression with a non-zero value
Local expr = 1;
*  and a new module, since parallel execution does not work
*  in the module defining an expression
.sort
$a = 1;
.end
