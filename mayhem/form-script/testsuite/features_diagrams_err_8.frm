Vector q1,q2,p1,p2;
Model PHI3;
	Particle phi,1;
	Vertex phi,phi,phi:g;
EndModel;
Local test = diagrams_(PHI3,{phi},{phi},{q1,q2},{q1,p2},1,0);
.end
