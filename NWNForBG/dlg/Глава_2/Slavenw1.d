// ��� �����������, ��� ����� - ���, �������

BEGIN ~SLAVENW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~���, ����������, �� ���� ������! � ������!~
  IF ~~ THEN DO ~SetGlobal("SlaveSurrenders","LOCALS",1)~ GOTO 1
END

IF~~ THEN BEGIN 1 // from: 0.1
  SAY ~� �� ����, ��� ����������. ��� �? ��� ��� ������?~
  IF ~ ~ THEN REPLY ~� ��� �� ��������? � ������ �� ����� �� ����?~ GOTO 2
  IF ~~ THEN REPLY ~��� ��?~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~�... � �� �����, ��� ����� �� ����. � ���� �� ����, ��� �� � ��� ��. ���������, ��� � ����� - ��� ��� � ��� ����� ���, ������� ������, ��� �� ��������� �� ����� ����� ���������. � ���������� �� ���������� �������� � ���� �������, �� � ������� ������ ��������. ��������� �� �������� ������� �... � ������... �������, ��� ���� �������. ��, �����, ���������� �������.~
  IF ~ ~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~��� ���������, ��� � �����. ������ � ������� � ������, ��� �� �������� ����, ���� �� � ��������, ��� � ����� ������. ��� ��� ����� �������.~
  IF ~ ~ THEN REPLY ~�� ���, ������ �� ������� � ���, ��� ���� ���������?~ GOTO 5
  IF ~~ THEN REPLY ~������� ��� ������ ���� �������� � ���, ��� ��������� �� ����, ��� �� ����� � ����.~ GOTO 6
  IF ~ ~ THEN REPLY ~�� �����, �������� ������ ����������.~ GOTO 7
  IF ~~ THEN REPLY ~��-�����, �� ������ ������ ����. ����, �����!~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~� �������� �����, �... ��... �� ���� � ���� �����������? � �� ����� ����� �����.~
  IF ~~ THEN REPLY ~��, ��� ��� ����� ���. ��� ����� �� ����� �� ����?~ GOTO 2
  IF ~~ THEN REPLY ~� ����� ����� �������. ���� ���� ������ ������, ������ ��� �������� �� ����.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~��... ���, � ������ �� �����, ������.~
  IF ~~ THEN REPLY ~������� ��� ������ ���� �������� � ���, ��� ��������� �� ����, ��� �� ����� � ����.~ GOTO 6
  IF ~ ~ THEN REPLY ~�� �����, �������� ������ ����������.~ GOTO 7
  IF ~~ THEN REPLY ~��-�����, �� ������ ������ ����. ����, �����!~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~� ����������, ���� ������ � �� ���� �������. � �� �����-�� ����� �����.~
  IF ~~ THEN REPLY ~�� ������� ���-������ � ���, ��� ��������� � ��������� � ����?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������� ��������� �������. �� �� ������, ��� � ���� ���������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �������� � ������ �� ����� ������. ��� �� � ��� ������?~ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~�������. ����� ���, ���.~ ~�������. ����� ���, ����.~
  IF ~~ THEN DO ~ForceSpellRES("SLAVENW4",Myself)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~� ��� ������ �� ������.~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6 1
  SAY ~��� �� � ��� ����� ������������. � �� ��� � ���� ����������, �� ��� ���������. ��� ���� ������ ���������� ���������. � ������ ������ � ��� � �� �����.~
  IF ~~ THEN REPLY ~��� ������� ��������� �������. �� �� ������, ��� � ���� ���������?~ GOTO 10
  IF ~~ THEN REPLY ~��� �������� � ������ �� ����� ������. ��� �� � ��� ������?~ GOTO 11
  IF ~ ~ THEN REPLY ~�� �����, �������� ������ ����������.~ GOTO 7
  IF ~~ THEN REPLY ~��-�����, �� ������ ������ ����. ����, �����!~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 6 2
  SAY ~�� ���� �� ��������� �������. ��������, ���� ������� �������� � ���� �����, �� ��������, ���� ��� ����� ��, ����� ��� �, �� ����� � ������� �� ����.~
  IF ~~ THEN REPLY ~�� ������� ���-������ � ���, ��� ��������� � ��������� � ����?~ GOTO 9
  IF ~~ THEN REPLY ~��� �������� � ������ �� ����� ������. ��� �� � ��� ������?~ GOTO 11
  IF ~ ~ THEN REPLY ~�� �����, �������� ������ ����������.~ GOTO 7
  IF ~~ THEN REPLY ~��-�����, �� ������ ������ ����. ����, �����!~ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 6 3
  SAY ~� �������� ������ ��� ���. ��� ����� �������� ������ ���������, �� �� �����-�� ����� ����������� � ������. ����� �����-�� ����� � ���, ��� �����-�� ��� ���� ���������, �� �������� ����� ���������. ��� ���, ��� � ��� ��� ����.~
  IF ~~ THEN REPLY ~�� ������� ���-������ � ���, ��� ��������� � ��������� � ����?~ GOTO 9
  IF ~~ THEN REPLY ~��� ������� ��������� �������. �� �� ������, ��� � ���� ���������?~ GOTO 10
  IF ~ ~ THEN REPLY ~�� �����, �������� ������ ����������.~ GOTO 7
  IF ~~ THEN REPLY ~��-�����, �� ������ ������ ����. ����, �����!~ GOTO 8
END
