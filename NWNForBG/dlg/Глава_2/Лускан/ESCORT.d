// ������ �������� � ������, 2-� ������� ���������� ���� ���� ������� ���������� ���������� �������, �� ��� ������ ��� ��������, ��� ���-�� ������� �� ���, ��� ��� �� ���������� ������� � ������������.

BEGIN ~ESCORT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~���� �������� ��������� ����� �������, ��������. ������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 1 // from:
  SAY ~���� ���, ���������� � ��� �������? �� ����������. ����������, �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 2 // from:
  SAY ~��� �� �������, ����� ������?! ��� ������! ���!!!~
  IF ~~ THEN EXIT
END

