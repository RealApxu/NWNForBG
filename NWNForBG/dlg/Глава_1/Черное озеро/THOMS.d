// ���������� �������� ���������� ���� ���������   ���� ����������, ������, �������� ������ ������ ������ � ������ ������ ���������� ������.

// DisplayStringHead(Myself,000000) ��� ��, ������� ��������?! ������! ��� � ������ ����������, ����� ��� ���������� ����!

BEGIN ~THOMS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�� ������ ����� �� ���������� � ��� ���! ��� ����� ���� ���������?! � ������ ������!~
  IF ~~ THEN REPLY ~��� �� ������ ��� �����?~ GOTO 1
  IF ~~ THEN REPLY ~���������, ������ ��������, � �� �� ���������!~ GOTO 2
  IF ~~ THEN REPLY ~�� ����������. � �����.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, � ��� �� ��� ��� ��� �� ��� �������? ��� �, ���� �� ����� ���� �������, ����� ��������� ���, ��� � ��������� ���������� �� ����!~
  IF ~~ THEN REPLY ~���������, ������ ��������, � �� �� ���������!~ GOTO 2
  IF ~~ THEN REPLY ~�� ����������. � �����.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�... �-�� �� ����, �� ����� ��� �������������. � �� ��������� �������� ���... � ���� ����� �������� ��� � �������... �? ��... ��, ����� �����, ��� ������... ������� ����� ��������... ������, ��� ������... � ��� �� ��� ����, ��� ������...~
  IF ~~ THEN REPLY ~�� ����� ���� �������, �� ��� �� ������.~ GOTO 4
  IF ~~ THEN REPLY ~���������. ��� � ����������, � ����� �� ����������.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
    SAY ~�����������? ���� ��� �������?! �� ������ ��������� �������! ������! ������ ����� �����!~
  IF ~~ THEN DO ~ChangeClass(Myself,FIGHTER)SetGlobal("ThomsAttack","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~���? ������ ��� ������ �������� ������������! ������! ��������!~
  IF ~~ THEN DO ~SetGlobal("ThomsAttack","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~*��������* �� ��, ��� � ����� �������... �-������ �� �������� ����...~
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~������, ��� ������... ��� ����� ������� ��� ������... ��������� �����...~
  IF ~~ THEN EXIT
END

