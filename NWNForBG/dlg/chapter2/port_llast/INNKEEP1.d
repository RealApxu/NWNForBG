// ����-����� ������� ���� ����� ����������

BEGIN ~INNKEEP1~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,INT)Global("Fraud","LOCALS",0)~ THEN REPLY @2 DO ~SetGlobal("Fraud","LOCALS",1)~ GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,INT)Global("Fraud","LOCALS",0)~ THEN REPLY @2 DO ~SetGlobal("Fraud","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("Innkeep1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~  RandomNum(2,1)~ THEN REPLY @10 DO ~GiveGoldForce(100)~ GOTO 7
  IF ~  RandomNum(2,2)~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @17
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @18
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @19
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 5
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY @35
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 20
  IF ~~ THEN REPLY @39 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 4
  IF ~~ THEN REPLY @42 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 11.2
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 4
  IF ~~ THEN REPLY @42 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 19
  IF ~~ THEN REPLY @48 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.2
  SAY @50
  IF ~  RandomNum(2,1)~ THEN REPLY @51 GOTO 22
  IF ~  RandomNum(2,2)~ THEN REPLY @51 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @52
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @53 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 19
  IF ~~ THEN REPLY @56 GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 19
  IF ~~ THEN REPLY @56 GOTO 4
END
