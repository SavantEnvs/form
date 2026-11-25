#: MaxTermSize 241
CFunction prf;
Symbol x;
PolyRatFun prf;
#define N "5"
* This one goes wrong before properly starting to write the second argument
Local test = prf((x+1)^`N',(x+2)^`N')*prf((x^`N'-1)^`N',(x^`N'-2)^`N');
Print;
.end
