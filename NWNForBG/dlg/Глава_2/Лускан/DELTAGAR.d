// ������ - ����� ������� - 7 ����  �������� ��������  - ����������� (��� ��� �����) ������� ������, ������ � ������ ����� ����� ������� � ���, ��� ���� ������� - �����������.

BEGIN ~DELTAGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 0 // from:
  SAY ~���! � ���� ����� ������, �� ������ �� ������ �� ����������� ��������. ���� �� �� �� ����, ��?~ [DELTAG50]
  IF ~~ THEN REPLY ~�� ��� � ����������?~ GOTO 1
  IF ~~ THEN REPLY ~������! � �� �������� ������� �������!~ GOTO 2
  IF ~~ THEN REPLY ~���, � ����� �� �� ���������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��. ������� ������ ���� ���� �� ����� �������������� � ����. ���� ����� ��������� ��������... � ������ ���������� ��������. �������... �� ������ ���������� ���� �� ���� ������?~
  IF ~~ THEN REPLY ~������ ��� �����, ��� ����� ��� �������� �������?~ GOTO 4
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �������������� � ������, ���� ������ ���?~ GOTO 6
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~� ����� �� ��� ����, ����� ������� ���.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�, � ���� ������ � ������ �� ���� �������. ��� ���� ������� ���������� ��� ���������� ������������... ���� ��� ������� �� ��������� � ������, ��� � ��� ���� ��������� �. ���� ����� ��������� �������, � ������� ������� ���� ���� �� ����� �������������� � ����. �� ��������� ���� �� �������?~
  IF ~~ THEN REPLY ~������ ��� �����, ��� ����� ��� �������� �������?~ GOTO 4
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �������������� � ������, ���� ������ ���?~ GOTO 6
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~� ����� �� ��� ����, ����� ������� ���.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�, ����� ����������. ���� ����� ��������� ��������, � ������� ������ ���� � ����������, ������ ��� � ��������� �������������� � ����. � ������ � ���� ����, <SIRMAAM>?~
  IF ~~ THEN REPLY ~������ ��� �����, ��� ����� ��� �������� �������?~ GOTO 4
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �������������� � ������, ���� ������ ���?~ GOTO 6
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~� ����� �� ��� ����, ����� ������� ���.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~�������? �� ��������, ��� ������� ������ � ������� ����� ���������, ���������� ����� ���-������ �������� � ����� ������� � ��������� ��? ������ ���, <SIRMAAM>... � ���� ������ ��������� ������.~
  IF ~~ THEN REPLY ~� ���� �� �������. ����!~ GOTO 9
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �������������� � ������, ���� ������ ���?~ GOTO 6
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~� ����� �� ��� ����, ����� ������� ���.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~� �������� ��� ���, ��� �����. �������, � ���� ���� � ���, ��� ��������� ����� ����, ��� ������� ������ ���� ����.~
  IF ~~ THEN REPLY ~��� ��������� �����, � �����?~ GOTO 10
  IF ~~ THEN REPLY ~���������� ��� ���, ��� �� ������ �� ���� ������.~ GOTO 11
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~��� � �������. �������� ������ �� �����.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~��� ����� ��� ������������. �������, ��� ��������, ���� ��� ������� ����� � �����������, ��� ��� � ���� �� ���� ������� ��� ����. ��, ���� ������, � ���� ���������� ��� ���, ��� ����.~
  IF ~~ THEN REPLY ~��, ���������� ��� �� ��������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �� ��� ���� ����������.~ GOTO 8
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~������ �� ��� �� �������������� �� ��� � �� ��������� � ���������?~ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY ~��... ��, �� ����� ����� �����������������. ������ ������ ��� ������� ������. � ���� ������... � ����� ��������� � ��� ����� ������ ������� ���� �� ����� ������, ��������.~
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �� ������ ����.~ GOTO 13
  IF ~~ THEN REPLY ~������ �� ��� �� �������������� �� ��� � �� ��������� � ���������?~ GOTO 12
  IF ~~ THEN REPLY ~� �����, ��� �� ��������� ����. ��� ����� ����, �� ��� �������� �������.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY ~�����... �� ��������� ����?~
  IF ~~ THEN REPLY ~�� �� ���. �� ������ ������� ����... ��� �������� ����� ���.~ GOTO 9
  IF ~~ THEN REPLY ~��, �������. � ���� ���� ������� � ������������.~ GOTO 13
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~���! ���!! ���-������, �������� ���!!~
  IF ~~ THEN DO ~Enemy()
