    Symbol x,n;
    Format DoubleFortran;
    #OpenDictionary numbers
      #add 2: "TWO"
      #add 5: "FIVE"
      #add 7: "SEVEN"
      #add 1/2: "HALF"
    #CloseDictionary
    Local F = (1+x)^7/7;
    id  x^n? = x*x^n/(n+1);
    #UseDictionary numbers
    Print;
    .end
