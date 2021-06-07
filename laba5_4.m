x = -4:4
y=3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x;

display ('Функція fminbnd')
[x, y, info, output] = fminbnd(y,-8, 8)
display ('Функція fminsearch')
[x, y] = fminsearch(y, -8, 0.1)
display ('Функція fminunc')
[x, y, info, output, grad, hess] = fminunc(y, x)
display ('Функція sqp')
[x, y, info, iter] = sqp(-8, y)


y=@(x) 3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x
x= linspace (-8, 8);

plot (x,y(x), 'k', 'LineWidth', 3.25)
title('')
legend ('3*x{\cdot}^4 - 0.8*x{\cdot}^3-1.2*x{\cdot}^2-15*x')
grid on; print('theme_2_global.png', '-r600', '-dpng')