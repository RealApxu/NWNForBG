// ����� ������������  ��� ������� ������� �� ������ �����.  ��� �������, ��������, ����������. ���� �� �� ������������ ����, ���� ����������� �� ����� � ��� �� ������.

BEGIN ~PHOEBE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~��� ��� �����? � �� ��������, � ����� �� ���� ������. � ���� ������ �����, ���� ���� �� ������� ����, � � ���� ��� ���� ����� �������. �� �����, ��� ���� �� �����, ���� �� ���� ��������, �������� ���� ���, �� ������ �� � �����, ������� �������� �� �� �����. ���, �������, ����� ���� ������ �����, �� ��� �����, ��� ������ ������ ����� � ������� ��� ��������� ������.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~����� ����, � ���� ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���, ����������, � �� ���� ������ �� ���� ������.~
  IF ~~ THEN REPLY ~����� ����, � ���� ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~����� ���� �������� ���? � ����� ���� ����������� �� ������ �����. �������� ������, ��������, ������ ����, ��� � ��� ���������, ���� �� ���� � �����. ������ ���� � �����. ����������.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~��, ������ �������� ����. ��� ������ ������ ����.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(2,2)~ THEN BEGIN 5 // from:
  SAY ~�����, �� ������� ����. ��� � ��� ���������. � ���� ������ ���. ��� ���� ��������, ����� ���� � �������. �� �����, ��� ���� �� �����, ���� �� ���� ��������, �������� ���� ���, �� ������ �� � �����, ������� �������� �� �� �����. ���, �������, ����� ���� ������ �����, �� ��� �����, ��� ������ ������ ����� � ������� ��� ��������� ������.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~����� ����, � ���� ���� ������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~����� ������ ���? �� ����, ��� � �������. � ��� ����, ��� ���� ��������� �����... ���� ��� � ��������� �������... �� ������� ���� � ���� ���.~
  IF ~~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

