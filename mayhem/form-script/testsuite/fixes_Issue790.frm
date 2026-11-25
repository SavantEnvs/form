#-
CFunction cfx,cfy,cfz;
Function fx,fy;
Index ix,iy,iz;
Index jx,jy,jz;
Vector vx,vy,vz;
Symbol sx,sy,sz;
Local Fcf  = gcd_(cfx+cfx*cfy, cfx-cfx*cfy);
Local Fcf2 = gcd_(cfx*cfz+cfx*cfy*cfz, cfx*cfz-cfx*cfy*cfz);
Local Ff   = gcd_(fx+fx*fy, fx-fx*fy);
Local Fi   = gcd_(ix+ix*iy, ix-ix*iy);
Local Fi2  = gcd_(ix*iz+ix*iy*iz, ix*iz-ix*iy*iz);
Local Fv   = gcd_(vx+vx*vy, vx-vx*vy);
Local Fv2  = gcd_(vx*vz+vx*vy*vz, vx*vz-vx*vy*vz);
Local Fvi  = gcd_(vx(ix)+vx(ix)*vy(iy), vx(ix)-vx(ix)*vy(iy));
Local Fvi2 = gcd_(vx(ix)*vz(iz)+vx(ix)*vy(iy)*vz(iz), vx(ix)*vz(iz)-vx(ix)*vy(iy)*vz(iz));
Local Fdp  = gcd_(vx.vx+vx.vx*vy.vy, vx.vx-vx.vx*vy.vy);
Local Fdp2 = gcd_(vx.vx*vz.vz+vx.vx*vy.vy*vz.vz, vx.vx*vz.vz-vx.vx*vy.vy*vz.vz);
Local Fdp3 = gcd_(vx.vx^3*vz.vz^3+vx.vx^2*vy.vy*vz.vz^2, vx.vx^3*vz.vz^3-vx.vx^2*vy.vy*vz.vz^2);
Local Fs   = gcd_(sx+sx*sy, sx-sx*sy);
Local Fs2  = gcd_(sx*sz+sx*sy*sz, sx*sz-sx*sy*sz);
* For now, this fails in PutExtraSymbols, though TakeContent works
*Local Fdel = gcd_(d_(ix,jx)+d_(ix,jx)*d_(iy,jy), d_(ix,jx)-d_(ix,jx)*d_(iy,jy));
Print;
.end
