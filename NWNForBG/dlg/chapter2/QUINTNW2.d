// ������, ����� ����� - ��������. ��� ������ ������ �������� ��������� � �������.

BEGIN ~QUINTNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowQuint","GLOBAL",0)GlobalLT("JaregQuest","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("Talked_with_Quint","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @13
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("KnowKarlat","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~  PartyHasItem("QuintJ")~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.2
  SAY @20
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("KnowKarlat","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~  PartyHasItem("QuintJ")~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.3
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 9.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.2 9.2
  SAY @28
  IF ~~ THEN DO ~SetGlobal("KnowQuint","GLOBAL",1)GiveItemCreate("QuintT",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3 9.3
  SAY @29
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  PartyHasItem("QuintJ")~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 7.4 9.4
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @35
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @36
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY @37
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 10.4
  SAY @38
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 10.5
  SAY @39
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("KnowKarlat","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~  PartyHasItem("QuintJ")~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY @40
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @41 DO ~SetGlobal("QuintJournal","MYAREA",1)~ GOTO 11
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 13.2
  SAY @42
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @41 DO ~SetGlobal("QuintJournal","MYAREA",1)~ GOTO 11
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY @43
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @41 DO ~SetGlobal("QuintJournal","MYAREA",1)~ GOTO 11
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 13.4
  SAY @44
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("KnowKarlat","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 23 // from: KARLATNW 26
  SAY @45
  IF ~~ THEN EXTERN ~GUARDIAN~ 35
END

IF ~~ THEN BEGIN 24 // from: GUARDIAN 36.1 39.1
  SAY @46
  IF ~~ THEN EXTERN ~GUARDIAN~ 40
END

IF ~~ THEN BEGIN 25 // from: GUARDIAN 49.1
  SAY @47
  IF ~~ THEN EXTERN ~GUARDIAN~ 50
END

IF ~~ THEN BEGIN 26 // from: GUARDIAN 64.1
  SAY @47
  IF ~~ THEN EXTERN ~GUARDIAN~ 65
END

IF ~~ THEN BEGIN 27 // from: GUARDIAN 69.1
  SAY @47
  IF ~~ THEN EXTERN ~GUARDIAN~ 70
END

IF ~~ THEN BEGIN 28 // from: GUARDIAN 41.1
  SAY @48
  IF ~~ THEN EXTERN ~GUARDIAN~ 43
END

IF ~~ THEN BEGIN 29 // from: GUARDIAN 56.1
  SAY @49
  IF ~~ THEN EXTERN ~GUARDIAN~ 57
END

IF ~~ THEN BEGIN 30 // from: GUARDIAN 79.1
  SAY @47
  IF ~~ THEN EXTERN ~GUARDIAN~ 80
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowQuint","GLOBAL",1)GlobalLT("JaregQuest","GLOBAL",3)~ THEN BEGIN 31 // from:
  SAY @50
  IF ~~ THEN EXIT
END
