##побудова наборів даних на графіку
##очистка змінних та комнадного вікна
clc; clear
##набор даних

X=[1 2 3 4 5];
Y=[7.2 5.9 4.9 4 3.2];

##побудова графіка

plot(X,Y,'dk',"markersize", 18, "linewidth", 2.25)

##підпис осей
xlabel('X'); ylabel('Y');
grid on; 

##оформлення осей
set (gca, "linewidth", 2, "fontsize", 16, 'gridalpha', 0.75) 
h=legend('data ({\itY}_{0}^{1})',
'data ({\itZ}_{0}^{2})')

legend(h, "location", "southeast");
set (h, "fontsize", 22)
##збереження результатц у файлі формату png
print -dpng data_plot
 


