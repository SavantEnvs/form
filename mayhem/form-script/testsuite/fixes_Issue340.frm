* Calling "argtoextrasymbol" of a function containing "g5_" crashes
CF f, g;

L A = f( g(g5_(1)) );
L B = f( g5_(1) );
L C = f( gi_(1) );

argtoextrasymbol f;

print +s;
.end
