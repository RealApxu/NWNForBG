// ������ ����������� ������ ������ ������� ����� ������, ���� ������� � ������ ����� �������� ������� �������, ���� ���� ��� �� ������ ����.

// Global("KnowBaram","GLOBAL",2) - �� 1250    Global("KnowBaram","GLOBAL",1) - ��� �����

BEGIN ~BARAM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @13 GOTO 11
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @13 GOTO 12
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~  PartyHasItem("Nwmisc62")~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 14
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @17
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @18
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @19
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @23
  IF ~~ THEN REPLY @7 GOTO 18
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 0.2
  SAY @25
  IF ~~ THEN REPLY @7 GOTO 23
  IF ~~ THEN REPLY @26 GOTO 24
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 25
  IF ~~ THEN REPLY @27 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 28
  IF ~~ THEN REPLY @31 GOTO 29
  IF ~~ THEN REPLY @32 GOTO 30
  IF ~~ THEN REPLY @33 GOTO 31
END

IF ~~ THEN BEGIN 12 // from: 0.3
  SAY @34
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.4
  SAY @35
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",1)~ THEN REPLY @36 DO ~SetGlobal("LondaQuest","GLOBAL",2)~ GOTO 32
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",0)~ THEN REPLY @37 DO ~SetGlobal("LondaQuest","GLOBAL",2)~ GOTO 33
  IF ~~ THEN REPLY @38 GOTO 34
  IF ~~ THEN REPLY @39 GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 0.4
  SAY @40
  IF ~  Global("BaramOuest","GLOBAL",1)~ THEN GOTO 36
  IF ~  Global("BaramOuest","GLOBAL",0)~ THEN GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 6.1
  SAY @41
   IF ~~ THEN REPLY @7 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 7
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 3
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @5 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 6.1
  SAY @42
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @43
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 18 // 1500
  SAY @44
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 19 // 1500
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 38
  IF ~~ THEN REPLY @22 GOTO 39
END

IF ~~ THEN BEGIN 20 // 1500
  SAY @14
  IF ~  PartyHasItem("Nwmisc62")~ THEN REPLY @15 GOTO 40
  IF ~~ THEN REPLY @16 GOTO 41
END

IF ~~ THEN BEGIN 21 // 1500
  SAY @25
  IF ~~ THEN REPLY @7 GOTO 42
  IF ~~ THEN REPLY @26 GOTO 43
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 44
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 22 // 1500
  SAY @45
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 0.2
  SAY @46
  IF ~~ THEN REPLY @26 GOTO 24
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 25
  IF ~~ THEN REPLY @27 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 47
  IF ~~ THEN REPLY @49 GOTO 48
  IF ~~ THEN REPLY @50 GOTO 49
  IF ~~ THEN REPLY @51 GOTO 50
  IF ~~ THEN REPLY @52 GOTO 51
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 52
  IF ~~ THEN REPLY @53 GOTO 53
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY @54
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @55
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",1)SetGlobal("BaramQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @100569 EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY @57
  IF ~~ THEN REPLY @7 GOTO 18
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY @58
  IF ~~ THEN REPLY @7 GOTO 18
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 0.2
  SAY @59
  IF ~~ THEN REPLY @7 GOTO 18
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 31 // from: 0.3
  SAY @60
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 54
  IF ~~ THEN REPLY @63 GOTO 55
  IF ~~ THEN REPLY @64 GOTO 56
END

IF ~~ THEN BEGIN 33 // from: 0.4
  SAY @65
  IF ~~ THEN REPLY @62 GOTO 54
  IF ~~ THEN REPLY @63 GOTO 55
  IF ~~ THEN REPLY @64 GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 0.4
  SAY @66
  IF ~~ THEN DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 0.4
  SAY @67
  IF ~~ THEN DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 0.4
  SAY @68
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 0.4
  SAY @69
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @70 GOTO 6
END

IF ~~ THEN BEGIN 38 // 1500
  SAY @41
  IF ~~ THEN REPLY @7 GOTO 42
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 39 // 1500
  SAY @42
  IF ~~ THEN REPLY @7 GOTO 42
  IF ~  Dead("Kurt")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 40 // 1500
  SAY @35
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",1)~ THEN REPLY @36 DO ~SetGlobal("LondaQuest","GLOBAL",2)SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ GOTO 57
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",0)~ THEN REPLY @37 DO ~SetGlobal("LondaQuest","GLOBAL",2)SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ GOTO 58
  IF ~~ THEN REPLY @38 DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ GOTO 59
  IF ~~ THEN REPLY @39 DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ GOTO 60
END

