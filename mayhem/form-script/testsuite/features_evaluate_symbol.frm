#-
#StartFloat 64b

Symbol a,b;
Local PI0 = a*b;
Local PI1 = pi_;
Local PI2 = pi_*3;
Local PI3 = pi_*sqrt_(3);
Local PI4 = pi_*pi_*pi_;
Local PI5 = a*pi_*b;
Local PI6 = sqrt_(pi_);

Local EE1 = ee_;
Local EE2 = pi_*ee_;

Local EM1 = em_;

ToFloat;
Evaluate;

Print;
.end
