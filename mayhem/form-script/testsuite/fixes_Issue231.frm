Symbol x,y,z;
Local F = x + y + x*z;
.sort
#do i=1,9
	CreateSpectator S`i',"S`i'.spec";
#enddo
If (Count(y,1) > 0) ToSpectator S1;
.sort
* Remove some spectators, making holes
#do i=1,9,2
	RemoveSpectator S`i';
#enddo
* Add to a spectator after making "holes"
If (Count(z,1) > 0) ToSpectator S4;
.sort
* Retrieve:
CopySpectator G = S4;
.sort
* Empty
RemoveSpectator S4;
Print;
.sort
On Codes;
* New spectator, should fill in the first "hole"
CreateSpectator S1 "S1.spec";
.end
