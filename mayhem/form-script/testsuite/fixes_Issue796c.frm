* This case has always deadlocked:
Symbol x;
Local test = <x^1>+...+<x^128>;
#$sumpow = 129;
$sumpow = max_($sumpow,count_(x,1));
ModuleOption sum $sumpow;
.sort
#message sumpow: `$sumpow'
.end
