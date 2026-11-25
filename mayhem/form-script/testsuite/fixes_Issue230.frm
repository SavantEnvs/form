#-
#: MaxTermSize 16K
#: SubTermsInSmall 800


Off Statistics;

Symbol x1,...,x11;
CFunction f;

Local test = f(x1+...+x11) - (x1+...+x11)^4;
Identify f(x1?) = f(x1,x1,x1,x1);
.sort

Transform f mulargs(1,last);
Identify f(x1?) = x1;

Print +s;
.end
