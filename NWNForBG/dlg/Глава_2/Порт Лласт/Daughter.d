// ����-����� ���� ������� ������� ���

BEGIN ~DAUGHTER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����� ���� � ����� �������� �����������. ���� � ��� �� ����� ���������� ���, ��� � ����������� �� ���.~
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~� ��� � ������ ����� ��������� �����������?~ GOTO 2
  IF ~~ THEN REPLY ~������, ��� ���� �������.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������... � ������ �� ��� ����� ����?~
  IF ~~ THEN REPLY ~����� ��������� �������, ���� ���������� � ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ����� �������, ��� ��, ������ � ���� ������?~ GOTO 4
  IF ~~ THEN REPLY ~�� ����� �� �� ������ ��� ����� ��������� �����?~ GOTO 5
  IF ~~ THEN REPLY ~� ��� ���-����� �����.~ GOTO 6
  IF ~~ THEN REPLY ~�����, ����� � �����.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~��� ���������� � ��� ���, ��� ������� ���� ���� � ������ ������. ������ ����� �����������.~
  IF ~~ THEN REPLY ~��� ����� �������?~ GOTO 8
  IF ~~ THEN REPLY ~����-����? ��� ���?~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.1.2
  SAY ~�� ��� ����� ��������, ��� ��� �������� ���� � ���� ��������! �� ������, ��� �� ������� �� ��������� � ���� ������ � ����� �� �����. ������������, ��� ��������, ��� �����. ���� �� ������ ��������� ��� �������, ����� ��� � "����� �����".~
  IF ~~ THEN REPLY ~��� ����� �������, ��� ��, ������ � ���� ������?~ GOTO 4
  IF ~~ THEN REPLY ~�� ����� �� �� ������ ��� ����� ��������� �����?~ GOTO 5
  IF ~~ THEN REPLY ~� ��� ���-����� �����.~ GOTO 6
  IF ~~ THEN REPLY ~�����, ����� � �����.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~�, ������ � ������ ����������� ����-������. ������ �� ����� ������� ������� ���� ���� � ������� ������, ����� ����������, �� ��� ��� ������...~
  IF ~~ THEN REPLY ~��� ����� ������ � ��� �� �����?~ GOTO 9
  IF ~~ THEN REPLY ~������? ��� ���? ��� ��?~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 4.1.2
  SAY ~�� �������������� ��������� ���������, � ���� ���� ������� �����, � ������. �� ������ �������� ���������� ������� ������� � ���� �����. �� ��� ������� ��� ��� � ���� �� ������, �� ���-���� ����� � ��� �������. �� ������� ������ � ���������� ������, ��� ������� �������. ��������, ��� ��� �����. � ���� ���� ����� ���-�� �� ���� � ������, �� ��� �� ���������� ������ ���.~
  IF ~~ THEN REPLY ~����� ��������� �������, ���� ���������� � ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ����� �� �� ������ ��� ����� ��������� �����?~ GOTO 5
  IF ~~ THEN REPLY ~� ��� ���-����� �����.~ GOTO 6
  IF ~~ THEN REPLY ~�����, ����� � �����.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~��� �� �����?~
  IF ~~ THEN REPLY ~��� � ���� ����� �������?~ GOTO 10
  IF ~~ THEN REPLY ~��� � ���� ����� ������� � ����������� ��� �������� ��������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� ���� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~�����, � �����.~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~"���� �����", ��� ������������ ������� � ������, ��� �� ��� � ��������. ��� ��� �������, �� ������ ������ ����� �������... ���� �� �����, ����� � ���� ����.~
  IF ~~ THEN REPLY ~��� � ���� ����� ������� � ����������� ��� �������� ��������?~ GOTO 11
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~�����, ����� � �����.~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~"���� ����� ����, ������, ������ "���������� ����������", ��� � ������ ������. � �� ����� ���������� � ����������, �� � ���� ����������� ���� ��, ��� �� �����.~
  IF ~~ THEN REPLY ~��� � ���� ����� �������?~ GOTO 10
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~�����, ����� � �����.~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~���� �� �����?~
  IF ~~ THEN REPLY ~� ����-������ ���� �������� ��� �����, � ������� ����� ����������?~ GOTO 12
  IF ~~ THEN REPLY ~�� ������, ��� ��� ����� ����������?~ GOTO 13
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~�����, ����� � �����.~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~����� ���� �������. �� � ���� �� ������-�������. �������, ������ ����� ���� ����� ��� ���.~
  IF ~~ THEN REPLY ~�� ������, ��� ��� ����� ����������?~ GOTO 13
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~�����, ����� � �����.~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~�������. ������ �������� ���� �� ��������� �������, � �� �������� ���... ��� ��������, ��� ���� ���� ������ ���� �����, ����� ���������, ���������� � ��� �����.~
  IF ~~ THEN REPLY ~� ����-������ ���� �������� ��� �����, � ������� ����� ����������?~ GOTO 12
  IF ~~ THEN REPLY ~� ���� �������� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~�����, ����� � �����.~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ��� �������� � ������������. ��� ������� � ���������� ���� ������������ ����. ��� ��� �� ��������. ���� ������. �� ����������. ���������, ��������, ������������, ���� �������� �����, ��� ��. ��� ������, ��� ��� �� ����������� ������� �� ������. ���� ��� �������� �� ����������, �� ��� �������� ��, ����� ��� �������� ���������.~
  IF ~  RandomNum(2,1)~ THEN REPLY ~��� ����� ���������?~ GOTO 14
  IF ~  RandomNum(2,2)~ THEN REPLY ~��� ����� ���������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~������, ��� ���� �������.~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1
  SAY ~��� ����� ���� �������, ������� �� ����� ���� ��������� ���, ��� ��� ���������. �� �����-������ �� ������� ����������. ��� ��������� � ������ � ������� � � ������ �������� ������, � ����� �� ������� �������� � ����-�����.~
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~������, ��� ���� �������.~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.2
  SAY ~� � ���� �� ��� �������� ���? ������ �� ��� �� ����� �� � �� ��������? ��� ���-�� �����. ��� ����������, ��� ��� ����� "�����-����� ����".~
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~������, ��� ���� �������.~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,1)~ THEN BEGIN 16 // from:
  SAY ~���. � ��� ����������� �� ����� ������ ���, ��� � ������ ��������� �����������, ������� ��������� ����. ���� �� ������?~
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~� ��� � ������ ����� ��������� �����������?~ GOTO 2
  IF ~~ THEN REPLY ~������, ��� ���� �������.~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,2)~ THEN BEGIN 17 // from:
  SAY ~�� � ������ ������� �� ���������� ������� ����� ������ ��������� �����������, ������� ��������� ����. ���, �� ������� ����, ��������. �� ��� ��� �����.~
  IF ~~ THEN REPLY ~�� ����� �� �� �������� �� ��������� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~� ��� � ������ ����� ��������� �����������?~ GOTO 2
  IF ~~ THEN REPLY ~������, ��� ���� �������.~ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: Farmwif3 1
  SAY ~� � ��� � ���������� ��������� ����, ����.~
  IF ~~ THEN EXTERN ~FARMWIF3~ 7 
END

IF ~~ THEN BEGIN 19 // from: Farmwif3 1
  SAY ~���, �� ����������!~
  IF ~~ THEN EXTERN ~FARMWIF3~ 8 
END
