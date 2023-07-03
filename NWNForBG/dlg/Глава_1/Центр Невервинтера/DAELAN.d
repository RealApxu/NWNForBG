// ����� ������������ ������� �����   ������ ������� ����  �������   ������   ���� ������������ �������-������ ���� � ����� ������������ ������� �������� �����. � ��� ������� ���� ���-�� �����������, ��� ������� �������� ��� �� ��������� �������������� ���� ����.

BEGIN ~DAELAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�����������, <SIRMAAM>. ����, ����, ��� ������������ � ������������, ��� �� ��������� ����. ����� ���� ���� ��������� � ���� ��, �� �������� �������, ������ ����������� ������ �� ���� ��������.~ [DAELAN51]
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ������ ������� ���� �� ������ ��������, ��� �� �������� ������. �� ��� ������ ���� ����� � ������� ���� ����� � ������ � �����������. ������ � ����������� ���� �� ����� ����������� �������.~
  IF ~~ THEN REPLY ~�� ����� ������ �������� ��� ��������.~ GOTO 3
  IF ~  !Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY ~������, �� � ���� ��� ���� � �������� ��������.~ GOTO 4
  IF ~  Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY ~������, �� � ���� ��� ���� � �������� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �� ������������� ������ �������� ������ � �����?~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �������� ��������, ������� ����� �� ��� ��������� �������.~ GOTO 7
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� ���������, <SIRMAAM>. �����������, ���� �����-������ �������� ������ ����� ������� �������� � ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~��� ���� ��� �����, � ��� ��������� ����� ����� � ���� �����. �� � ��� �������� ������� ����� ������ ��������.~
  IF ~  !Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY ~������, �� � ���� ��� ���� � �������� ��������.~ GOTO 4
  IF ~  Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY ~������, �� � ���� ��� ���� � �������� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �� ������������� ������ �������� ������ � �����?~ GOTO 6
  IF ~~ THEN REPLY ~� ��� �������� ��������, ������� ����� �� ��� ��������� �������.~ GOTO 7
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~� ������ ���-��� �������� ��� ����� �������� � ���������, �� ��� ������ �� ����� �� ��������. �� ������� ����� � ��������, ������ ����� �� ������� � �������� ���, ��� ���� �����.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~������ ������ ����� ������ ����� ���� ������� ����. ��� ���� �������� ���������, ��������� �� �������� � �����, ����� ��������� � �������� ���, ��� ���� �����.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~��� ����� �����������, �� ���������. ���, ��� �� �����, � �������� ����� ���� ������������ �������� ���� ��� ��������� ����. �� � ����� � �����, � ��� ����� �������� ����� ������ ����������. �����, � ������������, � ����� ������ � ����� - ������� ���� � ����������� ������.~
  IF ~~ THEN REPLY ~� ��� ���������?~ GOTO 8
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~� �� �������� ����� � �������������, �� � ������� ����. � �� ���� ��������� ������� ������������ �������. ���� �� ��� ����� ���� ����� ������, � ����� �� ���� ���� � � �����.~
  IF ~~ THEN REPLY ~� ������� �� ������. ��� �������� ����� ��������� ��������, ������� �������� ������������� ��� ��������� �� ����.~ GOTO 9
  IF ~~ THEN REPLY ~� ������� �� ���� ������. ��� ������ ���������������.~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY ~� �������� ���� ��� ����������. ��-�� ��������� ������� �� �������� � �� �������. �� ������, �� �����. ��� �������� �������� ����. ������ �� ������� � ����� ���������� - ����� ��� ��, ������� � ���� ��� ������. � �������, ����� ���������� ��������� �� ���������, �� � ����� ������ ������ �� ���� �������, ����� ������ �� �� ������ ������.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~��������� ������ ������ �������� �� ����� ������, ��� ��� � �� ��������, ��� ���� ������� �������� ����. � ���� �������� �� ����, ���� �� ���� ������� ���� �� ��� ������. � �� �� ���, ��� �������� ������������ �������������, �� ������ ������ � ������ ����������� ������ ������ �������� �� ����� ������.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY ~� �������. ���� �� ��������� �� ������, ��, ������, ������� ���� ������ ���� ����� ������.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY ~����� ��� ������ ��� ������, �� ���� ������ ������ ���������� � �����. ��� �����, ��� ����� ���... ����. ������ � ����������� ���� �� ����� ��� ������� �������.~
  IF ~~ THEN REPLY ~��� �� ������ � ���� - � ����� ����� '����'?~ GOTO 17
  IF ~~ THEN REPLY ~� ��� �������� ��������, ������� ����� �� ��� ��������� �������.~ GOTO 7
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY ~� ����������, ��� �� ������� ����� ������� ��������, ������� ��� �� ������ ���������� �� � �������. ����� ���� 850 �������, � � ���� �������� �����.~
  IF ~  PartyGoldGT(849)~ THEN REPLY ~��� �� �������� ������� ����. ��� ���� 850 �����. ����� ���������� �� ����, ������.~ GOTO 13
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��-�����, ��� ����������. � ��� ���� 600.~ GOTO 14
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��-�����, ��� ����������. � ��� ���� 600.~ GOTO 15
  IF ~~ THEN REPLY ~� �� ���� ���� ��������� ������� ������� �� ����������.~ GOTO 16
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~�� �� ���� �� ���������. ��� ����������� � ����� ������������. � �������� �� ����� � ���� ������ ���, ��� � ���� �����; �������� �������� ����� ��������.~
  IF ~~ THEN DO ~TakePartyGold(850)DestroyGold(850)SetGlobal("DaelanReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~�������� �� ���� - �����. ����� ����� 600, � ��� ��� ����������� � ����� ������������. � �������� �� ����� � ���� ������ ���, ��� � ���� �����; �������� �������� ����� ��������.~
  IF ~~ THEN DO ~TakePartyGold(600)DestroyGold(600)SetGlobal("DaelanReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY ~������, �� 850 ����� - ��� ��������� �����. ���� �� �� ������ ���� ������, � ������, ������ �� ���������.~
  IF ~  PartyGoldGT(849)~ THEN REPLY ~��� �� �������� ������� ����. ��� ���� 850 �����. ����� ���������� �� ����, ������.~ GOTO 13
  IF ~~ THEN REPLY ~� �� ���� ���� ��������� ������� ������� �� ����������.~ GOTO 16
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 16 // from: 12.4
  SAY ~� ���������, � ������ ������������ �� ����� ����� ����������. � �� ���� �������� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY ~��-�� ��������� ���� ���������, ��� ��� ��� ������ ��������� ������ ������� � ������ ������������ - ����� ��� �����. � ��� ��������� ������ � � ����� ������ �������, ��� ������ ��������� �������� ��� ������. ���� �������� �� ����� ������, �� � �� ����� ���������� ��� �����. � ����������� ������� ���� �����! � �� ���� ���������� �� �������� ������ ��� �������!~
  IF ~~ THEN REPLY ~�� ������ ���������� ��� ���-������ ��� � �����?~ GOTO 18
  IF ~~ THEN REPLY ~� ��� �������� ��������, ������� ����� �� ��� ��������� �������.~ GOTO 7
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~����� ���, ��� ����, � ������ � �����-�� ��������, ��� ���������� � ������� ������� �����. ���-��� ��������� ������� �������� ��������, ������������ � ������������ ������, ������� ���������� � ���� ������� ������ ������. ����� ���������������� ������. �����, � �� � �������� ������ ����� ������, �� �������� ������ ���� �� ����������. � ����, � �� �������������.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY ~���� ��� ��� � ���� ������� ���� � �����, �� � ����, ��� ���� ����� ������. ���� ����������� ����, �� ������ ���� �� ��������� � ����� ��������.~
  IF ~~ THEN REPLY ~������ ������, � �� �������� ������ ����-������, ��� ����� �� ��� � ��������.~ GOTO 7
  IF ~~ THEN REPLY ~���, �������. �� ��������.~ GOTO 2
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY ~� ���, ��� �� ����� �����, <SIRMAAM>. ��� ������� ���� ������� � '��������� ������'?~ [DAELAN52]
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~� ��� �������� ��������, ������� ����� �� ��� ��������� �������.~ GOTO 7
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 21
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY ~� ���� ��� ���� ���������� ���� � ������. � ��� ���, ��� �������� ����, � ������ ������� ����� ������� �����, � ������� ������. � ���� ���-��� � �����, ������ ��� � ������� ��� �� ����. ����� � ������, ��� ���� ������� � ������ �����... ���� � ����������, ��� � ��� ��� ����� ������ ����.~
  IF ~~ THEN REPLY ~��� �� ������ � ���� - � ����� ����� '����'?~ GOTO 17
  IF ~~ THEN REPLY ~�� ����� ������ �������� ��� ��������.~ GOTO 3
  IF ~~ THEN REPLY ~� ��� �������� ��������, ������� ����� �� ��� ��������� �������.~ GOTO 7
  IF ~~ THEN REPLY ~������ ��� �� �� ����������. �� ��������.~ GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY ~<CHARNAME>! ��� � ��� ������ ���� �����, ���� � �� �������, ����� � ����� �� ������. � ������, ��� ������ ������ ����, ����� �������� ������� �����, ����������� ��� ����.~ [DAELAN53]
  IF ~~ THEN REPLY ~����� ������������� ������ ���� �����, ������.~ GOTO 23
  IF ~~ THEN REPLY ~����� ��? �� ���, �������� �� ����, ��� �����-������ ���������� ������������ �������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY ~� ����, �� ��� ������� ������, <CHARNAME>, ��, ������, ���� ����� �������� ��� ��� ������ ��� ������. ����� ����, ��� ���� ���� ��������� � ������������, � �������� � '��������� ������', ����� ���������� ���� ������ �� �����. ��� �� ��� ���������� ���� ������ �� ��������� ������ ����� ������.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY ~� ���������� �� ���, ��� ���� �������� ������� ��� ����, <CHARNAME>, �� ����� ���� ���� ����������. �� ����������, ������ ������� ���� ����������� ���� ����.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY ~��������, <SIRMAAM>. ��� ������ ������ � ����� �������, ���� ��� ����������� ������ ��������� � ����������� �����.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY ~������, ���� ����� ������� ���������� �����, ��� ������ ������ ��� ����� ���������. �� �������� ���� ��������� ������������ ��������� � ������ ����-�����, ����� �������������� � �������.~
  IF ~~ THEN REPLY ~��� ������ � ���� �������� �� ������?~ GOTO 27
  IF ~~ THEN REPLY ~������� ����� ������ ������ ����?~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY ~����� ������ �������� ���������, ��� ���� ��������� ������ �� ���� ������ - ������ ���������. ���� ����� �� �������� �� ����� �� ����������� ���� ���������. ��� ������ ������ �������� ������, ��� ����� ���������. ����, � ����� � ����, ���� � ���-������ ��� ���� �������?~
  IF ~~ THEN REPLY ~� ���� ���� �����-������ �������� � ������, ������� ����� �� ������ �������?~ GOTO 28
  IF ~~ THEN REPLY ~��� �� �� ������� ������� ����.~ GOTO 29
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~� ������ �� ������ �� ���� ������, ���� ������ ����������� - ��� � � - ��� ������ ������� ������ � ������ ������.~
  IF ~~ THEN REPLY ~������?~ GOTO 31
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 31
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY ~� ���� �������� ������� ������ ���� ����� �������.~
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY ~����� � ������ ����������� � ����. ���� ��� �����-������ ����������� ������ � ���������� ����, ���������� �� ���� ��� ���. ~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY ~���� ����� ����� ��� ������ ������������. ��������� ����� ������, �� ������ �������� ��� ������ ��� ��� ����� � ����� - �����, ��� ��� �����! ���� �� �� �������, ���� �� ����� � ������� ������������ � ���� ������ ���. ���� � ���� ���-������ ������, <CHARNAME>?~
  IF ~~ THEN REPLY ~��� �� �� ������� ������� ����.~ GOTO 29
  IF ~~ THEN REPLY ~������ ��� ������ �� �����.~ GOTO 30
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 32 // from:
  SAY ~����������� ��� ���, <SIRMAAM>. ��� �, ������ ������� ����, ���� �� ������������ ������� �������� �����. �������? ��� �� �������� ��������� ������, ��� �������� ���� ���� �� �����������.~ [DAELAN55]
  IF ~~ THEN REPLY ~��� �� ��������� �� ������?~ GOTO 33
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 28
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, ���� �� �����, ���� �����?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~������, ���� ����� ������� ���������� �����, ��� ������ ������ ��� ����� ���������. �� �������� ���� ��������� ������������ ��������� � ������ ����-�����, ����� �������������� � �������. � ������� �� ��� ��� �����������. � ������� ����� ������ ��-�� ����, � ��� �� �������� ��������� �� �� ������. ������ �����, ��� ��������� ��� ���������, ������ ���������.~
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 28
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, ���� �� �����, ���� �����?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.3
  SAY ~���� �� � ������, ���� �� �������� ���� � ��������. ��� ��������� ������� ���� � ������ ������, ���� ����� ������������ ��� ����. ���� ��������� ������ ��������, <CHARNAME>. � �� ����� ������� �����, ��� ��, �� � ������ ���� �� ������� �������� �����. ��� ����� �������� ����� ����������, ������ � ������� � ���. � ��� �� ������ ���� ������ � ������� ����� ������, ���� ���������.~
  IF ~~ THEN REPLY ~������ ���� �� ��������. �������������.~ GOTO 35
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~����������, � �������� ����� ����� �����, <CHARNAME>. ��� ���� ����� ��������� ���� ������ �������� �����. � �������� �� ����� � ����� ��������� ���� ������� ��� ����� �����.~
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY ~���� ���� ����������� ������� ����, ������� �� ������� ����, ����������� � �������� �� ����. ��� ������ ������������� ����� ������ ���� � �������.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 37 // from:
  SAY ~����������� � ��� ������. �� �� <CHARNAME>, ���������? ����� �������� ������������ ����������� ���. ���� ������ ����� ���-�� ����� �������.~ [DAELAN54]
  IF ~~ THEN REPLY ~��, ��� �� ������ ��� �������. ������ � ������ ��������� ������ ������� �� ������.~ GOTO 38
  IF ~~ THEN REPLY ~��, ���, �� ���� ���������, �.~ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY ~���������� ���������� ���� ������ ������� �� ����, �� �� ����� ���� ������ ����������� ����� �� ������ ������.~
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY ~� ������ ������� ����, ����������� ���� �� ������ ��������, ��� �� ������. �� ����������, ��� �� ������� ����� �� ��, ��� � �: ��������� ������ ������� �����, �� ���� ������� ������� ������.~
  IF ~~ THEN REPLY ~��� �� ��������� �� ������?~ GOTO 33
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 30
END

// --------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 40 // from:
  SAY ~����������� ��� ���, <SIRMAAM>. ��� �, ������ ������� ����, ���� �� ������������ ������� �������� �����. �������? ��� �� �������� ��������� ������, ��� �������� ���� ���� �� �����������.~ [DAELAN55]
  IF ~~ THEN REPLY ~��� �� ��������� �� ������?~ GOTO 33
  IF ~~ THEN REPLY ~�� ���� �� �����-������ ������ � ������ � ��� ���, ��� �� �����?~ GOTO 28
  IF ~~ THEN REPLY ~���� ���� ��� ����� �����, ���� �� �����, ���� �����?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 30
END

