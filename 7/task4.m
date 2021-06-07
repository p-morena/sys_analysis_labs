clc, clear all
f = @(x)0.26*(x.^2)-0.48*x; 
X= 0:0.1:3;
Y=0:0.1:3;
plot(X, f(X))
hold on
x=1.0; 
o=optimset('MaxIter', 100, 'TolFun', 1E-10);
[x,y,convergence,iters,nevs] = powell(f,x,o)
plot(x, y,'dk')