1 ' ��������� ���������� ����� ����
2 '             k    k        k
3 '        S = x  + x  +...+ x  ,
4 '             1    2        n
5 ' ��� x - ����� ��������� ��������������� ��������� n-�� �������
6 '      i        
7 '�������� ������� ������������ ������ ������� �� �������� �������,����������� � �����: �.�.������, �.�.����������� "������ �������". �.:���-��, 1962, ��.III, 3, �.245.
11 INPUT "������� ������� ����������";N:INPUT"������� k";K
15 DIM A(N) '������ ������ ������������� ���������!
18 PRINT"������� ������������ ���������"
20 FOR I=0 TO N:INPUT A(I):NEXT '����, ������ �(N) ������!
40 DIM SIG(N):FOR I=1 TO N:SIG(I)=(-1)^I*A(I)/A(0):NEXTI
80 IF N>=K THEN DIM S(N):A1=N:A2=K:GOSUB 200 ELSE DIM S(K):A1=K:A2=N:GOSUB 300
110 PRINT S(K):END
200 '����� ������ ������������ 1 �����
205 S(1)=SIG(1):FOR J=2 TO A2:S(J)=(-1)^(J+1)*J*SIG(J)
230 FOR I=1 TO J-1:S(J)=S(J)+(-1)^(J-I+1)*S(I)*SIG(J-I)
250 NEXTI:NEXTJ:RETURN 'WW�
300 '����� ������ ������������ 2 �����
305 GOSUB 200  '��� ���,  � � � � � � � �  �����������!
360 FOR J=N+1 TO K:S(J)=0
380 FOR I=1 TO N:S(J)=S(J)-(-1)^S(J-I)*SIG(I)
400 NEXT I,J:RETURN 'WW�
