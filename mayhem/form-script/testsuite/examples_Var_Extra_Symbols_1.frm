* NOTE: removed "Generated on `DATE_'"
    Vector p,q,p1,p2;
    CFunction f;
    CFunction Dot,InvDot;
    Symbol x,x1,x2;
    Set pdot:p,q;
    Off Statistics;
    Local F = x+x^2+1/x+1/x^2+f(x1)+f(x2)*p.q*x+f(x2)/p.q^2;
    id  p1?pdot.p2?pdot = Dot(p1,p2);
    id  1/p1?pdot.p2?pdot = InvDot(p1,p2);
    Print;
    .sort

    ExtraSymbols,array,Y;
    Format DOUBLEFORTRAN;
    ToPolynomial;
    Print;
    .sort

    #write <sub.f> "      SUBROUTINE sub(Y)"
    #write <sub.f> "*"
    #write <sub.f> "*      Compute the extra symbols."
    #write <sub.f> "*"
    #write <sub.f> "      REAL*8 Y(`EXTRASYMBOLS_')"
    #write <sub.f> "      REAL*8 Dot,InvDot"
    #write <sub.f> "      Dot(p1,p2)=p1(1)*p2(1)-p1(2)*p2(2)-p1(3)*p2(3)\
                                                              -p1(4)*p2(4)"
    #write <sub.f> "      InvDot(p1,p2)=1.D0/(Dot(p1,p2))"
    #write <sub.f> "*"
    #write <sub.f> "*        We still have to add definitions here."
    #write <sub.f> "*        And we have to import all the variables."
    #write <sub.f> "*"
    #write <sub.f> "%X"
    #write <sub.f> "*"
    #write <sub.f> "      RETURN"
    #write <sub.f> "      END"
    ExtraSymbols,underscore,Z;
    Format Normal;
    Format 80;
    Print;
    .sort

    FromPolynomial;
    Print;
    .end
