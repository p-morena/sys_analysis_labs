%обчислення коеф. кореляції
%середні значення

X=[1 2 3 4 5];
Y=[7.2 5.9 4.9 4 3.2];
n=5
x=1:5

y=a(2)*x+a(1);

plot(X, Y, 'ok', "markersize",16, "linewidth", 2.5,
x,y,'--k', 'linewidth',2.75)

xlabel('X'); ylabel('Y'); grid on;

set(gca, "linewidth",2, "fontsize", 16, 'gridalpha', 0.75)
h=legend('data', '{\ita}_{2}{\itx}+{\ita}_{1}');
legend(h, "location", "southeast");
set(h, "fontsize", 16);

mean_X= sum(X)/length(X)
mean_Y=sum(Y)/length(Y)

%чсельник
nom=sum((X.-mean_X).*(Y.-mean_Y));
%знаменник
denom = sum((X.-mean_X).^2)*sum((Y.-mean_Y).^2);

%коеф. кореляції
r=nom/sqrt(denom)

%t-критерій Ст'юдента
t=r*sqrt((n-2)/(1-r^2))