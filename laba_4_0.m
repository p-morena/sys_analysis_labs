clear all; clc
N=7; 
X0=[4,70; 5.8; 6.9; 8.1; 9.15; 10.45; 11.45; 12.78; 13.35; 14.71];
Y0=[14.7; 13.25; 11.65; 11.01; 10.55; 9.91; 9.52; 9.05; 8.9; 8.45];
b=zeros(N, 1); C = zeros(N, N);
#
for i=1:N
  for j=1:N
    C(i, j)=sum(X.^(i+j-2));
  end
  b(i) = sum(Y.*X.^(i-1));
end

printf("Вихіді матриці:\n")
display('X='); display(X');   display('Y='); display(Y');
display(C);  display('b='); display(b');
##Розв'язок
printf("Коефіцієнти полінома:\n"); p=C\b; (flip(p))'
printf("Поліном 7 степеня (polyfit):\n"); polyout(p)









