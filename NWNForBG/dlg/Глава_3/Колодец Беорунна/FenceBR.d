// ������� �������� ���_1_���� �������������� �������� ������� ��������

BEGIN ~FENCEBR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY ~�� ���� �� ����� �� ������, ������ ��� � ���� ����.~
  IF ~~ THEN REPLY ~� ��� �� ����� �������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ����?~ GOTO 2
  IF ~~ THEN REPLY ~� ������ ��� ������������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ����� ������, ��� ���� ��� �� ��������! � ���� ���� �������, ������� ����� ��������� ��� �����.~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~���, �������.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������� � ���� �����, �� ������ ������ �������. � ���� ����� ���-����� ������� ������������. � ����� ������, ��� ���� ��� �� ��������! � ���� ���� �������, ������� ����� ��������� ��� �����.~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~���, �������.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��, ��������, <SIRMAAM>. �������� �����. �� ���� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~��� �� ��� ����, � ����, � ���� � ������.~
  IF ~~ THEN DO ~StartStore("FenceBR",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~��, �����, ��� ����.~
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 8
  IF ~~ THEN REPLY ~� ������ ���~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~���� �� �� ������������, �� ���� ����� ����. � � ���� ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~�������� �������� ��� ������ ����� ���. ��� ����� ��� ���� - ������� ���.~
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 9
  IF ~~ THEN REPLY ~� ��� ��������, ��� ��� ������������ ����� ������� ��� � ��������.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~� ����, �� ������ ����� ��� �� ������, ��� ���? � ���� ��� ������� ��� ������ ���������, �� ��� ���, ������ �� ����� ����������, ��� ���?~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����������?~ GOTO 7
  IF ~~ THEN REPLY ~� �����.~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~��� �������� �������� ����� �������� � �������������, ��� ������ ����� ����� ���������... ��� ��� ���� � ���� ������������, ���� ���������, � ���� � �����.~
  IF ~~ THEN REPLY ~� ��������, ��� �� ������ ��� ����������.~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 8
  IF ~~ THEN REPLY ~� �����.~ GOTO 6
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN BEGIN 10 // from:
  SAY ~� �� ������-�� ��� ������ � ����� �� �������������. ��� �������� �����, ������� ������� � ����� ���� ������� ������.~
  IF ~~ THEN EXIT
END

