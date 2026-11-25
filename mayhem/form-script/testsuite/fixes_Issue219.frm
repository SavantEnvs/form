* Corrupted characters in {-9223372036854775808}
#$n32  = -2^31;
#$n64  = -2^63;
#$n128 = -2^127;
L F32  = {`$n32'};
L F64  = {`$n64'};
L F128 = {`$n128'};
* In previous versions, "(" was returned from the preprocessor calculator
* on systems using two's complement for signed numbers, leading to an
* "Unmatched ()" error. Note that overflow/underflow doesn't give any errors in
* the preprocessor calculator (e.g., for F128), just gives a strange number
* (though in a strict sense it is an undefined behaviour and can cause a crash;
* let's hope compilers will take a little more time to become so insidious).
P;
.end
