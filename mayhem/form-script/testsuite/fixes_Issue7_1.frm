* SegFault when #optimizing trivial bracket
Symbol x;
Local expr = x;
Bracket x;
Print;
.sort

Format O3;
#optimize expr
Print;
.end
