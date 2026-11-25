    #define a "1"
    #define bc2 "x"
    #define bc3 "y"
    #define b "c`~a'"
    #procedure hop(c,?d);
    #redefine a "3"
    #message This is the call: `c',`?d'
    #endprocedure

    #redefine a "2"
    #message This is b: `b'
    #call hop(`b`!b''`!b'`b'`!b'`b',`~a',`b',`a')
    .end
