display("������� �������")
A=[4 -2 3; 2 -1 2; 3 5 -1]
 display("����� LU-������������, �=0 ���� ������� ���������")
[L, U, P] = lu(A)
display("��������: B=L*U"); B= L*U
display("��������: C=P' * L * U"); C=P' * L*U