// �������� ������, ������� ������� ������, ������� 1 ���������� ��� �������� ������ ����������, ���������� ������� �����, ������� ��������� ���.

BEGIN ~WENCH2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~���� ��� ���-�� �����, <SIRMAAM>, � ������ �������.~
  IF ~~ THEN REPLY ~���� � ���������� ������ ��� ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~����� ������. � �������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� ������ ��� ������������� ������.~
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 8
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���������� � ���������, ���� ��� ���-�� ������ �����, <SIRMAAM>. ����� ���������� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~����� ����, ��� �� ������ ������� ��-�� ����? �� ���, ������-��. �� ��� ��� ������, ��� �� �� ����.~
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 8
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~������������� �� ����, <SIRMAAM>. � ������ �� �����������.~
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 8
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~�� ���, ��� ��� ������� ����������. ������ � ��� ���������� ���, ��, �����, ����� ���, ���� ����� �������. � ��� ���������. �� ���� ������.~
  IF ~~ THEN REPLY ~� ��� ������ ��������� � ���� �������?~ GOTO 10
  IF ~~ THEN REPLY ~��������? ���������� ��� � ���.~ GOTO 11
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~�� ���, ��� ��� ������� ����������. ������ � ��� ���������� ���, ��, �����, ����� ���, ���������. �� ����� ��������.~
  IF ~~ THEN REPLY ~��������? ���������� ��� � ���.~ GOTO 12
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~�� ���, ��� ������ ������� ����������. ������ � ��� ���������� ���, ��, �����, ����� ���, ���� ����� �������.~
  IF ~~ THEN REPLY ~� ��� ������ ��������� � ���� �������?~ GOTO 13
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY ~�� ���, ��� ������ ������� ����������. ������ � ��� ���������� ���.~
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 1.7
  SAY ~�������. ������ ����� �� ������� ��� �� ��������� � ������ �������.~
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~���-������ ���������� ���������� � ���������� ��������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~��������� ������, <SIRMAAM>. ��� �������, � �� ����������. ������� - ���������� ������� ���������, � ��� ��������� ���, ��� ��������� ������.~
  IF ~~ THEN REPLY ~�. � �� ����������� �� �� �����, ��� � ���?~ GOTO 14
  IF ~~ THEN REPLY ~���������� ��� � ���������.~ GOTO 11
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~��� �, ��������� ����� ����� ���� �������� ������ ����� ���� � ���������� �������. ����� ��� ���, ��� ���, ��� ���-�� � ���� ����. �� ����� � �������, �������. �������� ����� ������ ����� ����� ��� � ���. ���� ��� � ���. �� ����, �� ���� �� ��������. ��, ����� ��, ������� �������� ����� - � ������ �����. ���� ��� �������?~
  IF ~~ THEN REPLY ~���������� ��� � �������.~ GOTO 10
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~��� �, ��������� ����� ����� ���� �������� ������ ����� ���� � ���������� �������. ����� ��� ���, ��� ���, ��� ���-�� � ���� ����. �� ����� � �������, �������. �������� ����� ������ ����� ����� ��� � ���. ���� ��� � ���. �� ����, �� ���� �� ��������. ��, ����� ��, ������� �������� ����� - � ������ �����. ���� ��� �������?~
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY ~��������� ������, <SIRMAAM>. ��� �������, � �� ����������. ������� - ���������� ������� ���������, � ��� ��������� ���, ��� ��������� ������.~
  IF ~~ THEN REPLY ~�. � �� ����������� �� �� �����, ��� � ���?~ GOTO 15
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~��, ������� ���. ��� �� � ��� �����������, ��������. ��-��! ������ � ������, ��� ��� - ������� ������� ����, ���� ����� �������� �������, ���� ����� ���������� ���� �� ������ �������, ���������?~
  IF ~~ THEN REPLY ~���������� ��� � ���������.~ GOTO 11
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY ~��, ������� ���. ��� �� � ��� �����������, ��������. ��-��! ������ � ������, ��� ��� - ������� ������� ����, ���� ����� �������� �������, ���� ����� ���������� ���� �� ������ �������, ���������?~
  IF ~~ THEN REPLY ~�� ���-������ ������ � ���, ��� ���������� � �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ����� ��������� ��� ��� ����?~ GOTO 4
  IF ~~ THEN REPLY ~� ��� �������� ���������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ���� ��� �����������.~ GOTO 2
END
