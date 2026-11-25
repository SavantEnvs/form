#-
Off stats;
Symbol x,y,z;

Local test1 = 1;
.sort
Hide test1;
Local test2 = 2;
.sort

Local test3 = 3;

#if ( isnumerical(test1) )
  #message test1
#endif
#if ( isnumerical(test2) )
  #message test2
#endif
* This causes and error and terminate: test3 is not defined when preprocessing.
*#if ( isnumerical(test3) )
*  #message test3
*#endif
#message module1
.sort

#if ( isnumerical(test1) )
  #message test1
#endif
#if ( isnumerical(test2) )
  #message test2
#endif
#if ( isnumerical(test3) )
  #message test3
#endif
#message module2
.sort

Local test4 = x*firstterm_(test1) + y*firstterm_(test2) + z*firstterm_(test3);
Local test5 = x*firstterm_(test4);

Multiply 2;

print;
.end
