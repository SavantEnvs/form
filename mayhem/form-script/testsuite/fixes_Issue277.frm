* A question about addargs
CFunction f,g,h;
S x,y;
Local test = f(-1,1)*g(2);
Transform f addargs(1,last);
P;
.sort
id f(?x)*g(y?) = h(y,?x);
P;
.end
