##Приклад №1 з функцією свого варіанту
clc, clear all; more off; 
function [z, df]=func(c, x, y) 
 if (nargin==2) 
 z=c(1)*x.^2 - c(2)*x;
 endif 
 if (nargin==3) 
 z=c(1)*x^2 + c(2)*y.^2 - c(3)*(x.*y); 
 endif 
 if (nargout==2) && (nargin==2) %градіент 
 df(1)=2*c(1)*x(1) - c(2)*x(2);  
 df(2)=2*c(2)*x(2) - c(3)*x(1); 
 endif 
 z=-z; 
endfunction 

c = [-2 -1 1]; x = [-7 7];%початкові зачення 
g = 0.2; %постійна кроку 
d = 0.00001; %похибка 
k = 1; kmax = 100; %лічильник ітерацій 
x1t = [x(1)]; x2t = [x(2)]; %проміжні точки 
xt = [x(1), x(2)]; 
%основний робочий цикл 
do 
 [temp, gr] = func(c, x); %спуск за першою координатою  
 x(1) = x(1) + g*gr(1); 
 xt = [xt ; x] 
 [temp, gr] = func(c, x); %спуск за другою координатою  
 x(2) = x(2) + g*gr(2); 
 xt = [xt ; x]; 
until (norm(gr,'fro') <= d || ++k > kmax) 
xx = linspace(-20,20); yy = linspace(-20,20); 
[X, Y] = meshgrid(xx, yy); Z=func(c, X, Y); 
colormap (gray); contour(X, Y, Z, 20, 'fill', 'off','linewidth',5); hold on; 
## нанесення точок 
plot(xt(:,1), xt(:,2), '.d-k', 'LineWidth', 3.25, 'markersize',12); text(x(1) + 0, x(2)- 11, strvcat(['x1 = ' num2str(x(1))], ['x2 = ' num2str(x(2))], ['k = ' num2str(k)]), 'FontSize', 18, 'backgroundcolor', 'white'); 
xlabel('X'); ylabel("Y") 
set(get(gca,'ylabel'),'rotation',0) 
set(gca, 'linewidth', 2.5, 'fontsize', 24, 'gridalpha', 0.75, 'FontName', 'Times New Roman', 'FontAngle', 'Italic'); hold off
