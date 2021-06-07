##Різні матричні функції
A=[1 2; 3 4; 5 6]

display("sum(A)"); sum(A)
display("sum(A, 2)"); sum(A,2)
display("sum(A, 1)"); sum(A,1)
display("sum(sum(A))"); sum(sum(A))

##

display("prod(A)"); prod(A)
display("prod(A,2)"); prod(A,2)
display("prod(A,1)"); prod(A,1)
display("prod(prod(A))"); prod(prod(A))

clear all; 
A=[1 2 3; 4 5 6; 7 8 9]

display("diag(A)"); diag(A)
display("diag(A, 1)"); diag(A,1)
display("diag(A, -1)"); diag(A,-1)

display("rot90(A)"); rot90(A)
display("fliplr(A)"); fliplr(A)

clc, clear; d=1:12; size(d)

display(d); display("size(d)"); size(d)

display("reshape(d, 4, [])"); d=reshape(d, 4, []);

display(d); display("size(d)"); size(d)









