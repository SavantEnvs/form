#-
Local test1 = 1;
Local test2 = 1;
.sort
IntoHide;
NIntoHide test2;
* test1 should be multiplied here
Multiply 2;
.sort
* test1 should not be multiplied here
Multiply 2;
.sort
UnHide;
Print;
.end
