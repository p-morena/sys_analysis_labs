##Графік за допомогою surf()
clc, clear all; clf; delete(gco()) 
function plot_setup(plot_handler) 
xlabel('X'); ylabel("Y"); zlabel('Z'); 
set(gca, 'linewidth', 1.75, 'fontsize', 16, 
'gridalpha', 0.75, 'FontName', 'Times New Roman', 
'FontAngle', 'Italic'); 
set(plot_handler, 'linewidth',2.5) 
set(get(gca,'zlabel'),'rotation',0) 
endfunction 
## підготовка графічної структури 
x = y = linspace (-3, 1.5, 9)'; 
[x, y] = meshgrid (x, y); 
## function to plot 
f = @(x,y)0.26*(x.^2+y.^2)-0.48*x*y; 
z = f(x,y); 
hsp = surf(x,y,z); 
colormap("gray"); view(3); 
title('Графік f(x,y)=0.26(x^2+y^2)-0.48xy - \rm{{surf}()}', 'fontsize', 16); plot_setup(hsp) 
