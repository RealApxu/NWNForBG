// ����-����� ����� � �����   ������    ����� - ��������� �������� ����� ����� ���� � �����������

BEGIN ~PRICHEV~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowPrichev","GLOBAL",0)Global("KnowCaptain","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~����������, ��� �� �������� �� ��� ������� - ����� � ��������� ������ ����������. ��� �� �� �������� ����, �� � �� ���� �������������, �����? � ��� ����� ���-����� ������.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~��� � ��� ��������� � ��� ������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ���-�� ���, �? ��... ��������. ����� ���� ������ - � � ������ ��������� �������, ���� �� �� ��������. � �� ����� �� ���������� ��� ������ ����������, ��... � �����, ������������ �� ��� �� ������. � ��� ����� - �����, �� ������� ������?~
  IF ~~ THEN REPLY ~���������. � ���� �� ���� ��������.~ GOTO 2
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~� ���� ���� ��� ����� - ���� ������������ � ��������, � ������ � �����������. ����� ��� ��������� ����� ������, �� ��������������� ���� ����������������� - ��� ������, ������� ������� ������ ����-������. � �������� ����� ���� ����� ������ ��� ������ �����. �������, �� ����� �������� ������ �� ����� ������ ����� - �� ������ � ������������ ������������� *�����* ���� ���� ����� ��������� �� ���������.~
  IF ~~ THEN REPLY ~� �������� � ��������� � �������� ����� � �����������.~ GOTO 5
  IF ~~ THEN REPLY ~�� ������ �� �� ������ � ������-������ ����������?~ GOTO 6
  IF ~ Global("KnowCaptain","GLOBAL",1)~ THEN REPLY ~� ���� ��� ��� �������� � ���������.~ GOTO 7
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��. �����. �������� ��� ��� ��������� ��� ������ ������ ������� ���-������ ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.4
  SAY ~� �������. ��� ������������� �� � ����� ���� �� ���� ����. ��������, ��� ������� ������� ��� � ��� �������.~
  IF ~~ THEN DO ~SetGlobal("KnowPrichev","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~�������. � �� ���� � ��� ������� ��������, �� ���� �� ��������� ��� ����������, ��... ��� ���� �� ���������.~
  IF ~~ THEN DO ~SetGlobal("KnowPrichev","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~������ �� ���, �� �� ����� ���� - ��� ��� ����������. ����� � ����-������ ������ �������, ����� ������ ������������. � ���� ����� ��, ����� ��� ������ �� ������� �����.~
  IF ~~ THEN REPLY ~� �������� � ��������� � �������� ����� � �����������.~ GOTO 5
  IF ~  Global("KnowCaptain","GLOBAL",1)~ THEN REPLY ~� ���� ��� ��� �������� � ���������.~ GOTO 7
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~��, � ��� �� ������? ������� ��, � ����� ������, ���� ��������������� ����? ��������� ������ �� ���� ����������� �����. ����������, ������� ���, ��� ��� ������� ��������� ��� ������������.~
  IF ~  Global("PrichevQuest","GLOBAL",0)~ THEN REPLY ~���� ���. � ��� ��� � ��� ��������.~ GOTO 8
  IF ~~ THEN REPLY ~� �����, �� ����. ��� ������� ������ ��� ������������ ����.~ GOTO 9
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~����, �, ��������, ������� ������������, �� ��� ��� �������� ��� �� ���� ������. ����������, ���������� � ���. � ����, � ��� ���������.~
  IF ~~ THEN DO ~SetGlobal("KnowPrichev","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY ~�� ��������? �� ���, �� ���������, ������ ��������? ��� � ����-������ ��� ���������, ����� ������ ��������� ������������ - � ���� ���� ������ ���� ���������. �� ����������� �������� �������������� �����. � �������, ��� ����� ������, �� ������ ��� �� ���, ������ ��. ��� ������ ����!~
  IF ~~ THEN REPLY ~������ � �������. � �������� � ���..~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ��������. ���-�� � ����� ������ ��������.~ GOTO 10
  IF ~~ THEN REPLY ~�����, ������� ������ �������� ��� ����������?~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY ~��� ��������� �� ���� ������ ��� ���������. � �� ����� � ������� - � ����� � ������. ���� �� ������ ��� ������, �������� ���� � �����. ���-������ ���? � ���� ���� ����, ������� ������ ������� � �����������, � ������� ��������� �������, ������� ��� �� ��� ���������. � ������� �����, �� ����������?~
  IF ~~ THEN REPLY ~������ � �������. � �������� � ���..~ GOTO 8
  IF ~~ THEN REPLY ~�����, ������� ������ �������� ��� ����������?~ GOTO 11
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY ~��, ��� ��������, ������ ����� ������ ���������� ��� ������ ������, ��� �������������� �� ���� ����-�� ����� ������? �����-�� �� �� ������ �������� � ������ �����, �����? ���-������ ���? � ���� ���� ����, ������� ������ ������� � �����������, � ������� ��������� �������, ������� ��� �� ��� ���������. � ������� �����, �� ����������?~
  IF ~~ THEN REPLY ~������ � �������. � �������� � ���..~ GOTO 8
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowPrichev","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY ~���, �������, �������� ���������� � ���-�� ������? ��������, ���� � ������ ���������� - � ������ �� ���� �� ������ �� ���� ����� ����� � ��������� ������.~
  IF ~~ THEN REPLY ~����� ��� ���, ��� � ��� ��������� � ��� ������?~ GOTO 2
  IF ~~ THEN REPLY ~� �������� � ��������� � �������� ����� � �����������.~ GOTO 5
  IF ~~ THEN REPLY ~� �����, ������� ����. ��� ������� ������ ��� ������������ ����.~ GOTO 9
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

// ----------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowPrichev","GLOBAL",0)Global("KnowCaptain","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY ~��������, � �����, �� �������� � ��������� ������. ������, �� ��� ����� ���� ��� ���� ������. ������ ���������� � ��� �������, ������ ��� ������ ���������, �����?~
  IF ~~ THEN REPLY ~��������, � ��� ������ ����, ���� ������ �������� ������������ ����?~ GOTO 9
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~��� � ��� ��������� � ��� ������?~ GOTO 2
  IF ~~ THEN REPLY ~������ - ��� ��� �� ����� ���������. ���������.~ GOTO 4
END

// ----------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY ~� ���� �� ����, ��� ���������, �� � ���� �������-�� ���-����� ������ ������ ������������ � �����������. ��������� ��� ������������� ��c, ���, ����� 400 �������.~
  IF ~~ THEN REPLY ~�������, ����� ����������.~ GOTO 15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� �� �� �������. ��� ����� ���� ��������.~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~��� �� �� �������. ��� ����� ���� ��������.~ GOTO 17
  IF ~~ THEN REPLY ~��� �� ���� ��� ��������, � �� � ����� ����� �������� � ���������.~ GOTO 18
  IF ~~ THEN REPLY ~� �� ������ �����, ������ ������������ - ��� ���������.~ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~������� �� ���� ������, <SIRMAAM>. ������ � ������� ��������� �����, �� ��������.~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",3)GiveGoldForce(400)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY ~��, � �����. ��� �������� ������ �����������, �� � � � ������� ����������. ������, ������� ��� 800 ������� ������ � ���� ��������������.~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",3)GiveGoldForce(800)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY ~����-������ ��� � ��� ������ �������� ���������� ���� ��������. ��������� �������� - ��� ��� �������. � �������� ������� ��� ��������� �������.~
  IF ~~ THEN REPLY ~�������, ����� ����������.~ GOTO 15
  IF ~~ THEN REPLY ~��������������, ��� � ����� ����� �������� � ���������.~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY ~� ��� � ����, ��� ����� ���� �� �������� �� ������ �������. �� ���� � ���� ���� ����� ���-�� ������, �� ��� ��? ���, �������� ��� ������. �� ������� ����, � ���� ���� ������ � ���, ��� ���� ��������� �� ������������.~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",3)GiveGoldForce(800)AddexperienceParty(20000)ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY ~� � ����� ���� - ����� ���������� �������... �, ��� ���� � ������������ �������. ������� �� ���� ������, <SIRMAAM>. �������.~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",3)AddexperienceParty(20000)ReputationInc(1)~ EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",2)~ THEN BEGIN 20 // from:
  SAY ~���?! � ������ ��� ������, ��� �� ����� ��� ��������. ��-�� ��� ������ ������������ ������ �� ������� � �����.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",3)~ THEN BEGIN 21 // from:
  SAY ~��, � ����� ������, ���� ������. ����-����� �����������, � �� ������� ������� ������������� ��� ������������. ��� �� ��� ������ �����, ��� ��.~
  IF ~~ THEN EXIT
END
