* Regression: the fix for 796 deadlocks here:
Symbol x;
Local test = <x^1>+...+<x^128>;
#$minpow = 129;
$minpow = min_($minpow,count_(x,1));
ModuleOption minimum $minpow;
.sort
#message minpow: `$minpow'
.end
