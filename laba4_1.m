X=[4,70; 5.8; 6.9; 8.1; 9.15; 10.45; 11.45; 12.78; 13.35; 14.71];
Y=[14.7; 13.25; 11.65; 11.01; 10.55; 9.91; 9.52; 9.05; 8.9; 8.45];

p3=polyfit(X,Y,3)
p4=polyfit(X,Y,4)
p5=polyfit(X,Y,5)
p6=polyfit(X,Y,6)
p7=polyfit(X,Y,7)

subplot (2,1,1)
plot(X, Y, 's',
X, p3,"linewidth", 1.75,X, p4,"linewidth", 1.75,X, p5,"linewidth", 1.75,
X, p6,"linewidth", 1.75,X, p7,"linewidth", 1.75)

xlabel('X'); ylabel('Y'); grid on

set(gca, "linewidth", 2, "frontsize", 16)
h=legend('data', '{\itp}^{(2)}({\itx}))',
                 '{\itp}^{(3)}({\itx})';
legend(h, "location", "northeastoutside");

set(h, "fontsize", 16);