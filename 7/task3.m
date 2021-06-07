## Мінімум для функції за допомогою fminsearch
clc; clear all;  
pkg load optim; 

function cost = foo(x) %min=(1,1,1), f=3.0
x--; cost =sum(0.26*(x).^2-0.48*x); 
endfunction 
x0 = [-15; -15; -15]; %початкова точка
opt = optimset ('TolX', 1e-15, 'MaxIter', 1000);
[x, fval]=fminsearch(@foo, x0, opt); 
display("fminsearch");
display(x'); display(foo(x)); 
display(''); 