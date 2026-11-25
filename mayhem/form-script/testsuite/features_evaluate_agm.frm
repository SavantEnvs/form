#Startfloat 33b
CFunction agm,f;
Local AGM = agm(24,6)*agm_(24,6)+agm(24,0)*agm_(24,0)+agm(0,6)*agm_(0,6)+agm(24,-1)*agm_(24,-1)+agm(-1,6)*agm_(-1,6)+agm(0,-1)*agm_(0,-1)+agm(-1,0)*agm_(-1,0);
Evaluate agm_;
Print +s;
.end
