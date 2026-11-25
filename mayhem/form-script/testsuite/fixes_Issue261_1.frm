* Division by zero error by mul_(1,0)
S x;
#$x = 1 + x + x^2;
#$z = 0;
L F1  = mul_(1,0);
L F2  = mul_(0,1);
L F3  = mul_(0,0);
L F4  = mul_($x,$z);
L F5  = mul_($z,$x);
L F6  = mul_($z,$z);
L F7  = mul_($x,0);
L F8  = mul_(0,$x);
L F9  = mul_(1,$z);
L F10 = mul_($z,1);

L F12 = div_(0,1);
L F15 = div_($z,$x);
L F18 = div_(0,$x);
L F20 = div_($z,1);

L F22 = rem_(0,1);
L F25 = rem_($z,$x);
L F28 = rem_(0,$x);
L F30 = rem_($z,1);

L F32 = inverse_(0,1);
L F35 = inverse_($z,$x);
L F38 = inverse_(0,$x);
L F40 = inverse_($z,1);

P;
.end
