#StartFloat 10d
CFunction f;
#do i = 0,62
	Local F`i' = 1.`i'e{2^`i'}*f({2^`i'});
	Local G`i' = 1.`i'e{-2^`i'}*f({2^`i'});
#enddo
Print;
.end
