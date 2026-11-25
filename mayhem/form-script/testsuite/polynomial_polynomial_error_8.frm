#: MaxTermSize 200
CFunction prf;
Symbol x;
PolyRatFun prf;
#define N "4"
Local test = prf((x+1)^`N',(x+2)^`N')*prf((x^`N'-1)^`N',(x^`N'-2)^`N');
Print;
.end
