#-
Symbol a,b,c,d;
Local test1 = 1/(2*a)/(2*a)*replace_(a,b);
Local test2 = 1/(2*a)/(3*c)*replace_(a,b,c,d);
Local test3 = 1/(1+a)/(1+c)/(1+a+c)*replace_(a,b,c,d);
Local test4 = 1/(1+a/(1+b))*replace_(a,b);
Local test5 = 1/(2*a/(2*b))*replace_(a,b);
Local test6 = exp_(2*a*exp_(2*b,2),2);
Local test7 = exp_(2*a,1+c)*replace_(a,b,c,d);
Print;
.end
