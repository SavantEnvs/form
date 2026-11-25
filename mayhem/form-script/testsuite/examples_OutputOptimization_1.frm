   CF  f;
   S   a,b,c;
   L   H = f(a)+f(b)+(a+b+c)^2;
   L   G = f(c)+(a+b+c)^3;
   Format O2;
   Print +f;
   .sort
   ExtraSymbols,array,w;
   Format Fortran;
   #optimize G
   #write <outg.f> "      REAL*8 w(`optimmaxvar_')"
   #write <outg.f> "%O"
   #write <outg.f> "      G = %e",G
   #clearoptimize
   .sort
   #optimize H
   #write <outh.f> "      REAL*8 w(`optimmaxvar_')"
   #write <outh.f> "%O"
   #write <outh.f> "      H = %e",H
   .end
