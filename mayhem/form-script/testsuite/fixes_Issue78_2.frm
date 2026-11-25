V Q;
CF vx;
L F1 = vx(-Q);
L F2 = F1;
inexpression F1;
  id vx(Q?{Q,-Q}) = 1;
endinexpression;
inexpression F2;
  id vx(Q?{-Q,Q}) = 1;
endinexpression;
Print;
.end
