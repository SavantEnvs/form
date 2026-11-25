* Check error message for invalid setup parameter:
* In this case, an unexpected end-of-file as in the original report.
#system printf "#:x">temp.frm
#system `FORM' temp.frm
.end
