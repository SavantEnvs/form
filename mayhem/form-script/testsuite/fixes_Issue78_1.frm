* Minus sign is ignored in set restriction
V p,p1;
CF vx;
L F1 = vx(-p1);
L F2 = F1;
inexpression F1;
  id vx(p?!{p1,-p1}) = 1;
endinexpression;
inexpression F2;
  id vx(p?!{-p1,p1}) = 1;
endinexpression;
Print;
.end
