// ���������� ������ ���������   ���� ����� ��������� �������� ��������� � ���������� ����� ������ ����� ������ � ������������� ����.

BEGIN ~SOLDGNW5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)RandomNum(1,2)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)RandomNum(2,2)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @13
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY @14
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY @15
  IF ~~ THEN EXIT
END

