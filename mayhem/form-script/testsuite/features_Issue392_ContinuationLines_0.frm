#: ContinuationLines 0
* Setting ContinuationLines to 0 should remove continuation line limit.
auto symbol x;
local ex = (xabcdefg + xhijklmnop)^100;
.sort
format C;
#write <out.c> "%e" ex
.end
