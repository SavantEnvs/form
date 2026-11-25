CFunction f2,f3,F2,F3;
Local test = f2(13) + f2(100) + f3(37) + F2(13) + F3(37);
Transform f2 decode(1,5):base=2;
Transform f3 decode(1,5):base=3;
Transform F2 decode(5,1):base=2;
Transform F3 decode(5,1):base=3;
Print;
.end
