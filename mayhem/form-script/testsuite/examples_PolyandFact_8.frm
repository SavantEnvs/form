    Symbol x,y;
    LocalFactorize E = -(x+1)*(x+2)*((x+3)*(x+4));
    Local   F = -(x+1)*(x+2)*((x+3)*(x+4));
    Print;
    .sort
    LF G = (x-1)*(x+2)^2*E^2*F^2;
    Print G;
    .end
