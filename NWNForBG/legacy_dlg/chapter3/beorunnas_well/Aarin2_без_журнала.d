// ������� ��������   ����� ������       ����� ����

BEGIN ~AARIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~����� ���� ��������, �� ��� �� <CHARNAME>? � ���� ������������� ������ � ���.~ ~����� ���� ��������, �� ��� �� <CHARNAME>? � ���� ������������� ������ � ���.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 1 // from:
  SAY ~��� ��� ����� ���-�� ����� ��������, �� ������ ��, <CHARNAME>? ����� ������������ �������� ���������, � �� ����� ����� �� ������ ���, � �������, ��� �� ������� ���.~ [AARIN310]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN GOTO 2
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY ~� ������ ��������, <CHARNAME>, � �����������, ����� ���� ����� ������, ��� ��� ������� ����� ����� �������� ���. ����� � ����������� � ���� ���� ��� ����... ����������.~ [AARIN311]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~�� ���� ��� �� ������ ������������ ������ ������ ����. ����� ������������� ������ ���� ����� ������ ���� ����� ��������� ���������� �������� ����� ������ �����.~ [AARIN313]
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY ~����������� ��������� �� ���, <CHARNAME> - � � ���. �� ������ ������� ��� ��  ��� ���������, ����� ��������� �� ������ ��� ������� ������.~ [AARIN312]
  IF ~~ THEN REPLY ~��� ���� ������� ����� ������� ������������, �����.~ GOTO 6
  IF ~~ THEN REPLY ~���� � ����� ��������� ������� ������������ ���� �� ����. ����������� ������ ������ ����� ������.~ GOTO 6
  IF ~~ THEN REPLY ~� ��� ���� �������, ����. ������� �������� ������.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~������ ������, � �� ��������� ���������� � ����. �� ����������� ��������� �� ���, � � �� �� ��� �� �������.~ [AARIN314]
  IF ~~ THEN REPLY ~��� ���� ������� ����� ������� ������������, �����.~ GOTO 6
  IF ~~ THEN REPLY ~���� � ����� ��������� ������� ������������ ���� �� ����. ����������� ������ ������ ����� ������.~ GOTO 6
  IF ~~ THEN REPLY ~� ��� ���� �������, ����. ������� �������� ������.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~������������ ������ ����� ����� ��������, <CHARNAME> - � ��� �����, ������ ��� ���� �����, ���� ����� ��� ���� �����.~ [AARIN315]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY ~�������, <CHARNAME>. ��������� ��� ������� � ����.~ [AARIN340]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY ~� ������ ������� ���� ������� � ���, ��� ���������� �� ���� ���, � ���� �������, ��� ��������� �������� ������ �������.~ [AARIN316]
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~����� ������� �������� � ������������ �� ����� � ������, ��������� ��� ����� �� ����� ����, �������� �� ����� ������ ���� � ���������.~ [AARIN317]
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~��������, ���� ����� ����� �������� ��������� � ���, ��� � ������ � ����� ������� ��� ������� � ������ �������������� ���� � ��������� ������� ��������.~ [AARIN318]
  IF ~~ THEN REPLY ~� �� ���� ��������, ��� ������ ������� �����������!~ GOTO 11
  IF ~~ THEN REPLY ~������� ����� �� ������� �� ������ ������������?~ GOTO 13
  IF ~~ THEN REPLY ~������ ���� ������ ���-������ � ��������?~ GOTO 15
  IF ~~ THEN REPLY ~��� ��� ��� ����� �� ����?~ GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY ~��������, ���� �� �� ���� ���� ����� �������������, ������������� ������ �� ����� �� ��� ��� ����� ��������������. ����� ����� ������� ��� ��� � �� ����������. ��� �������� ���, �� ��� �������, ��� ����� �� �� ���������, ���� �� �� ���� �� ����������� ������ � �� ����������. �� ������ ��� ������ �������� �� ����.~ [AARIN319]
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~������ ��������� ��������� ������������; ���� ������ ���������� �������� ��. ������ ��� �������� ����������� �� ���, ����� ��� �� �������� ��������, �������� ��� ������.~ [AARIN321]
  IF ~~ THEN REPLY ~������� ����� �� ������� �� ������ ������������?~ GOTO 13
  IF ~~ THEN REPLY ~������ ���� ������ ���-������ � ��������?~ GOTO 15
  IF ~~ THEN REPLY ~��� �� ����� ���������� ��?~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY ~���� ������ ������ ��� �� ������. ���� �� �� ���, ����������� ����� ����� ��� �� ��� � �����. ��������� ���������� ������ ���� �� ����� �������. ����� ������� ���� ������� ������ � ������� ��������, ��� ����� �������� ��� ���������.~ [AARIN322]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~�� ������ � ����� ������� ����� ������������ �����������, <CHARNAME>. ���� ������ ������� ������.~ [AARIN324]
  IF ~~ THEN REPLY ~� �� ���� ��������, ��� ������ ������� �����������!~ GOTO 11
  IF ~~ THEN REPLY ~������ ���� ������ ���-������ � ��������?~ GOTO 15
  IF ~~ THEN REPLY ~��� ��� ��� ����� �� ����?~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY ~� ���� ����� ���� �������� � ��������, � ���� ����, ��� �� �� � ������ �������. ������, �� ����� ������������ �������� ������. � ������, ��� ������ � �������� - ��� ������ �������, ������� ������� ��� �� ������� ������.~ [AARIN325]
  IF ~~ THEN REPLY ~�������?~ GOTO 16
  IF ~~ THEN REPLY ~� �� ���� ��������, ��� ������ ������� �����������!~ GOTO 11
  IF ~~ THEN REPLY ~������� ����� �� ������� �� ������ ������������?~ GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY ~��� ���� �������� ������� ���������� � ����� ��������, <CHARNAME> - �� ��� �� �� ��������, ��� ��� ��������� ���� �����-�� ������� ���������, ���������� ������� ������.~ [AARIN327]
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY ~� ������, ��� ������ � �������� - ��� ������ �������, ������� ������� ��� �� ������� ������.~ [AARIN326]
  IF ~~ THEN REPLY ~�������?~ GOTO 18
  IF ~~ THEN REPLY ~������� ����� �� ������� �� ������ ������������?~ GOTO 13
  IF ~~ THEN REPLY ~��� ��� ��� ����� �� ����?~ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY ~���� ���� �� �� �����, ��� ��� �� ����� � ����� ��� ����� ��������, ��� ��������, ��� ��������� �� ������� ���� ��� ���� ���������. �� �� ����� ��������� ��������� ��������� ��.~ [AARIN328]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY ~�� ������ ����� ��� ����� ������ ��������, <CHARNAME>. ���� �� ����� �� ��������, �����, ���� ������ ����� ������ �������� �������.~ [AARIN329]
  IF ~~ THEN REPLY ~���� ���� � ���, ��� ������ ��� ����� ������?~ GOTO 20
  IF ~~ THEN REPLY ~� ��� ��� ������, ���� � ����� ��� ����� ������?~ GOTO 24
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 25
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 27
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~�� �����, ��� ���������� �������� ����� ������: � ����� � ������ ������, � ����� �� ������, � ���� ����� ���������� ����� ����.~ [AARIN330]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~� �� ����� ����� ���� ��� ����� ������ ��������, <CHARNAME>. ��������, ��� ��� ���-������ ��������� ������ ��������, ������� �� ������� ����������, ��� ����������, ��� �� ���-�� �������� � ������ ������.~ [AARIN331]
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY ~������� ��������� ������ ������ �� ���� ������� � ���� ���� ����, ��� ������. � �����, �� ������� ����� �� � ������� � ���-��������� ����� ����� ������.~ [AARIN332]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY ~� ����, ��� ��� ������� ����� ���������� ��� ������������, <CHARNAME>, �� ������ �� ���� ��������� ������ �������, ��� ��� �� �������� ��������� ���.~ [AARIN333]
  IF ~~ THEN REPLY ~� ��� ��� ������, ���� � ����� ��� ����� ������?~ GOTO 24
  IF ~~ THEN REPLY ~� ��� � � ����� ���� �����?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 25
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY ~���� �� ������� ���� �� ���� ����, ��������� ��� ���. �� ���� ��������� ����� �� ��������� ���������� ��� � ����� ����� ������.~ [AARIN336]
  IF ~~ THEN REPLY ~���� ���� � ���, ��� ������ ��� ����� ������?~ GOTO 20
  IF ~~ THEN REPLY ~� ��� � � ����� ���� �����?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 25
  IF ~~ THEN REPLY ~���-������ ���?~ GOTO 109
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 19.3
  SAY ~���� ������ �������� ������������ ����� ��� ������ ���� ������ � ������� �������. � ������� ������� �� ������� ����� �������, ������� ��� ����� ������������..~ [AARIN337]
  IF ~~ THEN REPLY ~���� ���� � ���, ��� ������ ��� ����� ������?~ GOTO 20
  IF ~~ THEN REPLY ~� ��� ��� ������, ���� � ����� ��� ����� ������?~ GOTO 24
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY ~�� ������������, ��� ������������� ����, ���� ��� ������� ���������� ���� ���� ����� ������, �� ��������  �������� ��������������. ����������� � ���� ������ ����� ����� �����.~ [AARIN334]
  IF ~~ THEN REPLY ~���� ���� � ���, ��� ������ ��� ����� ������?~ GOTO 20
  IF ~~ THEN REPLY ~� ��� ��� ������, ���� � ����� ��� ����� ������?~ GOTO 24
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 25
  IF ~~ THEN REPLY ~���-������ ���?~ GOTO 109
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 27
END

