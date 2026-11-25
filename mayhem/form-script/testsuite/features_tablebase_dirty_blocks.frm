CTable,sparse f(1);
#do i = 1,1030
  Fill f(`i') = `i';
#enddo
.sort
TableBase "dirty-blocks.tbl" create;
TableBase "dirty-blocks.tbl" addto f;
.end
