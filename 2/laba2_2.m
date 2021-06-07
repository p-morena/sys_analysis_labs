##символьные переменные 
 
 syms x y z 
 display ([x y z])
 
 display("Система уравнений")
 
 eqn1 = 4*x - 2*y + 3*z == 2
 eqn2 = 2*x - 1*y + 2*z == 8
 eqn3 = 3*x + 5*y - 1*z == 7
 
 display("Решение")
 
 [x y z] = solve(eqn1, eqn2, eqn3)
 display("Проверка, все строки True")
 display("subs(eqn1)")
 subs(eqn1)
 
 display("subs(eqn2)")
 subs(eqn2)
 
 display("subs(eqn3)")
 subs(eqn3)
 