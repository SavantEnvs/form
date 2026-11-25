CFunction f,g,h;
Local test = f(1,...,9) + g(1,...,9) + h(1,...,9);
Transform f cycle(3,7)=-1;
Transform g permute(3,...,7);
Transform h cycle(3,7)=+2;
Print;
.end