IF ~~ THEN BEGIN 109 // from: 24.3
  SAY ~��� ����� ����, �� ��� ������ ������ ��� �������. ���� �� ����� ����������, ������� � ��� ��� �������, ������ ������ ��� - ������ �� ���� ������ ����� ��������� �� ��� ������.~ [AARIN335]
  IF ~~ THEN REPLY ~���� ���� � ���, ��� ������ ��� ����� ������?~ GOTO 20
  IF ~~ THEN REPLY ~� ��� ��� ������, ���� � ����� ��� ����� ������?~ GOTO 24
  IF ~~ THEN REPLY ~� ��� � � ����� ���� �����?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 25
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY ~� ����� ��� ����� � ���������� �������, <CHARNAME>. �� ��� ������� ������ ������������.~ [AARIN339]
  IF ~~ THEN DO ~SetGlobal("Chapter3AarinJob","GLOBAL",1)~ EXIT
END

// ------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",1)IsGabber(Player1)GlobalGT("AarinFriend","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY ~��� ������� ����� ������ ���, <CHARNAME> - ��� ������. ��� ����, ��� �� �� ����� ��������� ������ ������� ������.~ [AARIN341]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY ~���� ����� ���, � � ������� �� ��� ���� ���� ����. ��� ���� � ���, ����� �������������� �������� ����� ������, �� �� ������ ����� ����� ������.~ [AARIN342]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY ~���� ���-������, ��� � ���� ������� ��� ���, <CHARNAME>? �... � ���� �������, ����� ������ ��� � ����� �������.~ [AARIN343]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 31
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 34
  IF ~~ THEN REPLY ~�� ����� �� �� ���������, � ��� ������� ��� ������?~ GOTO 35
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY ~��� ������� �������, � ���� �����, ��� � ��������� ����� ������� �������� ���� ����� ����.~ [AARIN345]
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY ~������ ������� � ������ �� ����� ���������� ������ �� ������� ��� ������ ����� ������, � ��� ��� ����� ������� � ��� ���������� ���������� ������ ���� ������.~ [AARIN346]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~�� ������� ����, ��, ������� ������ �����, ��� �� �������. ��� ������ ���������� ����� � ����� �����������, ��� ��� ����� � ������������, ���� ����� ����� ������ �� ������, ����� ��� �����.~ [AARIN347]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN GOTO 38
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN GOTO 39
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY ~���� ������ �������� ������������ ����� ��� ������ ���� ������ � ������� �������. � ������� ������� �� ������� ����� �������, ������� ��� ����� ������������.~ [AARIN337]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 31
  IF ~~ THEN REPLY ~�� ����� �� �� ���������, � ��� ������� ��� ������?~ GOTO 35
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY ~���� �� �� �����, ��� ����� ����� � ����� ��� ����� ��������, ��� ��������, ��� ��������� �� ������� ���� ��� ���� ���������. �� �� ����� ��������� ��������� ��������� ��.~ [AARIN328]
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~�� ������ ����� ��� ����� ������ ��������, <CHARNAME>. ���� �� ����� �� ��������, �����, ���� ������ ����� ������ �������� �������.~ [AARIN329]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 31
  IF ~~ THEN REPLY ~��� �� ��� ��������� �������?~ GOTO 34
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.2
  SAY ~� ����� ��� ����� � ���������� �������, <CHARNAME>. �� ��� ������� ������ ������������.~ [AARIN339]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY ~�� ������������� ������������� �������, <CHARNAME> - ���� � � ��� ��� ����. �� ��������� ������ ������������ � ������ ����� ������, ����� ��� ������� ��� �������������� � ������� 3000 �������.~ [AARIN348]
  IF ~~ THEN REPLY ~�� ����� �����������, �����. � ��������� ��� �� ��� ��������������.~ GOTO 41
  IF ~~ THEN REPLY ~�������� ����� ������ �� ������, �����. ������� � ���������� ����� ��������.~ GOTO 42
