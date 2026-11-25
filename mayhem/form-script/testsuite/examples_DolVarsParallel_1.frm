    S   a1,...,a10;
    L   F = (a1+...+a10)^3;
    .sort
    #$c = 0;
    Print +f "<%w> %t";
    Multiply,(a1+...+a10);
    $c = $c+1;
    ModuleOption,sum,$c;
    .sort
    #message $c = `$c'
    #$max = 0;
    #$min = 10;
    if ( count(a1,1) > $max ) $max = count_(a1,1);
    if ( count(a4,1) < $min ) $min = count_(a4,1);
    ModuleOption,maximum,$max;
    ModuleOption,minimum,$min;
    .sort
    #message $max = `$max'
    #message $min = `$min'
    .end
