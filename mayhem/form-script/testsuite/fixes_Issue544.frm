#-
Off Statistics;

Symbol x;
Vector D,p,q;
CFunction tag;
CFunction f,g,h,i,j,k,l,m;
CFunction F,G,H,I,J,K,L,M;

#define N "3"

Local test =
	#do i = -`N',`N'
		+ f(p,`i')
		+ f(-q,`i')
		+ f(p,q,`i')
		+ f(-p,q,`i')
		+ f(p,-q,`i')
		+ f(-p,-q,`i')
	#enddo
	;

* Use tags to make sure the cancellation is unique
Identify f(?a) =
	+ (f(?a) - F(?a)) * tag(f,?a)
	+ (g(?a) - G(?a)) * tag(g,?a)
	+ (h(?a) - H(?a)) * tag(h,?a)
	+ (i(?a) - I(?a)) * tag(i,?a)
	+ (j(?a) - J(?a)) * tag(j,?a)
	+ (k(?a) - K(?a)) * tag(k,?a)
	+ (l(?a) - L(?a)) * tag(l,?a)
	+ (m(?a) - M(?a)) * tag(m,?a)
	;
.sort

Identify f(p?,x?) = D.p^x;
Identify f(p?,q?,x?) = p.q^x;
Identify g(p?,x?) = D.p^-x;
Identify g(p?,q?,x?) = p.q^-x;

Identify h(p?,x?) = (D.p)^x;
Identify h(p?,q?,x?) = (p.q)^x;
Identify i(p?,x?) = D.p^(x);
Identify i(p?,q?,x?) = p.q^(x);

* And with - signs on the pattern vector:
Identify j(-p?,x?) = D.p^x;
Identify j(-p?,-q?,x?) = p.q^x;
Identify k(-p?,x?) = D.p^-x;
Identify k(-p?,-q?,x?) = p.q^-x;

Identify l(-p?,x?) = (D.p)^x;
Identify l(-p?,-q?,x?) = (p.q)^x;
Identify m(-p?,x?) = D.p^(x);
Identify m(-p?,-q?,x?) = p.q^(x);

* Cancel all terms, with no pattern for the power
#do i = -`N',`N'
	Identify F(p?,`i') = D.p^`i';
	Identify F(p?,q?,`i') = p.q^`i';
	Identify G(p?,`i') = D.p^-`i';
	Identify G(p?,q?,`i') = p.q^-`i';

	Identify H(p?,`i') = (D.p)^`i';
	Identify H(p?,q?,`i') = (p.q)^`i';
	Identify I(p?,`i') = D.p^(`i');
	Identify I(p?,q?,`i') = p.q^(`i');

	Identify J(-p?,`i') = D.p^`i';
	Identify J(-p?,-q?,`i') = p.q^`i';
	Identify K(-p?,`i') = D.p^-`i';
	Identify K(-p?,-q?,`i') = p.q^-`i';

	Identify L(-p?,`i') = (D.p)^`i';
	Identify L(-p?,-q?,`i') = (p.q)^`i';
	Identify M(-p?,`i') = D.p^(`i');
	Identify M(-p?,-q?,`i') = p.q^(`i');
#enddo

Print +s;
.end
