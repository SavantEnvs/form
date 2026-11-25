#-
#define str "abcde"
#do i = 0,6
	#message takeleft_(`str',`i')  = `takeleft_(`str',`i')'
	#message takeright_(`str',`i') = `takeright_(`str',`i')'
	#message keepleft_(`str',`i')  = `keepleft_(`str',`i')'
	#message keepright_(`str',`i') = `keepright_(`str',`i')'
#enddo
.end
