// ���� ���������� ���� ����������� ������, ������, �� �������� ����� ��������. ��� ����� �������� �������� ����� ����� ������� ������. �� ���� �������.

BEGIN ~FESTILIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~������ �������, �������?~ [FESTIL50]
  IF ~  PartyGoldGT(2)~ THEN REPLY ~��� ������� ������ ��� ���.~ DO ~TakePartyGold(3)~ GOTO 1
  IF ~~ THEN REPLY ~� ���������, � ������ �� ���� ��� ����. ��� ����� ����.~ GOTO 2
  IF ~~ THEN REPLY ~� ��������� �� �����.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, �� ��� �����������. ��� �������, ������� ����� ���� ������, �������� ����������. ����������, ������� ����� ���-�� �����. ������ ���� �� �������� ����������, ���� ���� ����������� ��. ��� ��� ��� ����? ��� �� ����� �� ����������� �����.~
  IF ~~ THEN REPLY ~� �����, ����� ������������ �������. ������ ������ ������� �� ����.~ GOTO 4
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~�� �� ������, ��� ������� � ������� ����?~ GOTO 5
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~������ ���� ����� ��� ������?~ GOTO 6
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~������ ���� ����� ��� ������?~ GOTO 10
  IF ~~ THEN REPLY ~�� ���� ����, ������.~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, � �� ����, ������ �� ���� ��������� ��������� ������, ��� ���, �� ��� ����� ��� ��������. �� ������ ������������� � �������������� ������������. ������ ���� �� �������� ����������, ���� ���� ����������� ��. ��� ��� ��� ����? ��� �� ����� �� ����������� �����.~
  IF ~~ THEN REPLY ~� �����, ����� ������������ �������. ������ ������ ������� �� ����.~ GOTO 4
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~�� �� ������, ��� ������� � ������� ����?~ GOTO 5
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~������ ���� ����� ��� ������?~ GOTO 6
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~������ ���� ����� ��� ������?~ GOTO 10
  IF ~~ THEN REPLY ~�� ���� ����, ������.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�, �� ������ �� ������� ���, �� ������ ��� �����, ���� � ����, ���? � �����, ��� ���-��� ��������... ������ ���� �� �������� ����������, ���� ���� ����������� ��. ��� ��� ��� ����? ��� �� ����� �� ����������� �����.~
  IF ~~ THEN REPLY ~� �����, ����� ������������ �������. ������ ������ ������� �� ����.~ GOTO 4
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~�� �� ������, ��� ������� � ������� ����?~ GOTO 5
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~������ ���� ����� ��� ������?~ GOTO 6
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY ~������ ���� ����� ��� ������?~ GOTO 10
  IF ~~ THEN REPLY ~�� ���� ����, ������.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~��, �� ��� �� ������ ������������ ���� �������? ������ �������, ��� �������... ��� ������? ��, ��� ����������� ���������...~
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 8
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~��, ��� ����� ���������, ������ ��� � ���������� �������. ��� ���� ���� ����������� ���. � ������ ����...~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~������? ��� ���. ������ �������, � ����, ���������, ������� ����, ��� ��� � �����. ������ ��� ����� ��������. � ����� ��� ��������. ~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~�� � ������� �� ������. � ���� ���� ���� � ������ �����. ����, ��� �� ����� �� ������. ����� ������, � ������ �� �����, � ������ �� ���� ������. ��...~
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 11
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY ~����� ��� ��� �����������, ������ ���������, � ��������� ������� � ���������� ����. ������ � ����� ���� � ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY ~� � ��� ���� ��������� ������? ��� ����� �������? ��� ����� ��� �� ������ � ������� ����. �� ��� � ���� �� ���� �����? �������� ������ ��� �������, � ������ ������� ���� ����� ��� ��, ��� �������. �� � ����� ���� ����� ����� �������... ����� � ��� � ������. ������� ��� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4
  SAY ~���, ��� �����, �� ������ �������. �� �������� ����������. �� ����� ��, ��� �� �����.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY ~� ���� ��� �����. � �������� �����������, ��������� ������� ����, ��� ��� � �����. ���� ����� �������� � �����. ������ ��� ��� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY ~�� ���� ����� ��������, ��� ��� ����� � �������. ����� ������� � ������ �������, �� ������ ��������� ���, ��� ���. ��� ��� �������? ��� �, �� ������ �� ���. �����, � ��� � ��������.~
  IF ~~ THEN EXIT
END

// ------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��������� � �����������? � ������� ��������� �������. ������ ������ � ������, ����� ���� ���� ��� �������?~ [FESTIL51]
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 11
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 9
END