IF ~~ THEN BEGIN 41 // 1500
  SAY @40
  IF ~  Global("BaramOuest","GLOBAL",1)~ THEN GOTO 61
  IF ~  Global("BaramOuest","GLOBAL",0)~ THEN GOTO 62
END

IF ~~ THEN BEGIN 42 // from: 1500
  SAY @46
  IF ~~ THEN REPLY @26 GOTO 43
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 44
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 43 // 1500
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 63
  IF ~~ THEN REPLY @49 GOTO 64
  IF ~~ THEN REPLY @50 GOTO 65
  IF ~~ THEN REPLY @51 GOTO 66
  IF ~~ THEN REPLY @52 GOTO 67
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 44 // 1500
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 68
  IF ~~ THEN REPLY @22 GOTO 69
END

IF ~~ THEN BEGIN 45 // 1500
  SAY @54
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 46 // 1500
  SAY @71
  IF ~~ THEN DO ~SetGlobal("KnowBaram","GLOBAL",2)SetGlobal("BaramQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @100569 EXIT
END

IF ~~ THEN BEGIN 47 // from: 0.2
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 70
  IF ~~ THEN REPLY @49 GOTO 48
  IF ~~ THEN REPLY @50 GOTO 49
  IF ~~ THEN REPLY @51 GOTO 50
  IF ~~ THEN REPLY @52 GOTO 51
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 48 // from: 0.2
  SAY @74
  IF ~~ THEN REPLY @48 GOTO 47
  IF ~~ THEN REPLY @50 GOTO 49
  IF ~~ THEN REPLY @51 GOTO 50
  IF ~~ THEN REPLY @52 GOTO 51
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 49 // from: 0.2
  SAY @75
  IF ~~ THEN REPLY @48 GOTO 47
  IF ~~ THEN REPLY @49 GOTO 48
  IF ~~ THEN REPLY @51 GOTO 50
  IF ~~ THEN REPLY @52 GOTO 51
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 50 // from: 0.2
  SAY @76
  IF ~~ THEN REPLY @48 GOTO 47
  IF ~~ THEN REPLY @49 GOTO 48
  IF ~~ THEN REPLY @50 GOTO 49
  IF ~~ THEN REPLY @52 GOTO 51
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 51 // from: 0.2
  SAY @77
  IF ~~ THEN REPLY @7 GOTO 23
  IF ~  Global("LondaQuest","GLOBAL",1)~ THEN REPLY @78 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 52
  IF ~~ THEN REPLY @27 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 52 // from: 0.2
  SAY @79
  IF ~~ THEN REPLY @7 GOTO 23
  IF ~~ THEN REPLY @26 GOTO 24
  IF ~~ THEN REPLY @27 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 53 // from: 0.2
  SAY @80
  IF ~~ THEN REPLY @7 GOTO 23
  IF ~~ THEN REPLY @26 GOTO 24
  IF ~~ THEN REPLY @27 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 54 // from: 0.4
  SAY @81
  IF ~~ THEN DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 0.4
  SAY @82
  IF ~~ THEN DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 0.4
  SAY @83
  IF ~~ THEN DO ~SetGlobal("BaramQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Nwdagg01",LastTalkedToBy)GiveItem("Wandnw4",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 57 // 1500
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 71
  IF ~~ THEN REPLY @63 GOTO 72
  IF ~~ THEN REPLY @64 GOTO 73
END

IF ~~ THEN BEGIN 58 // 1500
  SAY @65
  IF ~~ THEN REPLY @62 GOTO 71
  IF ~~ THEN REPLY @63 GOTO 72
  IF ~~ THEN REPLY @64 GOTO 73
END

IF ~~ THEN BEGIN 59 // 1500
  SAY @84
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // 1500
  SAY @67
  IF ~~ THEN REPLY @62 GOTO 71
  IF ~~ THEN REPLY @63 GOTO 72
  IF ~~ THEN REPLY @64 GOTO 73
END

IF ~~ THEN BEGIN 61 // from: 0.1
  SAY @68
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // 1500
  SAY @69
  IF ~~ THEN REPLY @7 GOTO 18
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",0)~ THEN REPLY @8 GOTO 19
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 63 // 1500
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 74
  IF ~~ THEN REPLY @49 GOTO 64
  IF ~~ THEN REPLY @50 GOTO 65
  IF ~~ THEN REPLY @51 GOTO 66
  IF ~~ THEN REPLY @52 GOTO 67
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 64 // 1500
  SAY @74
  IF ~~ THEN REPLY @48 GOTO 63
  IF ~~ THEN REPLY @50 GOTO 65
  IF ~~ THEN REPLY @51 GOTO 66
  IF ~~ THEN REPLY @52 GOTO 67
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 65 // 1500
  SAY @85
  IF ~~ THEN REPLY @48 GOTO 63
  IF ~~ THEN REPLY @49 GOTO 64
  IF ~~ THEN REPLY @51 GOTO 66
  IF ~~ THEN REPLY @52 GOTO 67
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 66 // 1500
  SAY @76
  IF ~~ THEN REPLY @48 GOTO 63
  IF ~~ THEN REPLY @49 GOTO 64
  IF ~~ THEN REPLY @50 GOTO 65
  IF ~~ THEN REPLY @52 GOTO 67
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 67 // 1500
  SAY @77
  IF ~~ THEN REPLY @7 GOTO 42
  IF ~~ THEN REPLY @26 GOTO 43
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",0)~ THEN REPLY @8 GOTO 44
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 68 // 1500
  SAY @86
  IF ~~ THEN REPLY @7 GOTO 42
  IF ~~ THEN REPLY @26 GOTO 43
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 69 // 1500
  SAY @80
  IF ~~ THEN REPLY @7 GOTO 42
  IF ~~ THEN REPLY @26 GOTO 43
  IF ~~ THEN REPLY @27 GOTO 45
  IF ~~ THEN REPLY @28 GOTO 46
END

IF ~~ THEN BEGIN 70 // from: 0.2
  SAY @87
  IF ~~ THEN REPLY @49 GOTO 48
  IF ~~ THEN REPLY @50 GOTO 49
  IF ~~ THEN REPLY @51 GOTO 50
  IF ~~ THEN REPLY @52 GOTO 51
  IF ~~ THEN REPLY @28 GOTO 27
END

IF ~~ THEN BEGIN 71 // 1500
  SAY @88
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // 1500
  SAY @82
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // 1500
  SAY @83
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // 1500
  SAY @87
  IF ~~ THEN REPLY @49 GOTO 64
  IF ~~ THEN REPLY @50 GOTO 65
  IF ~~ THEN REPLY @51 GOTO 66
  IF ~~ THEN REPLY @52 GOTO 67
  IF ~~ THEN REPLY @28 GOTO 46
END

// -----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 75 // from:
  SAY @89
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

// -----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("BaramQuest","GLOBAL",1)~ THEN BEGIN 76 // from:
  SAY @90
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @91 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @91 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 77
  IF ~  Global("LondaQuest","GLOBAL",1)Global("Londa","GLOBAL",0)~ THEN REPLY @8 GOTO 78
  IF ~~ THEN REPLY @27 GOTO 79
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 77 //
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 81
  IF ~~ THEN REPLY @49 GOTO 82
  IF ~~ THEN REPLY @50 GOTO 83
  IF ~~ THEN REPLY @51 GOTO 84
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 78 //
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Londa","GLOBAL",1)~ GOTO 85
  IF ~~ THEN REPLY @22 GOTO 86
END

IF ~~ THEN BEGIN 79 //
  SAY @92
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 //
  SAY @93
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 //
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 87
  IF ~~ THEN REPLY @49 GOTO 82
  IF ~~ THEN REPLY @50 GOTO 83
  IF ~~ THEN REPLY @51 GOTO 84
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 82 //
  SAY @74
  IF ~~ THEN REPLY @48 GOTO 81
  IF ~~ THEN REPLY @50 GOTO 83
  IF ~~ THEN REPLY @51 GOTO 84
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 83 //
  SAY @85
  IF ~~ THEN REPLY @48 GOTO 81
  IF ~~ THEN REPLY @49 GOTO 82
  IF ~~ THEN REPLY @51 GOTO 84
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 84 //
  SAY @76
  IF ~~ THEN REPLY @48 GOTO 81
  IF ~~ THEN REPLY @49 GOTO 82
  IF ~~ THEN REPLY @50 GOTO 83
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 85 //
  SAY @79
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @94 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @94 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 77
  IF ~~ THEN REPLY @27 GOTO 79
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 86 //
  SAY @80
  IF ~  Dead("Kurt")GlobalLT("KnowBaram","GLOBAL",2)~ THEN REPLY @94 GOTO 4
  IF ~  Dead("Kurt")GlobalGT("KnowBaram","GLOBAL",1)~ THEN REPLY @94 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 77
  IF ~~ THEN REPLY @27 GOTO 79
  IF ~~ THEN REPLY @28 GOTO 80
END

IF ~~ THEN BEGIN 87 //
  SAY @87
  IF ~~ THEN REPLY @49 GOTO 82
  IF ~~ THEN REPLY @50 GOTO 83
  IF ~~ THEN REPLY @51 GOTO 84
  IF ~~ THEN REPLY @28 GOTO 80
END

// -----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("BaramQuest","GLOBAL",1)~ THEN BEGIN 88 // from:
  SAY @95
  IF ~~ THEN EXIT
END

