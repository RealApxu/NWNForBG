// ����� ������������  

BEGIN ~MERCHNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~��, ����������! � ���� � ������� ����� ������� � ������, ������ �����? ��� ������, ������� ������, ������ ���!~
  IF ~~ THEN REPLY ~��� ����� ������ ��������� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���, � ���� ��� ���������� � ���� ������.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������ ������ ������������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�������� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~��������, ����� �� ���� ������. ����������� �� ���� ����-������ �������.~
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~��� ����� ���-�� � ����. �������� ��������, � �������� - �������. �� �����, ��� ��� ����, ��� ��������.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������ ������ ������������.~ GOTO 3
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~� ��� � ����� �������? ��� ������ � ����������-�� �� � ���. ����������� ������ ����, ��� ������ ����.~
  IF ~~ THEN REPLY ~��� ����� ���������� � ������ ������ ������������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

