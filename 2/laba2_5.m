display("������� �������")
A=[4 -2 3; 2 -1 2; 3 5 -1]
 display("����� QR-������������, �=0 ���� ������� ���������")
[Q, R, P] = qr(A)
display("��������: B=Q*R"); B = Q * R
display("��������:C = Q'*R*P' "); C = Q * R * P