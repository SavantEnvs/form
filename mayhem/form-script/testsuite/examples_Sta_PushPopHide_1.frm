Local F1 = 1;
.sort
PushHide;
Local F2 = 1;
* This statement does not affect F1:
Multiply 2;
.sort
PushHide;
Local F3 = 1;
* This statement does not affect F1,F2:
Multiply 2;
.sort
PopHide;
* This statement does not affect F1:
Multiply 2;
.sort
PopHide;
* This statement affects all expressions:
Multiply 2;
Print;
.end
