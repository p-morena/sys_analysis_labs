display("������� �������")
 A=[4 -2 3; 2 -1 2; 3 5 -1]
 display("����� ����� �������� �������, �=0 ���� ������� ���������")
 [U, P] = chol(A, "upper")
 display("����� ��� �������� �������")
 [L, P] = chol(A, "lower")
 display("��������: B=U'*U"); B= U'*U
display("��������: C=L' * L"); C=L * L'