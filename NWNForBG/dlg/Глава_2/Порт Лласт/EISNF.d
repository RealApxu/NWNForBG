// �������� ������: ����:�� ��������� � ���� ��������... --> ���: ��� ��� ����� � - � ��� ������, �����-�� �� ���, �����?

// ����-����� ��� ������������    ���� ���� 

BEGIN ~EISNF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")!Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~����������. �� �� �����, ����� � ���� � ���� ��� ������ ����.~
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~EISNM~ 8
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~�� ��������� � ���� ��������... ~
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~EISNM~ 9
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("Urt")Global("UrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY ~���� �� ������ ������������ ���� ����, ����� ������� ������, ����� � ��� �� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",1)!Dead("Urt")Global("UrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~��� �������, ���, ����� ���� �����! � ���� �� ��� ����� ���������� ���! ����� ��� ���������� � ���� �����, �� ����� ����� ��� �������������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("UrtGold","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY ~������� �� ���� �������, <SIRMAAM>! �� ��� ��� ������� ���������, � �� ��� ��� �������...~
  IF ~~ THEN EXIT
END