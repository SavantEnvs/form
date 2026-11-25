* [with the Translate statement]
CF f;
L F0  = f(1,2,3,4,5,6,7,8,9);

#do i=1,4
  #do j=1,8
    L F`i'`j' = F0;
  #enddo
#enddo

$n1 = 3;
$n2 = 5;
$n3 = 4;

#procedure Test(F,trans)
  inexpression `F'1;
    transform,f,`trans'(3,5);
  endinexpression;
  inexpression `F'2;
    transform,f,`trans'(3,$n2);
  endinexpression;
  inexpression `F'3;
    transform,f,`trans'(3,last-4);
  endinexpression;
  inexpression `F'4;
    transform,f,`trans'(3,last-$n3);
  endinexpression;
  inexpression `F'5;
    transform,f,`trans'($n1,5);
  endinexpression;
  inexpression `F'6;
    transform,f,`trans'($n1,$n2);
  endinexpression;
  inexpression `F'7;
    transform,f,`trans'($n1,last-4);
  endinexpression;
  inexpression `F'8;
    transform,f,`trans'($n1,last-$n3);
  endinexpression;
#endprocedure

#call Test(F1,dropargs)
#call Test(F2,selectargs)
#call Test(F3,addargs)
#call Test(F4,mulargs)
P;
ModuleOption local, $n1,$n2,$n3;
.end
