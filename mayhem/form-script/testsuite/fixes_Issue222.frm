* accessing #factdollar factors causes program termination
Symbol x;
#$a = 1;  * Error
*#$a = x;  * Fine
#factdollar $a;
#write "Number of factors in `$a' is `$a[0]'"
#write "Factor 1 is `$a[1]'"
.end