END

IF ~~ THEN BEGIN 39 // from: 33.2
  SAY ~�� ��������� ������ ������������ � ������ ����� ������, ��������� ��� ������� ��� �������������� � ������� 2500 ������� � ���� ����� �������������.~ [AARIN362]
  IF ~~ THEN REPLY ~�� ����� �����������, �����. � ��������� ��� �� ��� ��������������.~ GOTO 43
  IF ~~ THEN REPLY ~�������� ����� ������ �� ������, �����. ������� � ���������� ����� ��������.~ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 33.3
  SAY ~������������ ����� ����� ����, ��� ��, <CHARNAME>. ��� ���� ������� ����� ���������� ��� 3000 ������� � ����� �� ����� ������.~ [AARIN349]
  IF ~~ THEN REPLY ~�� ����� �����������, �����. � ��������� ��� �� ��� ��������������.~ GOTO 41
  IF ~~ THEN REPLY ~�������� ����� ������ �� ������, �����. ������� � ���������� ����� ��������.~ GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.1
  SAY ~���� ��� ��������� �� ���������, ���� ��� ��������� ���� ������, ������� ����� �����. � �������, �� ���������� ������, <CHARNAME>.~ [AARIN350]
  IF ~~ THEN REPLY ~� �����, ��� ������� ����� � ���������������, � ������� �� �����������. ��� �������, ��� �� ����� ��������, � ����� �� ������ ������.~ GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 38.2
  SAY ~������� ������ �������. � ��� ���� �����, ��� ���-����. �� � �� ���� ��� �������� ������� ��������, ���������� ��� ������ ������.~ [AARIN360]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 43 // from: 39.1  2500
  SAY ~���� ��� ��������� �� ���������, ���� ��� ��������� ���� ������, ������� ����� �����. � �������, �� ���������� ������, <CHARNAME>.~ [AARIN350]
  IF ~~ THEN REPLY ~� �����, ��� ������� ����� � ���������������, � ������� �� �����������. ��� �������, ��� �� ����� ��������, � ����� �� ������ ������.~ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 39.2  2500
  SAY ~������� ������ �������. � ��� ���� �����, ��� ���-����. �� � �� ���� ��� �������� ������� ��������, ���������� ��� ������ ������.~ [AARIN360]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 41.1  3000
  SAY ~������ ����������� ������� �������������� ������ �������, �� ������ ���� ��������� ���� �� �������. � ���� ���� �������� � ���, ��� �����-�� ������� � �� ���������� ��������� � ���������� ��������.~ [AARIN351]
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 43.1  2500
  SAY ~������ ����������� ������� �������������� ������ �������, �� ������ ���� ��������� ���� �� �������. � ���� ���� �������� � ���, ��� �����-�� ������� � �� ���������� ��������� � ���������� ��������.~ [AARIN351]
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1  3000
  SAY ~��������, ��� �� ����� ��������, � ������� �� ���������. � ��������� ������� ���� ����������. �� ��� �� ����� ���� ����������. �� ������ ��������������� �� ������� ����.~ [AARIN352]
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 46.1  2500
  SAY ~��������, ��� �� ����� ��������, � ������� �� ���������. � ��������� ������� ���� ����������. �� ��� �� ����� ���� ����������. �� ������ ��������������� �� ������� ����.~ [AARIN352]
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 47.1  3000
  SAY ~����� ��� ����� � ����� ������, <CHARNAME>. ������������� �� ���, ����� � ��� ����� ��� ���� ����� ������.~ [AARIN353]
   IF ~~ THEN DO ~IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3000)AddexperienceParty(184000)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1  3000
  SAY ~����� ��� ����� � ����� ������, <CHARNAME>. ������������� �� ���, ����� � ��� ����� ��� ���� ����� ������.~ [AARIN353]
   IF ~~ THEN DO ~IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(2500)AddexperienceParty(184000)~ EXIT
