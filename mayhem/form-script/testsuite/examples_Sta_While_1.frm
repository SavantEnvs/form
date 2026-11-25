Symbol x,y,z;
Local Fx = (1+x)^6;
Local Fy = (1+y)^6;
Local Fz = (1+z)^6;

While (Count(x,1) > 3);
   Multiply 1/x;
EndWhile;

Repeat;
   If (Count(y,1) > 3);
      Multiply 1/y;
   EndIf;
EndRepeat;

While (Count(z,1) > 3) Multiply 1/z;

Print;
.end
