    CF Z1, ..., Z4;
    S x, a, b;
    L s = a * (Z1(0,0,0,1,0,0,-1) - Z2(0,0,0,1,0,0,-1))
        + b * (Z3(-2,8,-1,-1) - Z4(-2,8,-1,-1));
    ArgImplode Z1;
    repeat id Z2(?a,0,x?!{0,0},?b) = Z2(?a,x+sig_(x),?b);
    ArgExplode Z3;
    repeat id Z4(?a,x?!{1,0,-1},?b) = Z4(?a,0,x-sig_(x),?b);
    id Z2(?a) = Z1(?a);
    id Z4(?a) = Z3(?a);
    Print;
    .end
