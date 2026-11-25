    Vector Q,p1,...,p5,q1,...,q5;
    Cfunction V(s),replace;
    Format 60;
*   This is a t1 topology:
    L   F = V(Q,p1,p4)*V(p1,p2,p5)*
            V(p2,p3,Q)*V(p3,p4,p5);
    $t = term_;
    id,all,$t*replace_(<p1,p1?>,...,<p5,p5?>) =
         $t*replace(<p1,q1>,...,<p5,q5>);
    Print +s;
    ModuleOption local $t; * allow parallel execution
    .end
