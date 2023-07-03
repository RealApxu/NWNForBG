// ������� ��������: ���� ���� ������      

BEGIN ~ROLGAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolganAcquitted","GLOBAL",0)!Global("IslandDialogue","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~���� ������ ���� ������? �� ����� ��-�� ����?~ [ROLGAN50]
  IF ~~ THEN REPLY ~���? ����� ���?~ GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY ~��, � ����� ��� ����, ����� �������� ����. �������� ���, ��� ���������.~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� �������� �������, � ������ � ��� ���������. ������ ������ ����� ��������� ����, � ��� ����. � �� ����, ��� � ��� �������� ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����� ��������� ��� �������� � �����. � �� ����� ��������� ���� ���� ������, ������ ����������� � �� �������, ������� �� � ����������� ��������� ���. � ����� ����������� ���� �������, ��� �������� ��� ��������� ������, ��� ������ ������ ���. � ����� ������ ������ � ������� ��������� �������� ���������, ������� ����� ����� ������ ��� ����� ������� - ��� ����������� ��������.~
  IF ~~ THEN REPLY ~���������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ������� �� ��� ��, ��� �� �� ������ ��������� ���� ���������.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~���, ���� ������. � ������ ���������� �����, ���� ��� ������ ����� � ������� � ���� �������. ����� ��� ����������, � ���� ��� ����� ������ ������, ��� �������� ��������� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~� � ������� �������� � ������ �������. �����, ��� ����, �������, ��� � ������ ��������� � ���������� � �������, ��������� � ������� ��� ������� ���� ��������� ������ ������� � ����� �� �������� ����� ��������� ��� ��� ������ �������. �� ����� ����� �� ����, ������ ��� � ����� ���������� ��� ���� ���-��. � ���� ���, ����� ������ ���� �����. � ���� �� ���� ������� ������!~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~� ���� ���, <LADYLORD>. � ��� �� � ����. ���-�� �������� ��������� � ����� �������.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~� ������ � ���� ����, � ������ ������� ����� ������, ������� ������ ����� ����, ����� ��������� �� ������. ������ ��� ��� ���������, �� ������ �� ��� �������, ��� � ��������� �� ���, ������� ����� ��� ������.~
  IF ~~ THEN REPLY ~�� ������ ���������� ��� ���-������ ���?~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~��, ��������, ���������� �� ���. ���� ������ � �������� ����� ���������� ��� ���������. ��� �������� ��������, ��������� � ������. ������ �� ������� ����� ������, � ���� �������� ������� ������ ������, ��� � ������� ����. ��, ����� ������� ���� - ����������� ����. � �� ��������� ������, �� ������� ������. � ������ ������, ����� ���� ������� ������ ��� � ������ ���.~
  IF ~~ THEN REPLY ~� ������ ���, ��� �����.~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~���, ���� ������. � ������ ���������� �����, ���� ��� ������ ����� � ������� � ���� �������. ����� ��� ����������, � ���� ��� ����� ������ ������, ��� �������� ��������� �����.~
  IF ~~ THEN DO ~SetGlobal("RolgansTalk","GLOBAL",1)~ EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolganAcquitted","GLOBAL",1)!Global("IslandDialogue","GLOBAL",3)~ THEN BEGIN 9 // from:
  SAY ~��� ������� ����� �������� ������ �������. � �������� �� ���� � ���� �� �����. � ��������� ������ �� �������, ������� ���� � ���� ������ ������.~ [ROLGAN51]
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~� ��������� ����, <LADYLORD>. �� ��������� ���� ������ ��������, � ����� ������� ���� ����� ����������� ���� ��� � ���������.~ [ROLGAN52]
  IF ~~ THEN DO ~SetGlobal("RolganAcquitted","GLOBAL",2)AddexperienceParty(60000)EscapeAreaObject("To3000")~ EXIT
END

