    Symbol x;
    CFunction f;
    #OpenDictionary ranges
      #add (1,2): "w(%#)"
      #add (3): "ww(%#)"
      #add (4,6): "www(%@)"
    #CloseDictionary
    Local F = <f(1)*x^1>+...+<f(6)*x^6>;
    ToPolynomial;
    Print;
    .sort
    #UseDictionary ranges
    Print;
    .end
