#: MaxTermSize 200
CFunction prf;
Symbol x,y;
PolyRatFun prf;
#define N "3"
Local test = prf((x+y)^`N',(x+2*y)^`N')*prf((x^`N'-y)^`N',(x^`N'-2*y)^`N');
Print;
.end
