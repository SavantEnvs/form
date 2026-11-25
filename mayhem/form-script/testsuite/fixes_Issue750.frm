#-
Off Statistics;

NTensor   A,B,C;
CTensor   D,E,F;
NFunction a,b,c;
CFunction d,e,f;

AutoDeclare Vector p;
AutoDeclare Index mu;

Local testNT1 = A(mu1)        *B(mu1)        *C(mu1);
Local testNT2 = A(mu1,mu2)    *B(mu1,mu2)    *C(mu1,mu2);
Local testNT3 = A(mu1,mu2,mu3)*B(mu1,mu2,mu3)*C(mu1,mu2,mu3);
Local testCT1 = D(mu1)        *E(mu1)        *F(mu1);
Local testCT2 = D(mu1,mu2)    *E(mu1,mu2)    *F(mu1,mu2);
Local testCT3 = D(mu1,mu2,mu3)*E(mu1,mu2,mu3)*F(mu1,mu2,mu3);
Local testNF1 = a(mu1)        *b(mu1)        *c(mu1);
Local testNF2 = a(mu1,mu2)    *b(mu1,mu2)    *c(mu1,mu2);
Local testNF3 = a(mu1,mu2,mu3)*b(mu1,mu2,mu3)*c(mu1,mu2,mu3);
Local testCF1 = d(mu1)        *e(mu1)        *f(mu1);
Local testCF2 = d(mu1,mu2)    *e(mu1,mu2)    *f(mu1,mu2);
Local testCF3 = d(mu1,mu2,mu3)*e(mu1,mu2,mu3)*f(mu1,mu2,mu3);

* Replace the last first, to make sure the non-commuting
* versions stay in-order in the single-index case.
Identify C(?a) = putfirst_(C,2,?a);
Identify F(?a) = putfirst_(F,2,?a);
Identify c(?a) = putfirst_(c,2,?a);
Identify f(?a) = putfirst_(f,2,?a);

Identify B(?a) = putfirst_(B,2,?a);
Identify E(?a) = putfirst_(E,2,?a);
Identify b(?a) = putfirst_(b,2,?a);
Identify e(?a) = putfirst_(e,2,?a);

Identify A(?a) = putfirst_(A,2,?a);
Identify D(?a) = putfirst_(D,2,?a);
Identify a(?a) = putfirst_(a,2,?a);
Identify d(?a) = putfirst_(d,2,?a);

Print;
.end
