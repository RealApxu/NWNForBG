// ������, ��� - ��������� ������� ���� �� ����� ������� �������� ������ ���������, �� ���-�� � ���� �� ���. �� ������ ��������� ����-�� �����, �, �������, �� � ���� �� ��� ��� ������� ���. ��� �� �������� � �� ���������� ����������. ��� ��� ��������, � ������ �������� ����� �� �� �����.

BEGIN ~CHARWHO2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~� ��� ����?~
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY ~��� ��� �� �������.~ GOTO 1
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY ~�� ��� ������������� ������.~ GOTO 2
  IF ~~ THEN REPLY ~����� ����, �� �������� c ���-�� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�. � ��� �� ����. ��� ��������... ������ ������ ���� � ��������� ���... ��� ����?~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������? � ��� �� ����. ����� � ����, ����� �� � ���, � ����� � ������. � �� ����.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~� ��� �� ����. �����, �� ������� �������, � ������� � ������������, � ����� ������. � ������ �� ����.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~���� � � ��� �� ����� �����, �� ���� ��. � ���� ����, �� �� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1 2 3
  SAY ~� ���, ��� ���-�� ��������, �� ���� ���� ��� ���������, ��� ������� �� ������������. � ��� � ������������ �� ������. ������.~
  IF ~~ THEN REPLY ~���� �� ����� �����?~ GOTO 6
  IF ~~ THEN REPLY ~��� ����� � ���� ��������? �� ��� ����� ��������.~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~�����. � ����� ������, �� ��� ������� �� ��������� �� �����, � � �����, �� ��� ��� ���������. ����� ������.  � ��� �� ����. �� ������������ �������, � � ���� ������ �� ���� �� ��� ������. �������, ������?~
  IF ~~ THEN REPLY ~��� ����� �����?~ GOTO 8
  IF ~~ THEN REPLY ~��� ��������� �� ����� ����?~ GOTO 8
  IF ~~ THEN REPLY ~��� ���������� ����� ������� � �����.~ GOTO 9
  IF ~~ THEN REPLY ~� �����~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~��, �����, ����� ���? �� ������, ��� ��� ����������, �� ��� �� �����������, � �� �������� �� ��������. ���, ����� ������.  � ��� �� ����. �� ������������ �������, � � ���� ������ �� ���� �� ��� ������. �������, ������?~
  IF ~~ THEN REPLY ~��� ����� �����?~ GOTO 8
  IF ~~ THEN REPLY ~��� ��������� �� ����� ����?~ GOTO 8
  IF ~~ THEN REPLY ~��� ���������� ����� ������� � �����.~ GOTO 9
  IF ~~ THEN REPLY ~� �����~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.1
  SAY ~�, �� ��� ������� ���. ��� ��� ���������. � �� ���� �������. � ����, ��� ������� � ���� ������. � ����, ��� ������ �� ��������... �� �� ���� �� ���... �����, ��� ��� ��� ��� ���������. ��� ��� ����. ������ ������ �� ���� � ������ ��������...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.2
  SAY ~��, ��� ������������ ����. � ���� ����, �� ��� �� ����� ������. � ����, ��� � �������. � ����, ��� ������ �� ��������... �� �� ���� �� ���. �����, ��� ��� ��� ��� ���������. ��� ��� ����. ������ ������ �� ���� � ������ ��������...~
  IF ~~ THEN EXIT
END
