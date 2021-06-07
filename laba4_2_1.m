##Перевірка гіпотез за лінійним МНК
clear all; clc; delete (gco())

X0=[4,70; 5.8; 6.9; 8.1; 9.15; 10.45; 11.45; 12.78; 13.35; 14.71];
Y0=[14.7; 13.25; 11.65; 11.01; 10.55; 9.91; 9.52; 9.05; 8.9; 8.45];

Y=1./Y0; X=1./X0; n=length(Y);

x=[n, sum(X); sum(X), sum(X.^2)];
b=[sum(Y); sum(X.*Y)];

##Знайдемо розв'язок систем рівнянь
a=x\b
printf("Рівняння прямої: y=%f*x+%f\n", a(2), a(1))
##Побудова графіка лінії y=a2*x+a1,
##та експерементальних точок в одній графічній області
subplot(2, 1, 1)

x=linspace(0.1, max(X));
y=a(2)*x+a(1);

plot(X, Y, 'ok', "markersize", 16, "linewidth", 2.5, x, y, '--k', 'linewidth', 2.75)
xlabel('X'); ylabel('Y'); grid on;

set(gca, "linewidth", 2, "frontsize", 16, 'gridalpha', 0.75)
h=legend('data', '{\ita}_{2}{\itx}+{ita}_{1}')
legend(h, "location", "southeast");
title("Лінійний МНК"); set(h, "fontsize", 16);
##Обчислення коефіцієнта кореляції
mean_X=sum(X)/length(X);
mean_Y=sum(Y)/length(Y);
nom=sum((X.-mean_X).*(Y.-mean_Y));
denom= sum((X.-mean_X).^2)*sum((Y.-mean_Y).^2);
r=nom/sqrt(denom);
t=r*sqrt((n-2)/(1-r^2));

printf("Коєфіцієнт кореляції r=%f, критерій Ст'юдента t=%f\n", r,t)

####перевірка результату
f=@(x, a, b) 1./(a./x+b);
x=linspace(0.1, 10); y=f(x, a(2), a(1));
subplot(2, 1, 2)

plot(X0, Y0, 'ok', "markersize", 16, "fontsize", 2.5, x, y, '-k', 'gridalpha', 2.75)

xlabel('X'); ylabel('Y'); grid on;
set(gca, "linewidth", 2, "fontsize", 16, 'gridalpha', 0.75)
h=legend('data', '1/({\ita}/{\itx}+{\itb})');
legend(h, "location", "southeast");
title("Результат"); set(h, "fontsize", 16);
##перевірка результату
y=Y0; Y=f(X0, a(2), a(1));
reshape(Y, 1, length(Y));
err=sum((y-Y).^2)
R=sqrt(1-sum((y-Y).^2)/sum((y-mean(y)).^2))












