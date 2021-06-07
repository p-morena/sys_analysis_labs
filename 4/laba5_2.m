##оптимізація різними методами 
x = -4:4
y=3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x;

display ('Функція fminbnd')
[x, y, info, output] = fminbnd(y,-4, 4)
display ('Функція fminsearch')
[x, y] = fminsearch(y, -4, 0.1)
display ('Функція fminunc')
[x, y, info, output, grad, hess] = fminunc(y, x)
display ('Функція sqp')
[x, y, info, iter] = sqp(-4, y)
