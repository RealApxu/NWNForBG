// ���� ��� ������ �����   ������� ��� �������-������� ����� ������. �� ��������� ����������, ��� ��� ��������� ����� �������� ���������� �������, ��� ������ �����������..
// ���� � ��������� 17 �������

BEGIN ~CITIZEN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����� �� �����? ���� �� �� ����������� �������� �������� ������ �� ����, ���� �� ��� ��� ���-�� ����� ������������ � ���� ����.~
  IF ~~ THEN REPLY ~� ������� � �������� ���������. ��� ����� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ����� ������ ���� ��������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ���������� ���, ���� ����. � ���, ���� ����.~ GOTO 3
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ��������? ������ ���������� �� ���� �����������? ��� �� ������ �������? �� �� ������ �������� ���� ��� �����. �� �� ������ ���������, ������ ��� ����������. ��� ������ � �� �������... ������. � ���� ����� ���� ���� ��������� �� ����, ���������� ������ ���������, ��� � �� �������� ������. ������ ��� ����, ��� ����� �� ���������. �� �����, ��� ��� ��� �� ����� ��������.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~� ����� ��� ��� �������� �� ���� �������? ������� ������� ����, � � ���� ���������� ���������� � ���� ����?~
  IF ~~ THEN REPLY ~� ������� � �������� ���������. ��� ����� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ���������� ���, ���� ����. � ���, ���� ����.~ GOTO 3
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~� �� ���� ���������� ���... �� ������ �� �������, ������ �� ��������� � ��������� ���, ����� ��� �� ��� ����� ��� ����� �����.~
  IF ~~ THEN REPLY ~���� �� ����������, ���� �� ������� ��������� ������ ��� ��� ���� ������?!~ GOTO 9
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~������. ��� ������ ����� ����� ������ ����, ��� ������ � ���� ������� �� ���, ����� ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY ~���� � ��� ���� �������, ������� ��. � ����� �����, ��������� ���������� �������, ��� ���-������ ����� �����.~
  IF ~~ THEN REPLY ~��� ����� ���������� � �������� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��������� ��� ������ ����?~ GOTO 7
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~���������� � �����, ���? ��� �� ������ �����? ��� ����� ����� ���� � �������?~
  IF ~~ THEN REPLY ~���� ���������� ����� � ���� ������?~ GOTO 10
  IF ~~ THEN REPLY ~����� ������ ����� �� ������ � ���� ������?~ GOTO 11
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~�������� �������. �� ��� �����, ��� ��������� �������� �����. ��� ������... ��� ������ ������ ����...~
  IF ~~ THEN REPLY ~��� ������ �� ������������� � ����������?~ GOTO 27
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY ~����� ��� ����� ��������? � ���� � ����, �� ����������� �� ���� �����, ��� ����� ��� ���-�� ������, � � ������ �� ����...~
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 13
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~�� ������... ��? ����������, � ���� ����� ������ �� ��������. ��� � ���� ���������? ��� � ������?~
  IF ~~ THEN REPLY ~����� ��� ��� ���� ������, � �� �� � ���� ����. � ����� � ������, ��� ��� ������ � ���.~ GOTO 15
  IF ~~ THEN REPLY ~��, ����������, �����. ������� ���������.~ GOTO 16
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY ~� ���� ������� ��������� ����, ��� �� ���� ������ ������ ������� �����. ��� �� ����� ���-�� ������?~
  IF ~~ THEN REPLY ~������� ��� �������.~ GOTO 17
  IF ~~ THEN REPLY ~�����, ��� ����� ������� �������.~ GOTO 18
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY ~������ ���� - ��� ��, ��� �� ��� ��� ���. � ��� �� ����� ����������, ��� ���������� �������, ���� "�������� ������" �� ���� ������ �������� ������.~
  IF ~~ THEN REPLY ~��� ����� "�������� ������"?~ GOTO 19
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY ~���� � ��� ���� �������, ������� ��. � ����� �����, ��������� ���������� �������, ��� ���-������ ����� �����.~
  IF ~~ THEN REPLY ~��� ����� ���������� � �������� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��������� ��� ������ ����?~ GOTO 7
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY ~�������, ���-�� ��������� � ������� ����� ����, �� ������ ��� ��� �����������. ������ � ����� ������ ���������� �� ����������. ��, ����� ����, ����������.~
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY ~��� ����� ����. �����, ��� � ��� �� ����, ��� ��� ������������, � ���� ������... � �� ����. ���-�� � ������� ����� "�������� �������". ������� "�������� �����" ������� �����-�� ����, � ������� ��� �������� ������. ���� ��� ����������� ������� �� ����.~
  IF ~~ THEN REPLY ~������ �� ����� ������� ��������.~ GOTO 20
  IF ~~ THEN REPLY ~������� ���������� ����?~ GOTO 21
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY ~���! ����������... � ���� ����� ���, ��� � ���� ����... ����������, �����... ������ ����... �� � ���... (�����������!)~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)GivePartyGold(17)ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY ~�����. � �� ������ �������, ���� ���� ����� �����, �� ���� ���� ���� ��� �������, ������. � ����� ����������!~
  IF ~~ THEN REPLY ~������ �� ��������� ��������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~���� �� �� ���, ���� ���� �������, ������� ����� ���� � �������� ����� ������. ��� ������ ����� �����, ������� � ����� �� �����. ����������� ��������� �������, ��� ����� ��� ������� ����... �����, � ������� �� ������������.~
  IF ~~ THEN REPLY ~��� ����� ������� �������?~ GOTO 18
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~���������-�-�������. �����, ��� ��� �������. ���� ��� �� �������� ����� ��, ��� ��� �������. ������ ��� ���.~
  IF ~~ THEN REPLY ~���� ��� ������� ��� �������?~ GOTO 17
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~����������� � ��� ���������, �� ����� ���� ������� ����� ������������, ������� ������ ���� �������. "�������� ������" ������ �������� �������. ��� ������� ����� ��� ��������.~
  IF ~~ THEN REPLY ~��� ��� ������?~ GOTO 22
  IF ~~ THEN REPLY ~� ��� � ��� �������?~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY ~��� ��� �������... ��� ����� ������. �� ��� � "������� ������", � �� ��� ��� ���� �� �����. �� �������, ��� ��... ��... �� ������� � �������, ��� ����� ������ ������������ ������. � � ��� ������ ������ �� �����. � � ��� ����� ����.~
  IF ~~ THEN REPLY ~������� ���������� ����?~ GOTO 21
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY ~� ������� ����. �����, �������? �� ������ ������� ������. ����� ��������, ��� �� �����, ����� ��������� �������� �� ����. ��� ����� ����� ������� ��-�� ������, ��� ���, ��� �� ��� �� �����������, ���� �������. �����, ��� ������� � � �����, � �� ����.~
  IF ~~ THEN REPLY ~������ �� ����� ������� ��������.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY ~�� ����� �� ��� ����������, ������ ����� �� ����, ���� ��������. ��� �������, ��� �� � ����� �� �������. ���� ������ � ������������ ������ ����� ���� �����.~
  IF ~~ THEN REPLY ~� ��� � ��� �������?~ GOTO 23
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY ~������� "�������� �������" ���� ������������ ��������� "�������� �������". �������, �� ������ � ����� ������ �������. � �� ���� �� ������� �����. �� ������ ����� ��������� �� �������� �������. ��� �� ����������� ������, ����� "�������� ������" ����������. �� ������ ������, �� ��� ������.~
  IF ~~ THEN REPLY ~��� �������� ���� �������?~ GOTO 24
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY ~�� ���� ��� �������. � ������ ����, ����� ����� �����, � ��������� ���� �� �������, ���� ������.~
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 25 // from:
  SAY ~����� �� ���������? ��� � ���� ��� �������? � ������ ��� ������ �� ����.~
  IF ~~ THEN REPLY ~��� ����� ���������� � �������� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��������� ��� ������ ����?~ GOTO 7
  IF ~~ THEN REPLY ~�� ������� ������ ���������? �����-������ �������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 26 // from:
  SAY ~����������, �������� ����. ��� ����� �� ��� �����. �� ���� ��������� ��� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 7.1
  SAY ~� ����, ��� ����� ������ �� ������. ���������... �����... ��� ������ ����, ����� �� �����. ������ �������� ��������... ���� ��� ��� ����������...~
  IF ~~ THEN REPLY ~���� ��� ������.~ GOTO 12
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

