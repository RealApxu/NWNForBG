// ��� ����������� ��� ����; ������ - ���������� �����, ��������� ������� ������ , � ����� ��������� ��������.

BEGIN ~RELMAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @17
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @18
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @19
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @23
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 3.4
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 20
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @29
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @36
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @37 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @37 GOTO 18
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 19
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.1
  SAY @42
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 11.1
  SAY @10
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 10
END
