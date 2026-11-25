* Insert an item into the list of coupling constants.
S g2,g1;  * order-dependent segfault
Auto V p,q;
Model mod;
  Particle phi1 +1;
  Particle phi2 +1;
  Vertex phi1 phi1 phi1 : g1;
  Vertex phi2 phi2 phi2 : g2;
EndModel;
L F1 = diagrams_(mod,{phi1,phi1},{},{q1,q2},{p1,p2},1,`NoSnail_');
L F2 = diagrams_(mod,{phi2,phi2},{},{q1,q2},{p1,p2},1,`NoSnail_');
P +ss;
.end
