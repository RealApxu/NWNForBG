// ������ - ����� ������� - 1 ���� - ������� ������� �������  ��� �������-������ �������� �������, ���������� � ������������ - ����������� ��������� ��� ������ �������.

BEGIN ~YEANASHA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   CheckStatGT(LastTalkedToBy(Myself),14,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @10 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @10 GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @11 GOTO 8
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @11 GOTO 9
  IF ~  Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @12 GOTO 10
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @21
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @11 GOTO 8
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @11 GOTO 9
  IF ~  Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @12 GOTO 10
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 18
  IF ~~ THEN REPLY @24 GOTO 19
  IF ~~ THEN REPLY @25 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @27
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @10 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @10 GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),MALE)~ THEN REPLY @12 GOTO 10
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 4.5
  SAY @28
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 4.6
  SAY @29
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.7
  SAY @30
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @31 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY @41
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 6.4
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 6.5
  SAY @44
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY @45
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY @46
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 8.3
  SAY @47
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 13.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY @50
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY @51
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY @52
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 30
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 22.2
  SAY @55
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 22.3
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 31
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 16.1
  SAY @50
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 29 // from: 21.1
  SAY @59
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 25.1
  SAY @60
  IF ~~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 33
  IF ~~ THEN REPLY @63 GOTO 34
  IF ~~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY @65
  IF ~~ THEN REPLY @57 GOTO 31
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY @66
  IF ~~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 31.2
  SAY @67
  IF ~~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 31.3
  SAY @68
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   CheckStatGT(LastTalkedToBy(Myself),8,CHR)CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN BEGIN 36 // from:
  SAY @69
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN BEGIN 37 // from:
  SAY @70
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

