// ����-����� ��� ������� ������� ���

BEGIN ~SONPL2~

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkedTo","LOCALS",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("TalkAboutUrt","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("TalkAboutUrt","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("TalkAboutUrt","LOCALS",1)~ GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3.4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("TalkAboutUrt","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("TalkAboutUrt","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY @13
  IF ~  Global("TalkAboutUrt","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("TalkAboutUrt","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @14
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @15 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @15 GOTO 4
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @17
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 8.2
  SAY @18
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @19
  IF ~~ THEN DO ~SetGlobal("TalkedTo","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @25
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @26
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 6.3
  SAY @27
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 6.4
  SAY @28
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 11.2
  SAY @29
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY @30
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~  Global("KnowShaldriss","LOCALS",0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @31 DO ~SetGlobal("KnowShaldriss","LOCALS",1)~ GOTO 16
  IF ~  Global("KnowShaldriss","LOCALS",0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @31 DO ~SetGlobal("KnowShaldriss","LOCALS",1)~ GOTO 17
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 8.3
  SAY @33
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY @34
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 8.5
  SAY @35
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 5
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TalkedTo","LOCALS",2)~ THEN BEGIN 19 // from:
  SAY @36
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @37 GOTO 5
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkedTo","LOCALS",1)~ THEN BEGIN 20 // from:
  SAY @38
  IF ~~ THEN EXTERN ~SONPL1~ 20
END

IF ~~ THEN BEGIN 21 // from: SONPL1
  SAY @39
  IF ~~ THEN EXTERN ~SONPL1~ 21
END

IF ~~ THEN BEGIN 22 // from: SONPL1
  SAY @40
  IF ~~ THEN DO ~SetGlobal("TalkedTo","LOCALS",2)~ EXIT
END
