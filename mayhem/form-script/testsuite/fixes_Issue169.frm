* Crash from multiply replace_ in large expression
S x;
CF den;
L F =
  + 16608736983689726473/192*den(2+x)
  + 18358130244940416000*den(2+x)
;
multiply replace_(x,1);
P +s;
.end
