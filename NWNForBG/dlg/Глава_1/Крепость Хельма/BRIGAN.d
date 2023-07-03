// ������ � �������� ������  ������ - ����. ���� ���� ����������� ���� ����� ���, ��� ����� ���� �������� ����-�� ����������. �� �������� � ���� ����, ��� ����� ���-�� ����������.

BEGIN ~BRIGAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�� ��� �������, ������� �� ��� ���? ������ ����, �� ������ ������� �������� �������.~ [BRIGAN56]
  IF ~~ THEN REPLY ~� ���� ���� ���� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� �� � ����, ��? �� �� �������. ��, �����, ���� �������� �� �������� ������ �������, ��� �... ����� ������� ����, ���� � �������.~
  IF ~~ THEN REPLY ~��� �� ������ �������?~ GOTO 3
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����������� ����...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~�������. ������ ��� � ������ ������� �������� ������� � ���� ��������. ������ ����, �� ������ �������, ������ ��� ��� ���� ���������, ����� �� ����� � �����������. ������, ����� �� ��������, ����� ����, ����� ��� ������ ������������.~
  IF ~~ THEN REPLY ~�������. ��� ��� �����?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� "���������"?~ GOTO 6
  IF ~~ THEN REPLY ~�� �������, ��� ������ ��������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~����� ���� ������, ��� ����� �������� � �������� ������, ��� ����� ��� �����. ��� ������ ������, ��� ��������, ����� � ���, ������ ��� ��� ������ ������� ��� � ������� �������. ����������� ������ � ������ ����������� - �� ������� ����, ��� ���� ��, ���� �� ������ ������� ������ �� �������� ���� ����� ����� ���� �... ��������, ��� � ��� ������...~
  IF ~~ THEN REPLY ~"������ �������" ������ - ���������. ���� ����� ������ ����, ����� ��������� ���.~ GOTO 8
  IF ~~ THEN REPLY ~��� �� ������ �������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~��, ��� �������� ������ ��� ����� �����, ��� �. � ��� �������� �������� � ��������, ����� ��� � ������, ��� �� �������� ��� � ��������� ����. ����� � �������� �� � ���� ������ ����� ������. ���� � ����� ���� ��� ���� �� ������ �������, �� � ��������� ��� �������� � ������������.~
  IF ~~ THEN REPLY ~���-������ � ���� �������� �� ������� ��� ��������?~ GOTO 9
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� "���������"?~ GOTO 6
  IF ~~ THEN REPLY ~�� �������, ��� ������ ��������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~��������, ������ ����. ��-�����, ��� �� ����� �������� ������, ��, �����, ���� ��� ����� ������ ��� ����� ����� �������� ���, ��� �� �����...~
  IF ~~ THEN REPLY ~����� �� ������, ��� ��� ��� �� ������ �� ����?~ GOTO 10
  IF ~~ THEN REPLY ~�������. ��� ��� �����?~ GOTO 5
  IF ~~ THEN REPLY ~�� �������, ��� ������ ��������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY ~������, ��� ���. � ��������� ����� �������� � ���� ����� ��� ����������� �����, ��� ����� �� � ��� ��������-����� ��������� ����� �� ��� �����, ��� ������ ������ ��.~
  IF ~~ THEN REPLY ~���� �� ����������?~ GOTO 11
  IF ~~ THEN REPLY ~�������. ��� ��� �����?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� "���������"?~ GOTO 6
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY ~�� ��� �������, �� ��� ��������? � � ���� *�������* ����� ����, ��� � ������ ��������� �������� ���� ���-�� �������. ����� �� ����� � �����������, �� ����� ��� ����� ���� � ������ ���� ������ ����. ������, ��� ��� ����, ����� �������� ���� �� ����������� ����, ������� ������� ������� �� ���������.~
  IF ~  AreaCheck("NW1033")~ THEN GOTO 12
  IF ~  AreaCheck("NW1039")~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY ~�, � �����, ��� ��������� ������, ��� ������� ����� � ����� ����� �� ��������. � �����, ��� ����� �� �������� �������� �� ����� ���������. ��� ��� ���-������ �����?~
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� "���������"?~ GOTO 6
  IF ~~ THEN REPLY ~�� �������, ��� ������ ��������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY ~� ��� ��� ��������� ���� ������, ���� �� ��� �� ����� ���, ��� ������. � ��� ������ �� ������� � �������. ������ ������ � �������� ������� ���������� ����������� �������, � ��� � ����� ��������� ��� ������ � ���������� ������, ����� ���������� ��� ��� �������.~
  IF ~~ THEN REPLY ~�������. ��� ��� �����?~ GOTO 5
  IF ~~ THEN REPLY ~�� �������, ��� ������ ��������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY ~����� � �������� - ��� ������������ ������, �� ������� ����� ������. �� ������ �� ������ ���-������ ���?~
  IF ~~ THEN REPLY ~�������. ��� ��� �����?~ GOTO 5
  IF ~~ THEN REPLY ~������ �� ������, ��� ��� ����� "���������"?~ GOTO 6
  IF ~~ THEN REPLY ~��� ��� �� �����?~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY ~��� ��� ����� ������� ����. �������� ��� ��� ����, � �, �����, �������� ���... ��� ������!!! �������, � ���� ����� ���� ����������� ������� �������� ������. ������, ������ ������� �� ���� ��� ��������� � ������ �� ���� ������. �����, ��� ������. � �����.~
  IF ~~ THEN DO ~MoveToObject("To1039")MoveBetweenAreas("NW1039",[745.381],2)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY ~��� ��� ����� ������� ����. �������� ��� ��� ����, � �, �����, �������� ���... ��� ������!!! �������, � ���� ����� ���� ����������� ������� �������� ������. ������, ������ ������� �� ���� ��� ��������� � ������ �� ���� ������.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~������ ������� ������ ������������ ����, ��� ����� ���������� ��������... ��������, �� ���� � ���� ���.~
  IF ~~ THEN REPLY ~� ���� ���� ���� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

