// ����-����� ��������� ��� ���� ������� ���

BEGIN ~SHALDRI1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Gender(LastTalkedToBy(Myself),MALE)Global("ShaldrissaWasOffended","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @18
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @19
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @20
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @21
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 4.5
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 4
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY @25
  IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 11.3
  SAY @27
  IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 4
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @34
  IF ~~ THEN DO ~SetGlobal("ShaldrissaWasOffended","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY @35
  IF ~~ THEN REPLY @29 GOTO 4
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 12.4 15.3
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 14
  IF ~~ THEN REPLY @38 GOTO 17
  IF ~~ THEN REPLY @39 DO ~TakePartyGold(1000)~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY @40
  IF ~~ THEN REPLY @37 GOTO 14
  IF ~~ THEN REPLY @39 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.3
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 14
  IF ~~ THEN REPLY @43 DO ~TakePartyGold(1000)~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 14
  IF ~~ THEN REPLY @46 GOTO 14
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 20 // from:
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~~ THEN REPLY @49 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 23
  IF ~~ THEN REPLY @52 GOTO 24
  IF ~~ THEN REPLY @53 GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @54
  IF ~~ THEN REPLY @51 GOTO 23
  IF ~~ THEN REPLY @52 GOTO 24
  IF ~~ THEN REPLY @53 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @57 GOTO 27
  IF ~~ THEN REPLY @58 GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 21.2 22.2
  SAY @59
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @57 GOTO 27
  IF ~~ THEN REPLY @58 GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 21.3 22.3
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 28
END

IF ~~ THEN BEGIN 29 // from: 25.1
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 23.3
  SAY @64
  IF ~~ THEN DO ~SetGlobal("ShaldrissaWasOffended","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @65
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @57 GOTO 27
  IF ~~ THEN REPLY @58 GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY @9
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @66 GOTO 31
  IF ~~ THEN REPLY @11 GOTO 32
  IF ~~ THEN REPLY @67 GOTO 33
  IF ~~ THEN REPLY @68 GOTO 34
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY @69
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @11 GOTO 32
  IF ~~ THEN REPLY @67 GOTO 33
  IF ~~ THEN REPLY @68 GOTO 34
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY @19
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @66 GOTO 31
  IF ~~ THEN REPLY @67 GOTO 33
  IF ~~ THEN REPLY @68 GOTO 34
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 33 // from: 27.3
  SAY @20
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @66 GOTO 31
  IF ~~ THEN REPLY @11 GOTO 32
  IF ~~ THEN REPLY @68 GOTO 34
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 34 // from: 27.4
  SAY @21
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @66 GOTO 31
  IF ~~ THEN REPLY @11 GOTO 32
  IF ~~ THEN REPLY @67 GOTO 33
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 35
  IF ~~ THEN REPLY @72 GOTO 28
END

IF ~~ THEN BEGIN 35 // from: 26.1
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 36
  IF ~~ THEN REPLY @72 GOTO 28
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 37
  IF ~~ THEN REPLY @77 GOTO 27
  IF ~~ THEN REPLY @78 GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @79
  IF ~~ THEN DO ~SetGlobal("ShaldrissaWasOffended","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.3
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 37
  IF ~~ THEN REPLY @82 GOTO 39
  IF ~~ THEN REPLY @83 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.2
  SAY @84
  IF ~~ THEN REPLY @81 GOTO 37
  IF ~~ THEN REPLY @83 DO ~TakePartyGold(1000)~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.3 39.2
  SAY @85
  IF ~~ THEN REPLY @42 GOTO 37
  IF ~~ THEN REPLY @86 DO ~TakePartyGold(1000)~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.3 39.2
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 37
  IF ~~ THEN REPLY @46 GOTO 37
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 42 // from:
  SAY @89
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("ShaldrissaWasOffended","LOCALS",1)~ THEN BEGIN 43 // from:
  SAY @90
  IF ~~ THEN EXIT
END
