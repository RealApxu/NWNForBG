// ���� ������������ ������� ���� ���������� ������� ������� ������� ������� ��� ���� ������� ����������� ������������� �� ��������. �� ���� ������ ���� ������� � �������� ����-�� ����������. 

BEGIN ~TAVERN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY ~������ �� ��� ��� ��� ��������. � ��� ���� ����� ��� ���?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY ~��� �������� ��� �������. ���. �������, ��� ���������. � �������, ���� ��� �� ���������. � �������, ���� ��� �� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY ~�������� �� ����� ������ ������������ ��� ��� ������. �� ����� ������ � ������, � ������� ��� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY ~���������, ��� �������� ���������. �� ����, ������ ��������� � ��������, ���� ���� ����� �� ���� ��� �������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY ~�������, ��� ����� ���� ����� ���������. ����� ������, ����� ������������ ���. ����� ��� �����-������ ���������� � ��� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)~ THEN BEGIN 5 // from:
  SAY ~� ��������� ���, ����� � ����� ��������, �� ��� �����-�� ������. ������ �� ���������� ����� ��������, ����� ��� ���� ������ ����?~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)~ THEN BEGIN 6 // from:
  SAY ~�������, �������� ����� �� �����. ������� ����������� ��. ����� �� ����� ������� ������� �����������. ������� �� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)~ THEN BEGIN 7 // from:
  SAY ~������� ����� ���, ��? �������, ��� ��� ��� �� �� ����. ������ ����, ����� ��� ����� ���������� � ���� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)~ THEN BEGIN 8 // from:
  SAY ~������... ����� ��� �� ������ ��������, ������� ��������... ���������, ��� �� ����� ��� ���.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)~ THEN BEGIN 9 // from:
  SAY ~������� ��� ������ �����������... ��� �� ������. ���� ���� ���������, ��� ��� �����, � ����������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,11)~ THEN BEGIN 10 // from:
  SAY ~������� �������� ������ ��������. ������ ���, ���� ������� �������, �������� ������� �� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,12)~ THEN BEGIN 11 // from:
  SAY ~������� ���. �������, ������� ���-���� �������� �������. �� � ���� �������� ������� �� ����... ���, ���...~
  IF ~~ THEN EXIT
END

