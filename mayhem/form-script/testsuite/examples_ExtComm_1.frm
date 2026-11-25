symbol a,b;

#external "n1" cat -u

#external "n2" cat -u

*  cat simply repeats its input. The default prompt is an
*  empty line. So we use "\n\n" here -- one "\n" is to finish
*  the line, and the next "\n" is the prompt:
#toexternal "(a+b)^2\n\n"

#setexternal `n1'
*  For this channel the prompt will be "READY\n":
#toexternal "(a+b)^3\nREADY\n"

#setexternal `n2'
*  Set the default prompt:
#prompt
Local aPLUSbTO2=
#fromexternal
       ;

#setexternal `n1'
#prompt READY
Local aPLUSbTO3=
#fromexternal
       ;

#rmexternal `n1'
#rmexternal `n2'

Print;
.end
