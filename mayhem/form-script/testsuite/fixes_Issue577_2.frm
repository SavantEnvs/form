#-
Off stats;

Local test3 = 3;

* This causes and error and terminate: test3 is not defined when preprocessing.
#if ( isnumerical(test3) )
  #message test3
#endif
.end
