* don't veto parallel execution if there is a matching moduleoption statement
Local expr = 1;
.sort
$a = 1;
moduleoption local $a;
.end
