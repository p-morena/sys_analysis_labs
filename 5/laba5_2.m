
clc, clear all
f=3*X.^4 - 0.8*X.^3-1.2*X.^2-15*X; % функція
X=-4:0.1:4;
plot(X, myf(X))
hold on
x=1.0; % початкова точка
o = optimset('MaxIter', 100, 'TolFun', 1E-10); % параметри
[x,y,convergence,iters,nevs] = powell (f,x,o)
plot(x, y, 'dk')