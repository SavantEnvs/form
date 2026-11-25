#-
#define NEXPR "4"

Symbol x;
#do i = 1,`NEXPR'
    Local F`i' = x^`i';
    Local G`i' = x^`i';
#enddo
.sort
Hide;
.sort
UnHide;

#do i = 1,`NEXPR'
    Local diff`i' = F`i' - G`i';
#enddo
ModuleOption inparallel;
.sort

Print;
.end