ForceSpell(Myself,WIZARD_ABSOLUTE_IMMUNITY)
ReallyForceSpell(LastTalkedToBy(Myself),WIZARD_FIREBALL)
RunAwayFrom(LastTalkedToBy(Myself),150)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~����� ��� �� ����? ������� �������� ����� ������� � ������� �������� ������� ������. �������, ���� ������� ��������... �� �� ���������.~
  IF ~~ THEN REPLY ~��� �������� ������� ����� ����?~ GOTO 14
  IF ~~ THEN REPLY ~����� ��� ����� �����?~ GOTO 15
  IF ~~ THEN REPLY ~��� ����� ���� ������? �� ������, ��� ��?~ GOTO 16
  IF ~~ THEN REPLY ~�������, �������� ��� ��� ����.~ GOTO 17
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~������� ������� ����� ����������� �� � ������� �������� ���������. �� ����� �����-�� ������ ��� ����... ��� �� �������� ��� �������, �� � �� ������� ����������. ��� ��� ��������� ������� ��� � ��� �������� ����, ������� �� ������. � ���� ����������� ���� �� ����, ������ �� �������� ����.~
  IF ~~ THEN REPLY ~���� ��� �����?~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ��������.~ GOTO 20
  IF ~~ THEN REPLY ~��� ����� ���������� ��������?~ GOTO 21
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 22
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 6.4
  SAY ~�... � �� ����������� ����� ���, ���� �� ���. �� ��� ������ ���� - ���� ����� ���������. � ������ ����� ���, ��� �������, � �� ��������� � ��������� ������ � ����.~
  IF ~~ THEN REPLY ~������ �� ��� ��� ��� ��������?~ GOTO 23
  IF ~~ THEN REPLY ~������, �� �� ������ ������ ���?~ GOTO 24
  IF ~~ THEN REPLY ~����� �������� �� ����. �����, ���� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�����, �������, ��� �������� ����� ���.~ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY ~������� ���. � �������, � ���� ����������������� ������... � ��������� �����, ����� ��������� � ���������. ����� ��� �����, <SIRMAAM>.~
  IF ~~ THEN DO ~AddexperienceParty(10000)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~������� ������ � ��� ����� ������� �����, � �� ����, ������. �� ���������, ��� ��������� �����-�� ���������� ����... ����, ������� �� ����� ���������� � ����. ��, ����������, ������ � ����� ������� ���� ����, �� ������ ������� ����� ��������� ��, ����� ������������ ��-�� �����. ������� ������� � �������� � ����� �������� ���������. �� ����� �� �����, �� ��� ��� �������� �������� � ������ ����������� �� ����. ��� ���� �������� ����������� ���� ��� ����, � ���� ��������� ��� ��������.~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY ~��� �, �������� ��� ���, ������ �� ���������� ������������ ������� ����������� � �����-�� ������� �����, ������� �� ��������. �� ���������� ��������� �����������, � ���� � �� ����������, ���� � �� ���� �����, ��� �� ����� � ��������� ��������� ������. �� ��� ����� �� ������ ��� �������... � ������������ ���� ���-��, ��� �� ����.~
  IF ~~ THEN REPLY ~��� ��� �� ����, ������� �� �����������?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� �������� ������� ����� ����?~ GOTO 14
  IF ~~ THEN REPLY ~��� ����� ���� ������? �� ������, ��� ��?~ GOTO 16
  IF ~~ THEN REPLY ~�������, �������� ��� ��� ����.~ GOTO 17
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY ~������ ��� ������ ��������� ��������. �� �����, ��� ������ ������� ����� ������ ������... ����� �� ��� �� ���� ���� �� ����. � ������������� �� ���� � ���, ��� �� ����� ����. ��, ��� ��������, ���-�� ��������� � ������� ������� �������� � �������� ���... ���� ��� ������ ��������.~
  IF ~~ THEN REPLY ~��� �������� ������� ����� ����?~ GOTO 14
  IF ~~ THEN REPLY ~����� ��� ����� �����?~ GOTO 15
  IF ~~ THEN REPLY ~�������, �������� ��� ��� ����.~ GOTO 17
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 10.4
  SAY ~������? ����� ������ ����� ���� ������� ����, ���� ��� ����, ��� �� ���������. ���� ���-�� ��� ���� ���, ��� ������ ��� �������� � ������ ������. ������ ��� ���� ���������, � ����������� � ���, ����� ���������� ������� ������������... � ����������� ������ ��������� ����� ������� ����� �������������. ��� ����� �� ��������� ����� ��������� ��������, �� �� ������������: �� ��������� ������������ ����� �������.~
  IF ~~ THEN REPLY ~��� �������� ������� ����� ����?~ GOTO 14
  IF ~~ THEN REPLY ~����� ��� ����� �����?~ GOTO 15
  IF ~~ THEN REPLY ~��� ����� ���� ������? �� ������, ��� ��?~ GOTO 16
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 10.5
  SAY ~��� �� ������ �����?~
  IF ~~ THEN REPLY ~��� ��������� �����, � �����?~ GOTO 10
  IF ~~ THEN REPLY ~���������� ��� ���, ��� �� ������ �� ���� ������.~ GOTO 11
  IF ~~ THEN REPLY ~� �� ������� ���� ����� �����?~ GOTO 7
  IF ~~ THEN REPLY ~��� � �������. �������� ������ �� �����.~ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~� �������� ����� ������� ���������� �������� ���� ����� � ������� ���� '���� ������', � ������� ��� ������� ��� �������. ��� ��� �� ����� ������, � ��� �� ������������... ����� � �� ����. �� ������� �������� ������ ����� ��. � �����, ��� ���� �� ���� � ���� ��� ����. ������ ��������� � ������������... �� ������� ����, ��� � �����... �� ���� ������� ��  ����� ��������� �����.~
  IF ~~ THEN REPLY ~���������� ��� � ��������.~ GOTO 20
  IF ~~ THEN REPLY ~��� ����� ���������� ��������?~ GOTO 21
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 22
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY ~�������... �������� ������ �����. ������� � �����, ��� �� ������� ������� ��� ���������. �� ������ � � ���� ����������. �� ����������� ��������������� ��������, � ������� �� ����� ��������... �� ��� ������ ���� ��� ������. ������ ��� ��� ��������? �����-����, �� ����. �� ������� � ������ �������. �� �������, ��� ������ ������ ����, � ������ �� �������� �������� ���. ����������, � �� ����������� � ���� �� ����... �� ������, � ���� ��� ��� �������.~
  IF ~~ THEN REPLY ~���� ��� �����?~ GOTO 19
  IF ~~ THEN REPLY ~��� ����� ���������� ��������?~ GOTO 21
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 22
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY ~��������� � ����, �������� ������� �������� ��������� �������� �������� ����������� �����. �� ������� �����, ��� ����� ������� �� ���... �� �� ����� �����. ����������, ��� ����������� �� ��� �� �������� �� ����� ������ � ������� ����� ����������� ����... �� ������ ��������� �������� �����. � ������, ��� �������� ���������� �������������� � ���� ��������� �� ����, ��� � ����� ����. ���� ��� ������, ��� ����� ��� ����� �������, ������ ��� ��� � ���� ���� ���������������.~
  IF ~~ THEN REPLY ~��� ����� �������� ����������?~ GOTO 28
  IF ~~ THEN REPLY ~���� ��� �����?~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ��������.~ GOTO 20
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 22
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY ~��������� � �������� �������, �� ������� �����. �� ������� ���� ����� ����� ������. ���������� ����� �������� ����������, � ����������, ��� � ��� ���� ���� ��� ������� � �������. ��������, ��� ������������ ������ ������� ����.~
  IF ~~ THEN REPLY ~��� ����� �������� ����������?~ GOTO 28
  IF ~~ THEN REPLY ~���� ��� �����?~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ��������.~ GOTO 20
  IF ~~ THEN REPLY ~��� ����� ���������� ��������?~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 12.1
  SAY ~� �� ����, ��� �� �� <MALEFEMALE>. ��� �������� ����, �� ���� �������� � ����� ����� ������, ��� ������ ����� �� ������� ����. �������� �� �� ����, ��� ���, ��� �� ��� ������. � �� ������ ����� ������... �� ���� ��������, �� ���� ���. � ���������� ��� �� ������, �, ����������, �� ����� ���... �� � ����� ����� ����� � ���� �� ����������� �������� ����� �������.~
  IF ~~ THEN REPLY ~������� ��� ����� ����������.~ GOTO 5
  IF ~~ THEN REPLY ~����� �������������� � ������, ���� ������ ���?~ GOTO 6
  IF ~~ THEN REPLY ~����� �������� �� ����. �����, ���� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�����, �������, ��� �������� ����� ���.~ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 12.2
  SAY ~� �� ����. �� ��������� ��������� ������������� �������������, ��� ��������� ��� ������... ����� ��� ����� � �������, ��� �� ���������� � ���������.~
  IF ~~ THEN REPLY ~������ �� ��� ��� ��� ��������?~ GOTO 23
  IF ~~ THEN REPLY ~����� �������� �� ����. �����, ���� ������.~ GOTO 13
  IF ~~ THEN REPLY ~�����, �������, ��� �������� ����� ���.~ GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 14.1
  SAY ~����� ������� ������� ��������� ���� �������� ���������, ���� ��� ������� ������, � ��� ���������� ������ ���������� ��������� � ����. ����� ������������ ���... � ������ � ��� � ���� ������.~
  IF ~~ THEN REPLY ~����� ��� ����� �����?~ GOTO 15
  IF ~~ THEN REPLY ~��� ����� ���� ������? �� ������, ��� ��?~ GOTO 16
  IF ~~ THEN REPLY ~�������, �������� ��� ��� ����.~ GOTO 17
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 15.1
  SAY ~� ����� �� ����. ����� ����, �����-�� ������� ���? ��� �����? �� �� �������� ����� ������, ����� �������, � ������ ��� ������ � �������� �� ��������������� ������������.~
  IF ~~ THEN REPLY ~��� �� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� �������� ������� ����� ����?~ GOTO 14
  IF ~~ THEN REPLY ~��� ����� ���� ������? �� ������, ��� ��?~ GOTO 16
  IF ~~ THEN REPLY ~�������, �������� ��� ��� ����.~ GOTO 17
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 15.2
  SAY ~����� ������, ������������ ������ �� �����-�� ������� �����. ������� �������, ��� ��� '�����' ������ � ����� ������� ������ ������. � ������� �� ������ �� � ��� ��������... � ������������� �� ����, ������ �� �������, ��� ���� �� ���� ���� ����� ���������� � ������������. ���� ��� ����� ������ ������������� ����������, �������� ������ ������, ��� ��� �������� ���������. � ���� ����� �� ����... �� ���� ������������, ��� ���������� ����� ����, ����������� ���������� ��, � ��� �� ��� �������.~
  IF ~~ THEN REPLY ~��� ��� �� ����, ������� �� �����������?~ GOTO 26
  IF ~~ THEN REPLY ~��� �������� ������� ����� ����?~ GOTO 14
  IF ~~ THEN REPLY ~��� ����� ���� ������? �� ������, ��� ��?~ GOTO 16
  IF ~~ THEN REPLY ~�������, �������� ��� ��� ����.~ GOTO 17
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~������� ����������, ������� �����-�� ���� ����� �� ���������� ����������� �������. ��� ����� ���� ����� � �����, � ��� ������, ����������, ����� ��������.~
  IF ~~ THEN REPLY ~���� ��� �����?~ GOTO 19
  IF ~~ THEN REPLY ~���������� ��� � ��������.~ GOTO 20
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 22
  IF ~~ THEN REPLY ~� ���� ������ ���-��� ���.~ GOTO 18
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,8,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 29 // from:
  SAY ~�� �� ������ �� ��������� ��������, ��� ���� ��������. ��, �������, ������� ������ ������� ���������...~ [DELTAG51]
  IF ~~ THEN REPLY ~�� ��� � ����������?~ GOTO 1
  IF ~~ THEN REPLY ~������! � �� �������� ������� �������!~ GOTO 2
  IF ~~ THEN REPLY ~���, � ����� �� �� ���������.~ GOTO 3
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)~ THEN BEGIN 30 // from:
  SAY ~���! ����� �� ������� ����? �� ���� �� ��������� �������� � ������ ����� ������ ����?!~ [DELTAG52]
  IF ~~ THEN REPLY ~�� ��� � ����������?~ GOTO 1
  IF ~~ THEN REPLY ~������! � �� �������� ������� �������!~ GOTO 2
  IF ~~ THEN REPLY ~���, � ����� �� �� ���������.~ GOTO 3
END