END

// ------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",1)IsGabber(Player1)Global("AarinFriend","GLOBAL",0)~ THEN BEGIN 51 // from:
  SAY ~�� ���������, <CHARNAME>. ������ �� ���-������ �������� ���?~ [AARIN344]
  IF ~~ THEN GOTO 29
END

// ------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",2)IsGabber(Player1)~ THEN BEGIN 52 // from:
  SAY ~<CHARNAME>, ����� ����������� � ������ ����� ����� ���� �� ������ ����� ������. �� ��������, ��� �� ������ ���������� ������ � ����� ��������� �������� � ��� �����������.~ [AARIN367]
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY ~�� ������ �� ����� �������� �� ������ - ����� ����� � ������ �����, ���� ��� �� ������ � ����� ��������.~ [AARIN368]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN REPLY ~� �� ������ ���������� � ����, �����. ������ ����� �������, ������� �� ���� ���.~ GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~�� ���-������ ������ � ��������������� ��������?~ GOTO 61
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY ~������ ���� ������... ���, ��� � ��� ����. �� ��� ��� � ����?~ [AARIN369]
  IF ~~ THEN REPLY ~�� �������, � �� ����� ����������?~ GOTO 63
  IF ~~ THEN REPLY ~�� ������ �������, ��� ������� ������� ���?~ GOTO 63
  IF ~~ THEN REPLY ~� ��� ���, ��� �� ���� ��� ���� ������, �� � ���� ������������� ������ � �����.~ GOTO 64
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY ~������ �� ������ ������ �� �������?~ [AARIN387]
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY ~�������, ��� �������� ����������� �����, ������ � ������������. � ����� ������, ������ ��� ������ ����� ������ ������ ������� ������� ���� �� ������ �������� � ��� ������, ������ �� ��� �� ����!~ [AARIN388]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN GOTO 72
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)~ THEN GOTO 73
END

