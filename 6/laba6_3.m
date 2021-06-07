f = @(x) 3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x;
a=-7;
b=1;
e=0.1;
 
x = a:e:b;
y=3*x.^4 - 0.8*x.^3-1.2*x.^2-15*x;
plot (x,abs(y))
grid on; xlabel('x'); ylabel('y');
 
k = 0;
x = a;
while(abs(f(x))>e)
    x = x-(f(x))/(f(x));
    k = k+1;
end;
 
disp(sprintf('Answer: %g',x))
disp(sprintf('Number of iterations: %g',k))