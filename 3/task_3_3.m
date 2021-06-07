## побудова графіка

clear all; delete(gco); clc
subplot(2, 1, 1); %перший графік
a=1; b=2; c=3;
x= 1:5
##анонімна функція
f=@(x) a+b./x+c./x.^2;
hf=plot(x, f(x));

set(hf, {'LineWidth'}, {'3.25'} )
set(hf,{'Color'}, {'black'} )

title('y= a+b/x+c/x^2');

xlabel('X');
ylabel('Y');

set(gca, "linewidth", 1.5, "fontsize", 16, 'gridalpha', 0.75) 
grid on; 


subplot(2, 1, 2); %другий графік
##анонімна функція

z=@(x) sqrt(1+x.^2)./(x.-1);
x= 1:5

hf = plot(x(z), '-k');
set(hf, {'LineWidth'}, {'3.25'} )
set(hf,{'Color'}, {'black'} )
title('y=\surd(1+x^2)/(x-1))');
xlabel('X');
ylabel('Y');
set(gca, "linewidth", 1.5, "fontsize", 16, 'gridalpha', 0.75) 

