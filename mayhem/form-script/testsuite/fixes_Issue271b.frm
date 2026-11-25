#-
#define N "16"
Symbol x,n;
Local test = -{`N'*(`N'+1)/2} + <x^1>+...+<x^`N'>;
.sort
#$split = 0;
$split = $split + term_;
ModuleOption sum $split;
.sort
#message split = `$split'
Print;
.end
