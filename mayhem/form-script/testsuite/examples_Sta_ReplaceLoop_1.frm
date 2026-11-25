*TODO: change the result in the manual.
    Functions f(antisymmetric),ff(cyclesymmetric);
    Indices i1,...,i8;
    Local F = f(i1,i4,i2)*f(i5,i2,i3)*f(i3,i1,i6)*f(i4,i7,i8);
    ReplaceLoop f,arg=3,loop=3,out=ff;
    P;
    .end
