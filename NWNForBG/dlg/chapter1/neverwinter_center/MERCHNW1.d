// ����� ������������  �������� ��� ���� �� �������������� ��������� ������������. ���� �� �������� ��������, �� ��� ��� ����� �������� ��������� ������� �����������.

BEGIN ~MERCHNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("Merchnw1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

