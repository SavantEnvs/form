* Strange error in 'also once' in combination with 'replace_'
cf ABB;
i mu;
L test = 1;
once ABB(mu?) * ABB(mu?) = 1;
also once ABB(mu?, ?b, mu?) = replace_(mu, N100_?);
P;
.end