IF ~~ THEN BEGIN 57 // from: 53.2
  SAY ~� ���� ������� ��� ������� ������ ���������� � ������ ��������. �� ��� � �� ������, ����� ��� �������� ��������, � ���� �� ������������, ��� ���� �� ����� ����� ������.~ [AARIN402]
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY ~�� � ���� ���������� ����������� ������ � ���, ���, � ���� �� ��� �� ����������, ��� ��������� ��������� ��� ������������. �� ������������, ��� �� ���������� ��, <CHARNAME>.~ [AARIN403]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN REPLY ~� �� ������ ���������� � ����, �����. ������ ����� �������, ������� �� ���� ���.~ GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~�� ���-������ ������ � ��������������� ��������?~ GOTO 61
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 59 // from: 53.4
  SAY ~��� ����� �� ��� ��� �������� ������ - ���� ���. �� ���� ��� �� ������� ��������� �������, <CHARNAME>, �����, �� ���������.~ [AARIN404]
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.4
  SAY ~������ ������������ ���� ������ ��������� �������� ���������� ����������� � ���, ��� ������ ����� ������. ������� ������ ��������� �����, ����� � ��� ���� ���� - ���� ���� ��� ���� �������� �� ���������.~ [AARIN405]
  IF ~~ THEN REPLY ~��� ����� ������ ��������� ��� � �������, �������� ��� ������� �������?~ GOTO 74
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN REPLY ~� �� ������ ���������� � ����, �����. ������ ����� �������, ������� �� ���� ���.~ GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~�� ���-������ ������ � ��������������� ��������?~ GOTO 61
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 61 // from: 53.5
  SAY ~� ���� ��� ������� ����� ����������, ����� ��������� � ������� ����� ���������� � ����� ���������� ������� ��������������.~ [AARIN411]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.1
  SAY ~�� ���� ������, ��� �������� �������� � ���������, ������ �������, ��� ��� �� ����� �������. � �� ����� ����� ���������� � ���, ������ ��� �� �����, ����� �� ��������, ��� ���.~ [AARIN412]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN REPLY ~� �� ������ ���������� � ����, �����. ������ ����� �������, ������� �� ���� ���.~ GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 63 // from: 54.1
  SAY ~���... ���, ������� ���! ��� ����� ����, ��� � ���� ��������� ����� �����������.~ [AARIN370]
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.1
  SAY ~�... ��� ����� ����, <CHARNAME>. � �����, ����� �� ������� ���� ������. �� ������ ������ ��� ���� - ��� � ��. � ������ � �� ����, ��� ������ ������.~ [AARIN371]
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY ~��� ��������... ��������, ����� ���� �������� �����. � ���������� ��. �� ������ �... �� ������.~ [AARIN372]
  IF ~~ THEN REPLY ~��������?~ GOTO 66
  IF ~~ THEN REPLY ~� ��� ������?~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.1
  SAY ~��� ���������� ��� ������: ���� �����, ������������� ������, ����������� ����� �������.~ [AARIN373]
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY ~�������� � ���� ������ ����� ����� ������, ���������� ���� ������������ ����������� ��������. � ��... �� ��� ����� ������������ �� ���. ������ �� ������ ������ ��� ���, ��� ����� �� ������ ������� ����� ������.~ [AARIN374]
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY ~� � �� ��� ������, ��� �� ������ ���������� ��� ���. ��, ��, ��� �������� ���. � � �������, ��� ����� ����� ��������� ��� �������� ��.~ [AARIN375]
  IF ~~ THEN REPLY ~������ �� �� ��������� ��� ��� ���?~ GOTO 69
  IF ~~ THEN REPLY ~�� ������ �������, ��� ������� ������ ��� ����������?~ GOTO 69
  IF ~~ THEN REPLY ~��� �, � ������� ��������� ���. ��� ������?~ GOTO 69
  IF ~~ THEN REPLY ~��� ����� ����, �����. �����, � �� �������� ����� ������. �� ������ ������.~ GOTO 86
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY ~�... � �� ����. �������� ����, ���� � �������, �� ��� ��� ����� ���� ��� ����. �� ����������� �����, � ���� �� � ��� � ������� �� ���� ����� ������� ���������.~ [AARIN376]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY ~� ���� ��, ��� ���� � ��� � �����, �������� ��� ��������� ������� ������������. � ���� ��� �����, <CHARNAME>. �... � ���� ���� � ����.~ [AARIN377]
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY ~�� ������ �� ��� ����� ���� ������� �������. ������� ����� ������� �� ���. �� ����, ����� �� � ���� ��������� ������ �� ���� ���� ���.~ [AARIN378]
  IF ~~ THEN REPLY ~�� ��������� � ����, �����. ��� ����� ��������, �� � ��� ���� �� ��� ���������.~ GOTO 78
  IF ~~ THEN REPLY ~� ��� ������� ������� ����� �� ������ ���� ����. �� ������� ���� ����� ����� ���� ����.~ GOTO 80
  IF ~~ THEN REPLY ~� �� ����, ���� �� �������� ��������, ������� �� ������ ���� ������ ������� �����, �����.~ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 71.3
  SAY ~�... �������� ����, <CHARNAME>. � �� ���� ������� ���, ��� �� ������ ������ �� ������ ����� � ���� �����. � ����� �� ������� ���... �� �� ����.~ [AARIN450]
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.1
  SAY ~�� ������ �������� ��, ���� � �� ���� ����, � � ����� ����� ��, ��� �� �����������. ��������... ��������, ��� ����� ���������� ��� ���, <CHARNAME>.~ [AARIN451]
  IF ~~ THEN DO ~SetGlobal("AarinFriend","GLOBAL",0)~ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.1
  SAY ~� ������ �� ���� ��������� ��� ����, <CHARNAME>. � ��� ����� ������. �� ������ ��������������� �� �������� ������������.~ [AARIN452]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~�� ���-������ ������ � ��������������� ��������?~ GOTO 61
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 72 // from: 56.1
  SAY ~� � �������� ������������� � ��������� ������ ���� ��� 3500 �������, ��� ����. � ��� ������ ������� �� ����� �������� ��������� �������� ��� ���.~ [AARIN389]
  IF ~~ THEN REPLY ~�� ����� ������������� � ��������, �����.~ GOTO 89
  IF ~~ THEN REPLY ~� �� ���� ���������� ������������� �������, �����, �� ������ �� ����� �������� �� ��� ������, � �������� ��� ���������� ���������.~ GOTO 93
