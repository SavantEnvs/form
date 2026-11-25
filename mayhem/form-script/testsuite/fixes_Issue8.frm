* Bug with function replacement
Symbols a, b;
Functions fun, nDUMMY1, nDUMMY2;
Local expr= fun(a)*fun(b) ;
Id nDUMMY1?(?args1) * nDUMMY2?(?args2) = 1;
.sort
Print;
.end
