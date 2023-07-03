// ������ � ���� �����������, ��� ��� ���� ����� � ������ �������� � ����� �������

BEGIN ~DRIADNW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SetaraSurrenders","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~�������� �� ����� ������! � ���� ����!~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SetaraSurrenders","LOCALS",1)~ THEN BEGIN 1 // from:
  SAY ~���, ����������, �� ������ ����! � ������.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~������... ��� ������� ����... ���������� ���� ������ ����� ������. � ������� ���������� � ���, �� ����������, ��������. ��� ���� �����?~
  IF ~~ THEN REPLY ~��� ������� ��� ������?~ GOTO 3
  IF ~~ THEN REPLY ~������ �� ����������� �� ����?~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY ~� �� ����. ������ ������ ��������� ��� ����. ��-�� ��� � � ������ ���� �����. � ���� �� ����, �� ���� � ���� ������, ����� ����, ��� ������-�� �������� ����.~
  IF ~~ THEN REPLY ~��� �� ����� ��� ������ �������� �� ���� �����?~ GOTO 4
  IF ~~ THEN REPLY ~������, ��� �������� ���� ���.~ GOTO 4
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY ~���� ����� ����� �������� �� ����? � ������ ����� ������, ����� ���� ����� �������� ������� �� ����. � ���� ���� ���� ��������, � �������� ������ ���� ������� ����� - ��� ��� ����. �� �� ������ ������� �� �������� �����. � �� ����, ������ ��� ��� �������. ���! <He/She> ����� ��� �����. � �� ������ ������ ������. ������, <LADYLORD>.~
  IF ~~ THEN REPLY ~�� ������, ��� � ���� �������, ����� ���������� ���?~ GOTO 7
  IF ~~ THEN REPLY ~��������� � ����� ���� � �����. � �� ����, ����� �������� ����� ������ ���� ������.~ GOTO 8
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~���. � �� �����! � ����� ���� � ��� � ����... � ���. ��. � �����. ���� ����� ������ �� ����� ������. ���� �� ������ �����, � ������� ������ � ����� �� ���� ���������. �� �������� � ����� ����.~
  IF ~~ THEN DO ~SetGlobal("SetaraSurrenders","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4
  SAY ~� �� ������ ��� ������, ������ ��������!~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~� �� ����. � �� ���� ������. ���� ��� ����� ����� �� ����. �� ������ ���� �� ��������. � �� ���� ������. �����, ���� �� ������� ���, �� ��� ����� �� ������������� ���� ����...~
  IF ~~ THEN REPLY ~�� ���� ��� �� �������������?~ GOTO 9
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~���������! ����� ������� ��������� � ��� ���� � ������� ��� �����, � �� �������� - ���������! � � ��� �������� ��� ����.~
  IF ~~ THEN REPLY ~�� ������, ��� � ���� �������, ����� ���������� ���?~ GOTO 7
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~������ ��� �����? � ������� �� ����� ������ �� ����� ������! ��� �� ������ �������� ��������� ��� ������! ����� ���� ����� ����. �� ����� ������ ����� ��... ��, �������. �����, ������ �������, ��� �����, � �� ���� � ������.~
  IF ~~ THEN REPLY ~�������� ��� � �������.~ GOTO 10
  IF ~~ THEN REPLY ~� ������ �� ���� ��� �� �������������?~ GOTO 11
  IF ~~ THEN REPLY ~�������� ��� � ������.~ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~��� ������� ��������� �����-�� ������. �� ����, ���� ��� �����, ������ ��� � ��������� �� ���, ����� �� �������� ��������. ��� ���� ������. ��� ������ �������� ��� ������! ���, ���. ��� ��� ��������� �������.~
  IF ~~ THEN REPLY ~� ������ �� ���� ��� �� �������������?~ GOTO 11
  IF ~~ THEN REPLY ~�������� ��� � ������.~ GOTO 12
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~� �� �� ��������, ��� �� ��� �� �������������, �? � ������ �������, ��� ��� ����� ����. ������ ��� �����? �-�, ������. �, � �����-��, �� ������ ��� �� ���� �����.~
  IF ~~ THEN REPLY ~�������� ��� � �������.~ GOTO 10
  IF ~~ THEN REPLY ~�������� ��� � ������.~ GOTO 12
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY ~������ - ������ ������. ��� ������ �������� ����. ��� ������ � ����� ������ ����! ���, ������, ��� ������� � �������� ���. ��, ��� �� � ������ ������� ������. ��� ��� ������. �� ���� �������� ����� ���� � �������, ���� ����������. � ��� ��������� � ������� � ������. ��� ��-�� �� ����, �������.~
  IF ~~ THEN REPLY ~��� ������ '��-�� �� ����'?~ GOTO 13
  IF ~~ THEN REPLY ~��-�����, ���� ������� �������������.~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~��� �����-�� ���� ��������, � ������ ��� ����������. � �� ����, ��� ���������, ��� ���� �� ����� �� ���� ��������. � ������ ����, ��� �������, ��� ���� ������ ����� � ��� �� ���������. ��� �� ����� �������� � �����, ������ ��� �� ���� ���! �� ������ ����� ��� ���� � ����� ���� �������, ��� ��� ��� �� ����� �������� � �����, � � �� ����� ����, ��� � ��� ���� ��������! �������� ������!~
  IF ~~ THEN REPLY ~� �� ��������� ������ ���� ������, ��� ��� ������ ����� �� ����.~ GOTO 15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�� ������ �������� ���, �������. ������ �� ���� �� ���������� ���, ��� �� ������?~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~�� ������ �������� ���, �������. ������ �� ���� �� ���������� ���, ��� �� ������?~ GOTO 17
  IF ~~ THEN REPLY ~������, � �� � ���� ������ �� ����� �������!~ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~���, ������ ��� �� ���. ������ ��� ����� �����������. ��� �����-�� ���� ��������, � ������ ��� ����������. � �� ����, ��� ���������, ��� ���� �� ����� �� ���� ��������. � ������ ����, ��� �������, ��� ���� ������ ����� � ��� �� ���������. ��� �� ����� �������� � �����, ������ ��� �� ���� ���! �� ������ ����� ��� ���� � ����� ���� �������, ��� ��� ��� �� ����� �������� � �����, � � �� ����� ����, ��� � ��� ���� ��������! �������� ������!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~�� ������ �������� ���, �������. ������ �� ���� �� ���������� ���, ��� �� ������?~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~�� ������ �������� ���, �������. ������ �� ���� �� ���������� ���, ��� �� ������?~ GOTO 17
  IF ~~ THEN REPLY ~������, � �� � ���� ������ �� ����� �������!~ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.1
  SAY ~��, <LADYLORD>, ������ ����. � ������ �� ���� ����� ��� ����������. � ����� ����, ��� ����� ������, �� ����� �����. ������ ������ ������ ��� �� ��, ����� ������� ���� �������. ���-�� ���� ����� ��� �������, ��� � ��� ���� ���-�� ��� �����, ��� ���������� ����� ������� �� ���������. � ������ ������ �� ����, �� ����, ��������, ����� �� �������������� ������ ����.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 15.1
  SAY ~������, ����������, ������� ���� � �������� �����, ���� � ����� �� ���������.~
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1
  SAY ~��, ��� ������. ������, ��� � ��� �� ����, ������ ��� ������� ����. � ����� ����, ��� ����� �������, �� ����� ���� �������� ������. ������ ������ ������ ��� �� ��, ����� ������� ���� �������. ���-�� ���� ����� ��� �������, ��� � ��� ���� ���-�� ��� �����, ��� ���������� ����� ������� �� ���������. � ������ ������ �� ����, �� ����, ��������, ����� �� �������������� ������ ����.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 13.3 14.2
  SAY ~���! �� ������ ������ ����� ���� � ��� ������. ������� �������� �� ����, ��, <MALEFEMALE> � �������.~
  IF ~~ THEN REPLY ~� �� ��������� ������ ���� ������, ��� ��� ������ ����� �� ����.~ GOTO 15
  IF ~~ THEN REPLY ~������, � �� � ���� ������ �� ����� �������!~ GOTO 18
  IF ~~ THEN REPLY ~�������, ����� ���� ������ ������ ������. �� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~��-�����, ����� ����� ����, ���� �� �� ���������� ����� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 13.4 14.3
  SAY ~�����, �����, ������. ����������, �� ����� ��� ������. � �������� ����, ��� �� ������ �������. ������ ������ ������ ��� �� ��, ����� ������� ���� �������. ���-�� ���� ����� ��� �������, ��� � ��� ���� ���-�� ��� �����, ��� ���������� ����� ������� �� ���������. � ������ ������ �� ����, �� ����, ��������, ����� �� �������������� ������ ����.~
  IF ~~ THEN GOTO 19
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SetaraSurrenders","LOCALS",2)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 20 // from:
  SAY ~������... ��� ������� ����... ���������� ���� ������ ����� ������. � ������� ���������� � ���, �� ����������, ��������. ��� ���� �����?~
  IF ~~ THEN REPLY ~��� ������� ��� ������?~ GOTO 3
  IF ~~ THEN REPLY ~������ �� ����������� �� ����?~ GOTO 3
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SpiritSaved","GLOBAL",0)Dead("SpiritFo")~ THEN BEGIN 21 // from:
  SAY ~��� �������� � ���� ������������ ���������.~
  IF ~~ THEN EXIT
END