END

IF ~~ THEN BEGIN 73 // from: 56.2
  SAY ~���� ������ ����� ���������� ���, ��� � ��� ������ ����� �������� ��� ��� ��������, � ����������� ����� ���� � ����� ����������. <CHARNAME>, � ������� ������������ ������� ��� �� ���������� ����� ������� 3500 �������.~ [AARIN390]
  IF ~~ THEN REPLY ~�� ����� ������������� � ��������, �����.~ GOTO 89
  IF ~~ THEN REPLY ~� �� ���� ���������� ������������� �������, �����, �� ������ �� ����� �������� �� ��� ������, � �������� ��� ���������� ���������.~ GOTO 93
END

IF ~~ THEN BEGIN 74 // from: 60.1
  SAY ~�� ������ �� ��� ������, <CHARNAME>. ������ � ��������� -- ��� ������� ����� ������; � �� � ������ ��� ����� ������� ��������������.~ [AARIN406]
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY ~������ ������ �����������, ��� ��, ��� ��� ������ ������� - � �����, ������� ��� ������, ������� ���� ��������� � ����� ������ �� ��������, �������� ��� ������.~ [AARIN407]
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)~ THEN GOTO 76
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)~ THEN GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY ~� ����, ������ ��������, ����� ���� ���-��, � ���� ������� ������ ���������� ���������. ���� �� ���� ����� ������ ���, <CHARNAME>, ��������, � ���� �� � ����� �� �������, ��� ������.~ [AARIN408]
  IF ~~ THEN REPLY ~� �����, �� �����, �����.~ GOTO 77
  IF ~~ THEN REPLY ~� �������� �� ����, ��� �� �� ���������!~ GOTO 77
  IF ~~ THEN REPLY ~������ ������� �� ���������� ������������� ������ ������!~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.1
  SAY ~� �� ������, ��� �������� � ���������� ������ - � ������ ������, ���, ��������, ���� ������ ��. ������ � ������� ��������� ������������, � ������ ������ � ���, ����� �������� ������ ���������.~ [AARIN410]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 78 // from: 71.1
  SAY ~���� ������, <CHARNAME>. � �� ���� ������ ��� ��, ��� � ��� ����.~ [AARIN379]
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY ~����� ��� � ����� � ���, ��� ��� ����� ���������, ���-��, � ���� ����� ���������� �� ������� � ...���������. � ������, ����� � ���� ���� ��, � �� ���� �������, �������� ����.~ [AARIN380]
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 71.2
  SAY ~��� ���, <CHARNAME>. ��������, � ��� ������ � �����������, � ����, ����� ���������� ������ �� ����, ��� ����� ������, ��� ���� ������� � ������.~ [AARIN386]
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY ~�������� ���, <CHARNAME>... �������� ���, ��� �� ����� �������� ���� �����, ����� �� ���������. ��������, ��� �� ������� ���� ���� ������ �� ������ �����.~ [AARIN381]
  IF ~~ THEN REPLY ~��� �� �������� ��������� ����� ��� � ��������, �����. � ������.~ GOTO 82
  IF ~~ THEN REPLY ~� �� ���� ����� �������, �����. ������� ��� �������.~ GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY ~��������, ����� ��� ��� ����������... �� �������� ����� ����� �������� �� �����. ������ �� ������ ��������������� �� ���, ����� ���������� �������� � ������ - ��� � ��� ����� � �� ���� ��������.~ [AARIN382]
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 81.2
  SAY ~������ ����, <CHARNAME> - � �� ���� ����� ��������� �� ���� �����. ������, ��� �������� ������ �����, ����� ������, ��� ������� ��� ������.~ [AARIN385]
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY ~���� �� ��� ���� ��������, <CHARNAME>, � �� ���������� � �����. �� � ��������� ����������� � �������� ������ ��������. � ����� �����.~ [AARIN383]
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.1
  SAY ~��, ���� �������� �� ��, ��� � �� ���� ����������� � ����� �� ������ ���� ������, <CHARNAME>, ����, �����  �� ��������� � �����, ��� ��� ������ ����� �����.~ [AARIN384]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~�� ���-������ ������ � ��������������� ��������?~ GOTO 61
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 86 // from: 68.4
  SAY ~������ ������? �... �... �������� ����, <CHARNAME>. � ������ �����... �����, ��� ��� ��������� ����� �������.~ [AARIN455]
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY ~���� ������, ����� - �� ��������� �����! �... ��� ����� ����, <CHARNAME>. �������, �� ������ �� ����� ��������� ��� ����.~ [AARIN456]
  IF ~~ THEN DO ~SetGlobal("AarinFriend","GLOBAL",0)~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.1
  SAY ~�� ������ � �������� � ������ ������������, � ������ ������. ����, ���� �� � ���-�� ������ ��� � ��������  �� ���� ����� ����?~ [AARIN457]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 55
  IF ~~ THEN REPLY ~������ �� ��� ���-������ � �������� � ��� �����������?~ GOTO 57
  IF ~~ THEN REPLY ~��� ���� �� ������?~ GOTO 59
  IF ~~ THEN REPLY ~�� ���-������ ������ � ��������������� ��������?~ GOTO 61
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 89 // from: 72.1
  SAY ~��������? ��� �� ���� ��� ������� �������?~ [AARIN393]
  IF ~~ THEN REPLY ~��� �������� � ������� ����� ����������. ��� ����������, ��� ���� �������� ����� �� ���. � �����, ��� ��� ���� ���.~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.1
  SAY ~� �� ������� � �������, �� ����� ��� �� ��������, ��� �� ������ ���� ��� ��������� ����� ���? � �� ����, ����� �� �� ������, � ����� ��� ��� ����� ��������� � ��������. �� � ���������� �����������.~ [AARIN394]
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1
  SAY ~������������ �������� ���. ������� � ��� ������ ��� ��� ���������� ��������, � ��� ��������, ��� ��� �������� ���������� �� ������� ���� ��� ���� ����� ������. ������� ��� ������ ��������.~ [AARIN395]
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.1
  SAY ~� ����� ��� ����� � ���������� �������, <CHARNAME>. �� ��� ������� ������ ������������.~ [AARIN339]
   IF ~~ THEN DO ~IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3500)AddexperienceParty(228000)~ EXIT
