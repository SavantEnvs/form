* Also related: Issue 334.
Global abcdefghijklmnop1 = 17;
Global abcdefghijklmnop2 = 17;
.store
#do i = 1,2
    Save test.res abcdefghijklmnop`i';
#enddo
.end
