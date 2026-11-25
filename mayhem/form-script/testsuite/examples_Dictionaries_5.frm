    Symbol x,n;
    Format DoubleFortran;
    #OpenDictionary numbers
      #add 2: "cd2"
      #add 5: "cd5"
      #add 7: "cd7"
      #add 56: "cd56"
      #add 1/2: "c1d2"
      #add 5/4: "c5d4"
    #CloseDictionary
    Local F = (1+x)^7/7;
    id  x^n? = x*x^n/(n+1);
    #UseDictionary numbers (warnings)
    Print;
    .end