END


IF ~~ THEN BEGIN 93 // from: 72.2
  SAY ~��� �� ��������, ����� � ��� ���-�� ���������� � ����, �� �� ��������� ���������� ���������, ������� ������� ��� ���� ������, ����� ��� ������ ������������. ����� ����, �� ��� ������ ��� ����������.~ [AARIN400]
  IF ~~ THEN REPLY ~�� ����� ������������� � ��������, �����.~ GOTO 89
END

// ------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 94 // from:
  SAY ~� ������ ��� ������� ��������� ������ � ������, � ��� ���� �� ����������. ����� ������������ ����������, � ���� ������ �������� � ����� �����.~ [AARIN417]
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.1
  SAY ~������, ������� ������� ������� � ����� ����������, ��������� � ������ �����. �������� ������ ��� ��������� �������� �������. � ��� � ����� �������� - ����� ����, �� ��������� ���, ��� ��� �� ������� ����� �������?~ [AARIN418]
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY ~� ���� ���� ���� �� ���� ������.~ GOTO 96
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 96 // from: 95.1
  SAY ~�������-�� ������� �������, � ����� ������ �������, ��� ��� ������ ������� ����. � ��� ��� ��������� ����������� � ����� �����������, ����� ��������� � ���, ��� ��� ���������� ���� ����� �� ���������� ������.~ [AARIN419]
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.1
  SAY ~������, ��� ������, � ����� ������� ��� �������� - ��� ����� ������, ��������������� ��� ������ ������, � �� ������� ��� ����� ������, ��� ���-���� ������. �� ����� � ����� ������ ���, ��� �� ��������� ���������� �����.~ [AARIN420]
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY ~��� �� �� ������� ���, <CHARNAME>, � ���� �������, ��� ������� ���, ��� ��� �������� �������� ������ � ����. � ���� ���� 5000 ������� - �������� ��. �� �� ������������� ���������.~ [AARIN422]
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY ~� ����� � ��� ������, ���� �� ������� �� ���� � �����������, �������� �������� �����. <CHARNAME>, <MANWOMAN> ����� ��� - ������ �� ��������, � ������� �������� ��������� ���� ������.~ [AARIN423]
  IF ~~ THEN REPLY ~�������, �����. ������ � ����, � ���� ���������, ����� ������ �����������.~ GOTO 100
  IF ~~ THEN REPLY ~� ����� � ����, ����, �� ������ ������, ��� ����� �, ��������, ������ ������.~ GOTO 100
  IF ~~ THEN REPLY ~� ��� �� � ��� ������-������ ������� ����������� ����������, ������� ����� ������ � ������� ������������?~ GOTO 103
