// ������, ��������� �������   ���� �� ����� ������� �������� ������ ���������, �� ���-�� � ���� �� ���. �� ������ ��������� ����-�� �����, �, �������, �� � ���� �� ��� ��� ������� ���. ��� �� �������� � �� ���������� ����������. ��� ��� ��������, � ������ �������� ����� �� �� �����.

BEGIN ~CHFEMALE~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @25
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @26
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY @33
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 12.1
  SAY @34
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 5.2
  SAY @35
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 13
  SAY @36
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @37
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 16
  SAY @38
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 6.3
  SAY @39
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY @40
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY @41
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @42 GOTO 4
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY @43
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 11.1
  SAY @44
  IF ~~ THEN GOTO 21
END
