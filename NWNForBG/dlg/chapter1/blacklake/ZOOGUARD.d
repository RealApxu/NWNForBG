// ���������� ������ ������   ���� ������������� �������� ������� ������� �� ���. ����� �������� ����� �� �� ������� ����������. ������, �� ������ �������� �������� �� ����, ���� ��������� �������������.

BEGIN ~ZOOGUARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN EXIT
END

