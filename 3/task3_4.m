## побудова двух графіків

clf; clear all

x= 1:5; y1=sin(x); y2=exp(x-1);

##формування графіка
[ax h1 h2] = plotyy(x, y1,
x-1, y2,
@plot, @semilogy);

##параметри осей координат
xlabel("X"); ylabel(ax(1), "y_1"); ylabel(ax(2), "y_2");
set(ax,{'ycolor'}, {'black';'black'} )
set(ax, "linewidth", 2, "fontsize", 16, 'gridalpha', 0.75)

##параметри ліній на графіку
set(h1, "linewidth", 5.75, 'color', 'black', 'linestyle', ':')
set(h2, "linewidth", 5.75,  'color', 'black', 'linestyle', '-')

grid on
print -dpng plotyy_example