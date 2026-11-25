* Memory error with macros with arguments
* The loop (appending a variable and calling the macro) is repeated enough
* to hit the problem (Valgrind error).
#define var(a) "`~a'"
#do n=1,{12*2^5}
  #define x
  #message `var(`n')'
#enddo
.end
