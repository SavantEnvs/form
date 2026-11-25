* CopySpectator crashes when empty
CreateSpectator TMP, "xTMP";
S x;
L F = (1+x)^2;
.sort
CopySpectator G = TMP;
P;
.end
