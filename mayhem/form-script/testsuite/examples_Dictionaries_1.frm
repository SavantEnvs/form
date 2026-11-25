    Symbols x1,y2,z3,N;
    Indices mu,nu,ro,si;
    Tensor tens;
    CFunction S,R,f;
    ExtraSymbols array w;
    #OpenDictionary test
      #add x1: "x_1"
      #add y2: "y^{(2)}"
      #add z3: "{\cal Z}"
      #add *: " "
      #add S(R(1),N): "S_1(N)"
      #add S(R(2),N): "S_2(N)"
      #add S(R(1,1),N): "S_{1,1}(N)"
      #add f: "\ln"
      #add mu: "\mu"
      #add nu: "\nu"
      #add ro: "\rho"
      #add si: "\sigma"
      #add tens: "T"
    #CloseDictionary
    Local F = x1*y2*z3
         + S(R(1),N) + S(R(1,1),N) + S(R(2),N)
         + tens(mu,nu,ro,si) + f(x1+1);
    #usedictionary test
    Print +s;
    .end
