// ������ - ������� ����� 

BEGIN ~AAVILL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Class(LastTalkedToBy(Myself),DRUID_ALL)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @16
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @20
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3 8.2
  SAY @23
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1.2 11.1.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @30
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 14
  IF ~~ THEN REPLY @37 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY @38
  IF ~~ THEN REPLY @36 GOTO 14
  IF ~~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 20
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @48
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 23
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @53
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @54
  IF ~~ THEN REPLY @50 GOTO 23
  IF ~~ THEN REPLY @52 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @55
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",1)EraseJournalEntry(@96270)~ UNSOLVED_JOURNAL @98271 EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Class(LastTalkedToBy(Myself),DRUID_ALL)~ THEN BEGIN 26 // from:
  SAY @57
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 27 // from:
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 28
  IF ~~ THEN REPLY @60 GOTO 16
  IF ~  Global("Druid1Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @61 GOTO 29
  IF ~  Global("Druid2Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @62 GOTO 30
  IF ~  Global("Druid3Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @63 GOTO 31
  IF ~  Global("Druid1Saved","GLOBAL",1)Global("Druid2Saved","GLOBAL",1)Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @64 GOTO 32
  IF ~~ THEN REPLY @65 EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @66
  IF ~~ THEN REPLY @60 GOTO 16
  IF ~~ THEN REPLY @67 EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY @68
  IF ~~ THEN DO ~SetGlobal("Druid1Saved","GLOBAL",2)AddexperienceParty(12000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY @69
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",2)AddexperienceParty(12000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.4
  SAY @70
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",2)AddexperienceParty(12000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.5
  SAY @71
  IF ~~ THEN DO ~SetGlobal("Druid1Saved","GLOBAL",2)SetGlobal("Druid2Saved","GLOBAL",2)SetGlobal("Druid3Saved","GLOBAL",2)AddexperienceParty(36000)GiveGoldForce(3000)~ EXIT
END

// -----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 34
  IF ~  Global("Druid1Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @61 GOTO 29
  IF ~  Global("Druid2Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @62 GOTO 30
  IF ~  Global("Druid3Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @63 GOTO 31
  IF ~  Global("Druid1Saved","GLOBAL",1)Global("Druid2Saved","GLOBAL",1)Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @64 GOTO 32
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY @74 GOTO 35
  IF ~  Dead("SpiritFo")~ THEN REPLY @75 GOTO 36
  IF ~~ THEN REPLY @76 EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @77
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.6
  SAY @78
  IF ~~ THEN REPLY @79 GOTO 37
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @80 GOTO 38
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @80 GOTO 39
  IF ~~ THEN REPLY @81 GOTO 40
  IF ~~ THEN REPLY @82 GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 33.7
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 42
  IF ~~ THEN REPLY @85 GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",2)GiveGoldForce(5000)AddexperienceParty(180000)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98359 EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.2
  SAY @88
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",2)GiveGoldForce(6000)AddexperienceParty(180000)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98359 EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.3
  SAY @89
  IF ~~ THEN REPLY @79 GOTO 37
  IF ~~ THEN REPLY @81 GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.4
  SAY @90
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",2)GiveGoldForce(6000)AddexperienceParty(180000)ReputationInc(-1)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98359 EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.5
  SAY @91
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",2)AddexperienceParty(180000)ReputationInc(1)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98359 EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1
  SAY @92
  IF ~~ THEN REPLY @93 GOTO 44
  IF ~~ THEN REPLY @94 GOTO 45
  IF ~~ THEN REPLY @95 GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.1
  SAY @96
  IF ~~ THEN REPLY @93 GOTO 44
  IF ~~ THEN REPLY @94 GOTO 45
  IF ~~ THEN REPLY @95 GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY @97
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",3)GiveGoldForce(2500)AddexperienceParty(90000)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98370 EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.2
  SAY @99
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",3)AddexperienceParty(90000)ReputationInc(1)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98370 EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.3
  SAY @100
  IF ~~ THEN DO ~SetGlobal("AavillQuest","GLOBAL",3)GiveGoldForce(2500)AddexperienceParty(90000)ReputationInc(-1)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)
EraseJournalEntry(@98275)
EraseJournalEntry(@98276) ~ SOLVED_JOURNAL @98370 EXIT
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AavillQuest","GLOBAL",2)~ THEN BEGIN 47 // from:
  SAY @101
  IF ~  Global("Druid1Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @61 GOTO 29
  IF ~  Global("Druid2Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @62 GOTO 30
  IF ~  Global("Druid3Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @63 GOTO 31
  IF ~  Global("Druid1Saved","GLOBAL",1)Global("Druid2Saved","GLOBAL",1)Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @64 GOTO 32
  IF ~  !Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AavillQuest","GLOBAL",3)~ THEN BEGIN 48 // from:
  SAY @102
  IF ~  Global("Druid1Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @61 GOTO 29
  IF ~  Global("Druid2Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @62 GOTO 30
  IF ~  Global("Druid3Saved","GLOBAL",1)OR(3)!Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @63 GOTO 31
  IF ~  Global("Druid1Saved","GLOBAL",1)Global("Druid2Saved","GLOBAL",1)Global("Druid3Saved","GLOBAL",1)~ THEN REPLY @64 GOTO 32
  IF ~  !Global("Druid1Saved","GLOBAL",1)!Global("Druid2Saved","GLOBAL",1)!Global("Druid3Saved","GLOBAL",1)~ THEN EXIT
END
