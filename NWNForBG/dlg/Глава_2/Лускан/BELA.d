// ������ �������� � ������, 1-� �������  ����   ��� ������ ����������� �������, ������, ������� ����� ����������� � ������� ������ � �������� ������, ���������� �� ���������.

BEGIN ~BELA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN BEGIN 0 // from:
  SAY ~�, ������, ��������. ������ ������������, ���������?~ [BELA051]
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���? ��� ������ ������������, <MALEFEMALE>. ����� ���� ������� � �������, ������� ����� ������� ��� �� ���� ���� ������, ��� ����������... �� �����-�� �����.~
  IF ~~ THEN REPLY ~��� �� ��� �������� ������ �� ���?~ GOTO 5
  IF ~~ THEN REPLY ~��� �������� ����� �� ����� ����?~ GOTO 6
  IF ~~ THEN REPLY ~� �� ���� ����� ��������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���� ����� ����, ��������. ��� �������� � ������� ����� � ������������, � ������� �������� ������������. ���� �� � ������, ���� ���� �������� �� ���... � �������� ��� ����������, ��� �������.~
  IF ~  IsGabber(Player1)Global("SayName","LOCALS",0)~ THEN GOTO 8
  IF ~  !IsGabber(Player1)~ THEN GOTO 9
  IF ~  IsGabber(Player1)Global("SayName","LOCALS",1)~ THEN GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� ���� ��� ��� �������, �������? ��-��! �� ������� ��������... ���������.~
  IF ~~ THEN REPLY ~���������� ��� � ���, ��� ���������� � �������.~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ������� ��������� ���� ������, ����� ������� ���� ��������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��� �������? ����� ����������, �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~��-��! ��� �������� ���������� � ���� �����. ���� � ��� ���� ����� � �� �� �����������... ����� � ��� ����� ����� ���-�� � ����������. ��� ��� ������� � �������� ��������� �������. ������ ��������� ����, ���� ������. ���� �� ���������� �����, �����... ������ ��������� � ����������� ���� �����.~
  IF ~  IsGabber(Player1)~ THEN REPLY ~��� ����� ��� ����?~ GOTO 14
  IF ~  !IsGabber(Player1)~ THEN REPLY ~��� ����� ��� ����?~ GOTO 38
  IF ~~ THEN REPLY ~��� �������� ����� �� ����� ����?~ GOTO 6
  IF ~~ THEN REPLY ~� �� ���� ����� ��������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~��, �����������, ��������. � ������� ���� ������� ������ ������� ���������� �� �����, ��� ��������� ����� � ������� � �������� ��������. �������, ���� �� ��� �� ������, �� ������ �������� � ��� �����. � ���� ����� ��� �� ��������� �������.~
  IF ~~ THEN REPLY ~��� �� ��� �������� ������ �� ���?~ GOTO 5
  IF ~~ THEN REPLY ~� �� ���� ����� ��������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~��-��! ������-��, <MALEFEMALE>, ����� �� �������, ��� ��������� ���� ���������. ����� ����� ������������ �����, ����� ������� ����� �� ������ �����, �� � �����, �� �� ���� ��������? ��, ������... ��������� ���������� �� ������ �� ���� �������, ������� ��� ������� ��� ��������� �������? ��� �������, �?~
  IF ~~ THEN REPLY ~���� ���! ����� ��������!~ GOTO 15
  IF ~~ THEN REPLY ~�������� ������.~ GOTO 16
  IF ~~ THEN REPLY ~������.~ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY ~��, ������, ����������� ��� ��������� ����������. ���� � ������ ���� ���, �?~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~���� ����� <CHARNAME>.~ DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 10
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~���� ����� <CHARNAME>.~ DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~���� ����� <CHARNAME>. ����� ������� ������ ���.~ DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 18
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~���� ����� <CHARNAME>. ����� ������� ������ ���.~ DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 19
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~� �� ���� �������� ���� ���.~ GOTO 20
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~� �� ���� �������� ���� ���.~ GOTO 21
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY ~��, ������, ����������� ��� ��������� ����������. ���� � ������ ���� ���, �?~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~��� ��� ��� ������ �� ������.~ GOTO 20
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~��� ��� ��� ������ �� ������.~ GOTO 21
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~� �� ���� �������� ���� ���.~ GOTO 20
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~� �� ���� �������� ���� ���.~ GOTO 21
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~�� ���� �� ������, <CHARNAME>, ������? ��� �������� ��� � ��������. � ���� � ���� ��� ����������. ��� �� ����� � �� ���. ����� �� ���� ���-������ ������ ����? � ��� ���� ����, ���� ����, � ���� � ��������... ���, ��� ���������.~
  IF ~~ THEN REPLY ~���... ��������?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~� ���� ����� ���, �������. �� ������ ��� ���� ��������� �����, ����� ��� �������� � ������ ������ ���� ��� ���� ������� �������. ������, ��� � �����. ��� �� ����� � �� ���. ����� �� ���� ���-������ ������ ����? � ��� ���� ����, ���� ����, � ���� � ��������... ���, ��� ���������.~
  IF ~~ THEN REPLY ~���... ��������?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY ~��� ����� ������� ������, ��������. ������ ������, ������� ������ �������� ����� ������ ��������, ��� �� ��� ������ �������� �����-������������ ������ ���������, � ������ ��� ����� � ������. �����, �������� ������ ����� ����������. ���� ���� ���������, ��� �� ������ ������ ���-�� �������, ���������?~
  IF ~~ THEN REPLY ~���������� ��� �������� �� ���� ������ ���������.~ GOTO 24
  IF ~~ THEN REPLY ~����� �������� ��� ��� ��������?~ GOTO 25
  IF ~~ THEN REPLY ~����� ��� ������, ��� ��� �� ���������� ��� ���?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 3.1
  SAY ~� ���� ��� ������� ������, ��������. ������ �������� �����, ����� � ���� ����� �� ���� �������� ������������... ��� ��� ��� ������, ����� �� �� ���������. � ����� ����... ����� ���������� ������ - ��� �������, ������� �����, ��� ������ ����� ����������. ��������� ����, ��������? ���, �������, ���������� �������� ������� ������� �������� ����� ������, ����� ��������� �����, �� ��� ����� ��� ������� �����, ��� ������.~
  IF ~~ THEN REPLY ~���������� ��� � ���, ��� ���������� � �������.~ GOTO 12
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY ~����... ����������� ���� ��������� - ������� ������� �������� ����� ��� ������� �������� ������. ��� ����������� ����� ���������� � ��������� �����. ��������, ��� ���, ��� � ���� �������, ����� ������� ��, ����� ��� ���������� ������ ������� � �������� ��� ����� ���. ��� ���� ����� �������, ������� �����, ����� ��� ������ ��������, �������, ��������� ���� ����� ��� � ��������. ���... ��������, �� ����� ��� ��� ��������. � ��� �� � ��� �������, ��������?~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~�������, � ��������� � ����.~ DO ~SetGlobal("Bela_Rhaine","GLOBAL",1)~ GOTO 28
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~�������, � ��������� � ����.~ DO ~SetGlobal("Bela_Oreth","GLOBAL",1)~ GOTO 29
  IF ~~ THEN REPLY ~��� ��� �����, ��� ��� �� �����.~ GOTO 30
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~� ����������� �����.~ GOTO 31
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~� ����������� �����.~ GOTO 32
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~� ����������� ������.~ GOTO 33
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~� ����������� ������.~ GOTO 34
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~��������, �����, *����* ��� ���������� �� ��� ���! �� �� ���� �� ����. � �����, �� ���� ����� ����������. �����, �� ��� ����-�� ������, ��������?~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY ~�� ��� �� ���� ��� ���������, �������. ���� � ������, ��� ��� ������, ������, ��� � ������ ������. ��  �������� �����������. ��� � ��� ������, � �, ������, �� ������� �� �������. �� �� ���� �� ����. � �����, �� ���� ����� ����������. �����, �� ��� ����-�� ������, ��������?~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY ~��� ������ ��������... ����� ��������. ����� ����, ��� �� ����� ������� �����, ��� �������, ��� ��� ���� ����� � ������ �������, � ������ ��� - � �������. ����, ��� ����� �������, �� ����� ��������. �� �� ���� �� ����. � �����, �� ���� ����� ����������. �����, �� ��� ����-�� ������, ��������?~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 8.3
  SAY ~�����, ����� ��������������! ��� �������� ��� � ��������. �����, �� �� ��������� ��� ����, ������ ������ �� ������, ���������? ��� �� ����� � �� ���. ����� �� ���� ���-������ ������ ����? � ��� ���� ����, ���� ����, � ���� � ��������... ���, ��� ���������.~
  IF ~~ THEN REPLY ~���... ��������?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY ~� ���� ������� ������, �������. ���� �����-������ ������ ������� ���������, ������� � �������� �� ����. ������ �� ��������: ������������� ���� ������ ������. ��� �� ����� � �� ���. ����� �� ���� ���-������ ������ ����? � ��� ���� ����, ���� ����, � ���� � ��������... ���, ��� ���������.~
  IF ~~ THEN REPLY ~���... ��������?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY ~������ � ����������. ����, � ���� �� ���� ������� �� ����, ��������. � ����� ���� ���� ���� ���������, ������������! ��� �� ����� � �� ���. ����� �� ���� ���-������ ������ ����? � ��� ���� ����, ���� ����, � ���� � ��������... ���, ��� ���������.~
  IF ~~ THEN REPLY ~���... ��������?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 8.6
  SAY ~����, �����, ��������� �� �����������. ����� �� ������� ������� � ������, ��� ��� �������... ����� ��� ����� ����� � ��������, ������ ���. ��� �� ����� � �� ���. ����� �� ���� ���-������ ������ ����? � ��� ���� ����, ���� ����, � ���� � ��������... ���, ��� ���������.~
  IF ~~ THEN REPLY ~���... ��������?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 10.1
  SAY ~��� ��� ������. ��� ����� ������ �������� � ������� ������. �� ����������� ����, ������.~
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY ~����� �� �����������, ��������. ���-�� �� ���������� ����������� � �������, ������� �������� ��� ������. �� ��� ��� ��������, �� ��� ��� ������ �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~���, ���� ��������. ��, ������� ��, �������, ���� ������. ����������� �� ��� ������ ��� �������... �� ������, ��� �� �����? �������� ������ ���� � �����, ����� �������������� �����, �� ��� ��� ���� � ���� �����������. ��� ���� ����� �������, ������� �����, ����� ��� ������ ��������, �������, ��������� ���� ����� ��� � ��������. ����� ��� ������ �������� � ������� ����� � ������������.~
  IF ~~ THEN REPLY ~����� �������� ��� ��� ��������?~ GOTO 25
  IF ~~ THEN REPLY ~����� ��� ������, ��� ��� �� ���������� ��� ���?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~���... ��������� ������ �����. ������� ��� ��� �����? ��, �����, ��� ���. � ��� ����� �����. �����, ��� ��� ����� �� ������� �������� �� �������� � ������������.~
  IF ~~ THEN REPLY ~���������� ��� �������� �� ���� ������ ���������.~ GOTO 24
  IF ~~ THEN REPLY ~����� ��� ������, ��� ��� �� ���������� ��� ���?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 12.3
  SAY ~��������, ��� ���������� � ����� ������� �����. �� ���-�� ��� �� �����.~
  IF ~~ THEN REPLY ~���������� ��� �� ���� �����������.~ GOTO 35
  IF ~~ THEN REPLY ~���������� ��� �������� �� ���� ������ ���������.~ GOTO 24
  IF ~~ THEN REPLY ~����� �������� ��� ��� ��������?~ GOTO 25
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 27 // from: 12.4
  SAY ~�������, �������.~
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~���������� ��� � ���, ��� ���������� � �������.~ GOTO 12
  IF ~~ THEN REPLY ~��� ��� ������� ��������� ���� ������, ����� ������� ���� ��������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 14.1
  SAY ~��� ������, <GIRLBOY>. ��� ����� ����������, ��� �� ������ ������, � ������� �������. ������... ���� �� ��� �����������, ���� ������������ ���������� � ����. ��� ���� �� ���� ������� �������. �����... �� ���������, ������, �������. ������ ������ ���.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 29 // from: 14.2
  SAY ~��� ������, <GIRLBOY>. ��� ����� ����������, ��� �� ������ ������, � ������� �������. ������... ���� ��� ���� �������, ���� ������������ ���������� � ������. ��� ���� �� ���� ��������� �������. �����... �� ���������, ������, �������. ������ ������ ���.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~� ������� ���������.~ GOTO 23
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 30 // from: 14.3
  SAY ~��-��! ������ ����, �� ����� � ����� � �������� �� ������! �� ������ ����� ������� ���������, ��������... ��� ���� ����� ��������.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� �������� ���-��� ���.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 31 // from: 14.4
  SAY ~��? ��... �������. ����, �� ������� ����, ����� ��������. ���� �� ��������� ���� ��� ����� �������, �������. ������... ���� �� ��� �����������, ���� ������������ ���������� � ����. ��� ���� �� ���� ������� �������. �����... �� ���������, ������, �������. ������ ������ ���.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� �������� ���-��� ���.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 14.4
  SAY ~��? ��... �������. ����, �� ������� ����, ����� ��������. ���� �� ��������� ���� ��� ����� �������, �������. ������... ���� ��� ���� �������, ���� ������������ ���������� � ������. ��� ���� �� ���� ��������� �������. �����... �� ���������, ������, �������. ������ ������ ���.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� �������� ���-��� ���.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 33 // from: 14.5
  SAY ~���� ����� ���������� ��� ��������� ��������� �����, ������... �� �����, ��� ������ � ����� ����������. ������... ���� �� ��� �����������, ���� ������������ ���������� � ����. ��� ���� �� ���� ������� �������. �����... �� ���������, ������, �������. ������ ������ ���.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� �������� ���-��� ���.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 34 // from: 14.6
  SAY ~���� ����� ���������� ��� ��������� ��������� �����, ������... �� �����, ��� ������ � ����� ����������. ������... ���� ��� ���� �������, ���� ������������ ���������� � ������. ��� ���� �� ���� ��������� �������. �����... �� ���������, ������, �������. ������ ������ ���.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� �������� ���-��� ���.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 35 // from: 26.1
  SAY ~�, �� ������. ��� ���� �� �������� �������, ������� ����� � ����� ����� �� �������. ��� ����� �� ��������������, �� ����� �� �����, ���������. �� �� ������ ����� ����, �� ��� ����� �� ����� �������. � ���� ��� ���� �� ��������. ��� � ���.~
  IF ~~ THEN REPLY ~���������� ��� �������� �� ���� ������ ���������.~ GOTO 24
  IF ~~ THEN REPLY ~����� �������� ��� ��� ��������?~ GOTO 25
  IF ~~ THEN REPLY ~��� �� �������� ������ ������ ������.~ GOTO 27
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 38 // from:
  SAY ~����... ����������� ���� ��������� - ������� ������� �������� ����� ��� ������� �������� ������. ��� ����������� ����� ���������� � ��������� �����. ��������, ��� ���, ��� � ���� �������, ����� ������� ��, ����� ��� ���������� ������ ������� � �������� ��� ����� ���. ��� ���� ����� �������, ������� �����, ����� ��� ������ ��������, �������, ��������� ���� ����� ��� � ��������. ���... ��������, �� ����� ��� ��� ��������.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~��� ���� �������� ���-��� ���.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,10,CHR)~ THEN BEGIN 36 // from:
  SAY ~������, ��������. ������� ����, ��� ��� ���������� ���������... ����� �� ������ ���� �������.~ [BELA052]
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 37 // from:
  SAY ~����������, ��������. ������������.~ [BELA050]
  IF ~~ THEN REPLY ~��� ��� �� ����� �����?~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

