
y=@(x) 3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x
x= linspace (-4, 4);

plot (x,y(x), 'k', 'LineWidth', 3.25)
title('')
legend ('3*x{\cdot}^4 - 0.8*x{\cdot}^3-1.2*x{\cdot}^2-15*x')
grid on; print('theme_2_global.png', '-r600', '-dpng')