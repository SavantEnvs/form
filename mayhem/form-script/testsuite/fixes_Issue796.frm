* Regression: the fix for 796 deadlocks here:
Symbol x;
Local test = <x^1>+...+<x^128>;
#$maxpow = 0;
$maxpow = max_($maxpow,count_(x,1));
ModuleOption maximum $maxpow;
.sort
#message maxpow: `$maxpow'
.end
