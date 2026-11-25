* Another wrong outcome of autodeclared index dimension
autodeclare symbol N;
autodeclare index randomIndex=N1;
local A = d_(randomIndex1,randomIndex2)*d_(randomIndex1,randomIndex2);
print +s;
.end
