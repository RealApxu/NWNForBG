// ���� ������ �������  ������, ���� ������� ������ � ������� �����. �� ������ ��������������� � ��������, �������, ��� ��� ����� � �� ��� ����.
// ��� Global("Follow","LOCALS",0) - �����, ��� Global("Follow","LOCALS",1) ����������

BEGIN ~NEYBOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~� ������ �� �����, �������. ������ ���� � ������...~
  IF ~~ THEN REPLY ~�� ������, ������ � ���� ������ ��� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ���?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~������ �� ��� ��� �� ����... ������ ���� ���� �� ����. �� ��, �, ���� ���� ������������ � ���� ����� �������... �������� ������... ��� ���� �����... ��-�.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~� ���� ������ ���. ���. ������ ���������� ������ �� ����. �� � ��� �����������... �� ��, �, ���� ���� ������������ � ���� ����� �������... �������� ������... ��� ���� �����... ��-�.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ��, �, ���� ���� ������������ � ���� ����� �������... �������� ������... ��� ���� �����... ��-�.~
  IF ~~ THEN EXIT
END

// ------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Follow","LOCALS",0)~ THEN BEGIN 4 // from:
  SAY ~���? ������ � �� ���������... ������... �... ������������. ��, �����.~
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~������� ����� ��������, ����� �� �� ������������ ����.~ GOTO 5
  IF ~~ THEN REPLY ~�� ����������� �� ������! ������ �� ����������� �����?!~ GOTO 6
  IF ~~ THEN REPLY ~� ���, �������, ��� ������? � �� ����, ��� �� ����������� �������� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~���? � �������... � ���� � ����... ��, ��������. � ������ ������� �������� ������� ������... � ���� � � ������ �� ���� ��������� ��� ����.~
  IF ~~ THEN REPLY ~����� ��� ����� ������?~ GOTO 7
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY ~��� ��� �������� � ������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~������������ ���-������ � ������ �����.~ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~� ��... �� ����... �� ���� ��� ��� ��������! ��� ������� ����� �� ����������! ��������, ��� �������� �� �����. � ������ ��� ������ ������. �� ���� �� �� �����, ��� ��� � ������ ����� ����.~
  IF ~~ THEN REPLY ~����� ��� ����� ������?~ GOTO 7
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY ~��� ��� �������� � ������� ����?~ GOTO 8
  IF ~~ THEN REPLY ~������������ ���-������ � ������ �����.~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~� �� ����, ��� ������ �������, ��� ��������� �� ���� ������������ �� ������� � ������� ����. � ������ ��������� ��� ��������� � ������... ��� ������� ������� �� ����������. ����� ����, ����� �� ������, ���� ���� ���������� ����� �����.~
  IF ~~ THEN REPLY ~��� �� ������ ��� ���������� ��� �������?~ GOTO 10
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ����� ������ ������.~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~�� �� ���� ������? ����� �� ������ ��� �����. � ��� ��, ��� �����. ���-�� ��� �����������, ��� ����� ����. � �� ����, ��� ������ �������, ��� ��������� �� ���� ������������ �� ������� � ������� ����. � ������ ��������� ��� ��������� � ������... ��� ������� ������� �� ����������. ����� ����, ����� �� ������, ���� ���� ���������� ����� �����.~
  IF ~~ THEN REPLY ~��� �� ������ ��� ���������� ��� �������?~ GOTO 10
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ����� ������ ������.~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY ~�, ��� �������. �� �� ����������. � ����� ����� �������. ��, ����� �������... ����������� � ��� �������...~
  IF ~~ THEN DO ~SetGlobal("Warning","LOCALS",1)RunAwayFrom(LastTalkedToBy(Myself),20)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~���, �? � �� ���� ���� ��� ����. ��� � ������� ����. ���������� ���� "�������� ������"... � ��� ������, ��� ��� ������� �������.~
  IF ~~ THEN REPLY ~��� �� ������ � ������� ����?~ GOTO 12
  IF ~~ THEN REPLY ~���������� ��� � �������� � � "�������� �������".~ GOTO 13
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ����� ������ ������.~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~�, ��� �������. �� �� ����������. � ����� ����� �������. ��, ����� �������... ����������� � ��� �������...~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutAuction","MYAREA",1)SetGlobal("Warning","LOCALS",1)EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY ~������ ������, ���� ��� �� ������ ������. ��� � �������� ����� ������ ������, ������ ��� ��������� ������ �����. ������ ����� ���� ���� ������ �� �������. � ��� �� ����� ����� ��������, ������� �� ���������� ������, ����� "�������� �������". �� ����� ������ �������. �������, ���� �� � ���� ���� ���������� �����, �����, ��� ������� �� ���-������ ������. � �� ����.~
  IF ~~ THEN REPLY ~���������� ��� � �������� � � "�������� �������".~ GOTO 13
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ����� ������ ������.~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY ~��, ������, ��� �������� ����� ���������� �����, ����� �������� ��������� ������. �� ������� � ����� ������������. � "�������� ������" - ��� ���... ������, �� ������� �����.~
  IF ~~ THEN REPLY ~�� ������� �����? ��� �� ������ � ����?~ GOTO 14
  IF ~~ THEN REPLY ~��� �� ������ � ������� ����?~ GOTO 12
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ����� ������ ������.~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~��� �, ��� ������� ������. ���� ������� �� ����� ������� �����. �������, �� ������ ������, � ��� ����� ������������. �������, ��� ������ ��������� ������ ����� ���. ������ ��� �����... �� ������ � ������ �� �����... � ������ ������ �� ����.~
  IF ~~ THEN REPLY ~��� �� ������ � ������� ����?~ GOTO 12
  IF ~~ THEN REPLY ~� �� ����� ������. ��� ��� ����� ������ ������.~ GOTO 11
END

