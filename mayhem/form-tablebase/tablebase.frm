Symbols x,y;
CFunction f;
TableBase "`FILE'" open, readonly;
TableBase "`FILE'" load;
TableBase "`FILE'" enter;
TableBase "`FILE'" use;
Local G = tab(1)+tab(2);
Apply;
Print;
.end