END

IF ~~ THEN BEGIN 100 // from: 99.1
  SAY ~������� ������ �� ��������. �� ������ ��������� � ����� �����, ����� �������� ��� ����� � ����� ������ �� ������ � ��������!~ [AARIN459]
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.1
  SAY ~���� �� ������, �� ���������� ����� ������.~ [AARIN460]
  IF ~~ THEN REPLY ~��, ��� ������.~ GOTO 102
  IF ~~ THEN REPLY ~� ���� ��� �������� ���� �����~ GOTO 104
END

IF ~~ THEN BEGIN 102 // from: 101.1
  SAY ~�������, ��� �� �������� �� ������� ������.~ [AARIN461]
   IF ~~ THEN DO ~IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(288000)ClearAllActions()StartCutSceneMode()
StartCutScene("ToNever2")~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.3
  SAY ~����� �� �, ����� � ���� ���� ����������� ���� ���-������ ���� ���, �� ���, �� ��� ��������� �� �����.~ [AARIN426]
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 104 // from: 101.2
  SAY ~������������ <CHARNAME>. �� ����� ��������.~
   IF ~~ THEN DO ~IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(288000)~ EXIT
END

// ------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",4)IsGabber(Player1)!AreaCheck("NW1030")~ THEN BEGIN 105 // from:
  SAY ~������� ������ �� ��������. �� ������ ��������� � ����� �����, ����� �������� ��� ����� � ����� ������ �� ������ � ��������!~ [AARIN459]
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.1
  SAY ~���� �� ������, �� ���������� ����� ������.~ [AARIN460]
  IF ~~ THEN REPLY ~��, ��� ������.~ GOTO 107
  IF ~~ THEN REPLY ~� ���� ��� �������� ���� �����~ GOTO 108
END

IF ~~ THEN BEGIN 107 // from: 106.1
  SAY ~�������, ��� �� �������� �� ������� ������.~ [AARIN461]
   IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNever2")~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 106.2
  SAY ~������������ <CHARNAME>. �� ����� ��������.~
   IF ~~ THEN EXIT
END