// --------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganAcquitted","GLOBAL",1)!Global("IslandDialogue","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY ~��� ������� ����� �������� ������ �������. � �������� �� ���� � ���� �� �����. � ��������� ������ �� �������, ������� ���� � ���� ������ ������.~ [ROLGAN51]
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~� ��������� ����, <LADYLORD>. �� ��������� ���� ������ ��������, � ����� ������� ���� ����� ����������� ���� ��� � ���������.~ [ROLGAN52]
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",3)~ THEN BEGIN 13 // from:
SAY ~��, <LADYLORD>. ��� �� ������ �� �����?~
  IF ~~ THEN REPLY ~���������� ���, ��� ��������� � �� ����, ������.~ GOTO 14
  IF ~~ THEN REPLY ~������ ���� ��������� ������ �������� � �� ����, ������? �� ���� �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ��������, ��� ��� ����� ������ ������, ��� �� ������ ��������?~ GOTO 16
  IF ~~ THEN REPLY ~� ���� ������ ��� �������� � ����� ���������.~ EXTERN ~IGLAND3~ 1
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~��� ���� ������� ���� ����� ���������� � �������, ��������� ��� ������� ��� �������� ��������. �� ����� � ������ � ������, �� ��� �� ����� �� ����. � ���� �� ���� ������� ������, ��� �������� ����������.~
  IF ~~ THEN REPLY ~������ ���� ��������� ������ �������� � �� ����, ������? �� ���� �������?~ GOTO 15
  IF ~~ THEN REPLY ~�� ��������, ��� ��� ����� ������ ������, ��� �� ������ ��������?~ GOTO 16
  IF ~~ THEN REPLY ~� ���� ������ ��� �������� � ����� ���������.~ EXTERN ~IGLAND3~ 1
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY ~���, ��� ����� ��� ��������� ���� ������� ������, ������� � �����. ��� ����������� ��� ����� �� ���, ����� �� �������� ��� ���������. � � ������ �������, ��� ����������, � ����� ���� ��� ������� ������, ����� ��� ��� �����.~
  IF ~~ THEN REPLY ~��������� ����� ��������, ��� ��� ����� ���� ��������� ��� ����, ����� ��������� ���� ��������, ������.~ GOTO 17
  IF ~~ THEN REPLY ~���������� ���, ��� ��������� � �� ����, ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������, ��� ��� ����� ������ ������, ��� �� ������ ��������?~ GOTO 16
  IF ~~ THEN REPLY ~� ���� ������ ��� �������� � ����� ���������.~ EXTERN ~IGLAND3~ 1
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY ~� �����, ����� ������ ���� ���-�� ����������� ����������� ������. � ���� ��� ����� �������� ������������ ���-�� �� ��������, ���, �� ���������, �������� ������ ���. ����� ����� ��� �������� � ����, � �� ��� ��������.~
  IF ~~ THEN REPLY ~���������� ���, ��� ��������� � �� ����, ������.~ GOTO 14
  IF ~~ THEN REPLY ~������ ���� ��������� ������ �������� � �� ����, ������? �� ���� �������?~ GOTO 15
  IF ~~ THEN REPLY ~� ���� ������ ��� �������� � ����� ���������.~ EXTERN ~IGLAND3~ 1
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY ~� ���� ��� ������ ���������. � ����, ��� ������ ����� ��������������� �� ��� ���� ��������, <LADYLORD>. �� � �� ���� � �� ��� ������ ����������. ����� ����� ����� �� ����, ��� ��������� ����� ����, � � ����� ����������. � �� ������, �������, ��� ������ ���.~
  IF ~~ THEN REPLY ~���������� ���, ��� ��������� � �� ����, ������.~ GOTO 14
  IF ~~ THEN REPLY ~�� ��������, ��� ��� ����� ������ ������, ��� �� ������ ��������?~ GOTO 16
  IF ~~ THEN REPLY ~� ���� ������ ��� �������� � ����� ���������.~ EXTERN ~IGLAND3~ 1
END

IF ~~ THEN BEGIN 18 // from: IGLAND3 1
  SAY ~� ��������� ����������� ���� �� ������� ������� ����! � �������� �������� � ����� ����� ����� ������!~
  IF ~~ THEN EXTERN ~IGLAND3~ 2
END

IF ~~ THEN BEGIN 19 // from: IGLAND3 2
  SAY ~��� ���� �� ������ �� ���� ��������. ��� *���* ������ �� ���� ��������.~
  IF ~~ THEN EXTERN ~IGLAND3~ 3
END

