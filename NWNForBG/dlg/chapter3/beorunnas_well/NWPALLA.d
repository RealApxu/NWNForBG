// ������� ��������\����� �������   ���� ��� ������� ������� � �� ����� ������������ ��������� ������ ��������, ����� �����, ��� ��� ������ ����� ������� � �������� � ����� �� �������� �������.

BEGIN ~NWPALLA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @15
  IF ~~ THEN REPLY @3 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @8
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @16
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @17
  IF ~~ THEN EXIT
END

