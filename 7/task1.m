##Графік за допомогою contour()
clc, clear all; clf; delete(gco()) 
## підготовка графічної структури 
x = y = linspace (-3, 1.5, 9)'; 
[x, y] = meshgrid (x, y); 
## function to plot 
f = @(x,y)0.26*(x.^2+y.^2)-0.48*x*y; 
z = f(x,y); 
[c, hsp] = contour(x,y,z); 
clabel(hsp, 'fontsize', 16); 
title('Графік f(x,y)=0.26(x^2+y^2)-0.48xy - \rm{{contour}()}','fontsize',  16); 
