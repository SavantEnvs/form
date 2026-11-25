#: MaxTermSize 283
CFunction prf;
Symbol x,y,z;
PolyRatFun prf;
#define N "2"
* This one goes wrong before properly starting to write the second argument
Local test = prf((x+y+z)^`N',(x+2*y)^`N')*prf((x^`N'-y-z)^`N',(x^`N'-2*y)^`N');
Print;
.end
