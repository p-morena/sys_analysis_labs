##побудова лінії регресії за допомогою МНК

clc; clear

n=5 %кількість експр. точок
%вихідні дані
X=[1 2 3 4 5] 
Y=[7.2 5.9 4.9 4 3.2] 

%визнач параметрів прямої
%складемо СЛАР та визнач невідомі а1 та а2
x=[n, sum(X); sum(X), sum(X.^2)];
b=[sum(Y); sum(X.*Y)];
%знайдемо розв'язок системи 
display(x); display("b'="); display(b');
a=x\b; display("a'="); display(a');


