* Memory error on dollar matching
CFunction TOPO,topo;
CFunction color;
Symbol M1,M2,x,cOlNA,cOlNR,ca,cf,nf,[dabc^2/n],[d4RR/n],[d4RA/n],[d4AA/n];

L   Diagrams=
      +topo(M1)*color(24*[d4RR/n]*cOlNA*cOlNR^-1+12*ca*[dabc^2/n]+
      ca^2*cf*nf)
      +topo(M2)*color(24*[d4RA/n]*cOlNA*cOlNR^-1+24*cf^4-72*ca*cf^3
      +66*ca^2*cf^2-19*ca^3*cf)
;

.sort

   id  topo(x?$topo) = 1;
   id  color(x?$color) = 1;

   $color = $color * topo($topo);

   ModuleOption noparallel;
.sort
L Color = `$color';
P;
.end
