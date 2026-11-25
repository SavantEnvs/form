#-
CFunction f,g,h,i;
Local test = f + g + h(1,2) + i(1,2) + h(1,2,3) + i(1,2,3);
Transform f addargs(1,last);
Transform g mulargs(1,last);
Transform h addargs(1,3);
Transform i mulargs(1,3);
Print;
.end
