* Extend the list of coupling constants.
#define N "15"  * N >= 12
Auto V p,q;
Model mod;
  #do i=1,`N'
    Particle phi`i' +1;
  #enddo
  #do i=1,`N'
  Vertex phi`i' phi`i' phi`i' : g`i';
  #enddo
EndModel;
L n = `N';
L F1 = diagrams_(mod,{phi1,phi1},{},{q1,q2},{p1,p2},1,`NoSnail_');
L F`N' = diagrams_(mod,{phi`N',phi`N'},{},{q1,q2},{p1,p2},1,`NoSnail_');
P +ss;
.end
