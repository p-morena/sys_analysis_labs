 display ("Матриця коофициентов")
 A=[4 -2 3; 2 -1 2; 3 5 -1]

 display ("Столбик свободных элементов")
 b=[2; 8 ; 7]

 display("Решение x=A \ b")
 x = A \ b

 display ("Проверка norm(A*x-b)")
 norm(A*x-b)
 
 display("Проверка")
 b-A*x
 
 
 

 
 

 
 
 


 
 
 
 
 
 
 
 