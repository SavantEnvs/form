#ifndef `TableSize'
  #define TableSize "10"
#endif
* Bugs reported 2004-04-06 by Misha Tentukov
* PrintTable and FillExpression did not work with non-sparse tables
* Fixed 2005-09-27
cf f;
s x;
ctable Tab(1:`TableSize');
ctable TabNew(1:`TableSize');

#do i=1,`TableSize',1
Fill Tab(`i')=f(`i');
.sort
#enddo

* BUG1 (not all elements are printed):
PrintTable Tab;

bracket x;
.sort
L expr1=table_(Tab,x);
print;
.sort

bracket x;
.sort

* BUG 2 ( seems only TabNew(1) is ok - further everything is broken):
Fillexpression TabNew=expr1(x);
.sort

#do i=1,`TableSize'
L e`i'=TabNew(`i');
#enddo
print;
.sort
.end
