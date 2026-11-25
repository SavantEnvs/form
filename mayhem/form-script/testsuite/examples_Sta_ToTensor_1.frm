*NOTE: "functions" option is needed.
Vector p,p1,p2;
Function f;
Index mu;
Tensor tt,t;
Local F = p.p1^2*f(p,p1)*p(mu)*tt(p1,p,p2,p);
ToTensor functions, p,t;
Print;
.end
