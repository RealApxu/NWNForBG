// ������ ������� ����� ���� �������� ������� ������ ��������� �� ������� �����������, ��������� � ���������� �� ��� ���������.

//   IF ~~ THEN REPLY ~������.~ DO ~StartStore("Innkeep1",LastTalkedToBy(Myself))~ EXIT

BEGIN ~ARUPH~

IF ~  NumTimesTalkedTo(0)!Race(LastTalkedToBy(Myself),HUMAN)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @7
  IF ~~ THEN REPLY @8 DO ~StartStore("Aruph",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @20
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 21
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY @33
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY @34
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @35
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY @36
  IF ~~ THEN REPLY @18 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 7.2
  SAY @37
  IF ~~ THEN REPLY @17 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY @38
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @39
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 12.2
  SAY @40
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY @41
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 14.1
  SAY @42
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 21
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 18.1
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @45
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

// --------------------------------------------------

IF ~  NumTimesTalkedTo(0)Kit(LastTalkedToBy,BARBARIAN)~ THEN BEGIN 25 // from:
  SAY @46
  IF ~~ THEN GOTO 1
END

// --------------------------------------------------

IF ~  NumTimesTalkedTo(0)Class(LastTalkedToBy,CLERIC_ALL)~ THEN BEGIN 26 // from:
  SAY @47
  IF ~~ THEN GOTO 1
END

// --------------------------------------------------

IF ~  NumTimesTalkedTo(0)!Kit(LastTalkedToBy,BARBARIAN)!Class(LastTalkedToBy,CLERIC_ALL)Race(LastTalkedToBy,HUMAN)~ THEN BEGIN 27 // from:
  SAY @48
  IF ~~ THEN GOTO 1
END

// --------------------------------------------------

IF ~  !NumTimesTalkedTo(0)~ THEN BEGIN 28
  SAY @49
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END


