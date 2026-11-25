Symbol x,y,z;
Local test = x+z;
* These will replace x by y but not z by y, because z
* comes before y in the default sort ordering:
TryReplace x,y;
TryReplace z,y;
Print;
.end
