    Symbol x,x1,x2;
    CF  H,H1;
    Off Statistics;
    L   F = H(3,4,2,6,1,1,1,2);
    Transform,H,explode(1,last),
                replace(1,last)=(0,1,1,0),
                encode(1,last):base=2;
    Print;
    .end
