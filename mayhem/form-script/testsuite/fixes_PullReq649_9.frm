* *do veto* if the moduleoption statement is for the wrong variable
Local expr = 1;
.sort
#$b = 1;
$a = 1;
moduleoption local $b;
.end
