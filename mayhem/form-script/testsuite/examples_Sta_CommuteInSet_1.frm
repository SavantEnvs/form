    I   i1,...,i10;
    F   A1,...,A10;
    CommuteInSet{A1,A3,A5},{A1,g_},{A1,A1};
    L   F = A5*A1*A5*A1*A5*A2*A3*A5*A1*A5*A3*A1;
    L   G = g_(2,i1)*g_(2,i2,i3)*A1(i2)*g_(1,i4)*g_(1,5_,i5,i6)
                    *A1(i1)*A1(i3)*g5_(1)*A3(i5)*A3(i4)*g5_(1);
    Print +f +s;
    .end
