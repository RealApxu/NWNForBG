// ������ -  ����� ������� - 3 ���� - ������ ������  ����� ���� ����� �������� ������. ���������, ���� �� �����....

BEGIN ~NWABYSSR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("AbyssPortalClosed","MYAREA",0)~ THEN BEGIN 10 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   Global("AbyssPortalClosed","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~  OR(3)CheckStatGT(LastTalkedToBy(Myself),30,LORE)CheckStatGT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY @2 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),30,LORE)CheckStatLT(LastTalkedToBy(Myself),17,INT)CheckStatLT(LastTalkedToBy(Myself),17,WIS)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY @7
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @8
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @9
  IF ~  OR(3)CheckStatGT(LastTalkedToBy(Myself),30,LORE)CheckStatGT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY @2 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),30,LORE)CheckStatLT(LastTalkedToBy(Myself),17,INT)CheckStatLT(LastTalkedToBy(Myself),17,WIS)~ THEN REPLY @2 GOTO 3
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("NWQUASGE")~ THEN REPLY @4 GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("NWIMPGOE")~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY @10
  IF ~~ THEN DO ~SetGlobal("QuasitEyeUsed","MYAREA",1)SetGlobal("AbyssPortalClosed","MYAREA",1)TakePartyItem("NWQUASGE")DestroyItem("NWQUASGE")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY @12
  IF ~~ THEN DO ~SetGlobal("ImpEyeUsed","MYAREA",1)SetGlobal("AbyssPortalClosed","MYAREA",1)TakePartyItem("NWIMPGOE")DestroyItem("NWIMPGOE")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.8
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.9
  SAY @14
  IF ~~ THEN EXIT
END

