CFunction f;
Symbol x;
Local test = <f(1)>+...+<f(6)>;
Identify f(x?even_) = x;
If (Match(f(x?)));
   Print "Error: unreplaced f: %t";
   SetExitFlag;
EndIf;
.sort
Print;
.end
