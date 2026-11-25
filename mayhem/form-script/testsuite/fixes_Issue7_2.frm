* nontrivial bracket case was OK
Symbol x,y;
Local expr = x*(12+y);
Bracket x;
Print;
.sort

Format O3;
#optimize expr
Print;
.end
