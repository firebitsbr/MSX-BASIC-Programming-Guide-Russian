10 INPUT"������� ����� A% (�� ����� 16 �������� ����)";A%
20 IF A%<0 THEN H%=A%\256-1 ELSE H%=A%\256
25 L%=A%MOD256
30 PRINT RIGHT$("00000000"+BIN$(H%),8);" ";RIGHT$("00000000"+BIN$(L%),8)
