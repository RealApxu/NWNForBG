//  ��������   ������������  Haedrali
BEGIN ~HAEDRALI~

// �������� �� ���� **���*. ��� ���� ���� ��������� ���� � �����. [HAERD050]

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)PartyHasItem("NWWORD1")PartyHasItem("NWWORD2")PartyHasItem("NWWORD3")Global("HaerdalinTalk","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~����� ���� ����� ������? **���** ���� �� �������?~ [HAERD089]
  IF ~  IsGabber(Player1)~ THEN REPLY ~� <CHARNAME>. � ����� ����� ������ � ������ �����������!~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~� �� ������� <CHARNAME>. � ����� ����� ������ � ������ �����������!~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~����, ������� �������!~ GOTO 3
  IF ~~ THEN REPLY ~� �� ����� �������� �� ���� �������!~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ����� ������ ��� ���� �� ������. **���** ���� ������� ������, ���� ������� - ��� ����� ���� �������� � ����� ����.~ [HAERD090]
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���� ������� �������� �������!~ [HAERD097]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~ **���** �� �� ������ ����� �����������, ������ �������� <RACE>!~ [HAERD098]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��� ����� ������� �����, ����� ������ �� ������� ��� �����, ���� �� �� �������� �� ��� �������. **���** ���� �� �������!~ [HAERD099]
  IF ~  IsGabber(Player1)~ THEN REPLY ~� <CHARNAME>. � ����� ����� ������ � ������ �����������!~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~� �� ������� <CHARNAME>. � ����� ����� ������ � ������ �����������!~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~����, ������� �������!~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~����� ���� ������� ���� ������ ������ ����, ������� ������ ���-�� ��� ���� - �������. **���** ������� ��� <RACE> - �� ������� ��������?~ [HAERD091]
  IF ~~ THEN REPLY ~������� ���� ������������!~ GOTO 6
  IF ~~ THEN REPLY ~��... ��. � ����� ��������. � ���� ���� ��� ���� �����-�� ��������?~ GOTO 7
  IF ~~ THEN REPLY ~� �� ��������� �� ��� ���, ���� ������� �� �����!~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~� ����, �� ���������� ������, ��������� <RACE>. ��� ��������.~ [HAERD092]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~� ���� ���� �������, <RACE>! **���** � ��������, �� ������ �������� ��������! ��� ��������.~ [HAERD093]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.1
  SAY ~���� ����� - ��� ��� �����. �������� ���������� �������������. �� �� ������ �������� ����� ����!~ [HAERD094]
  IF ~~ THEN REPLY ~�� �������� ������ �� ���� �������. ������ ������ ���, ��� ��!~ GOTO 9
  IF ~~ THEN REPLY ~�������� ��� ���-������, ���� � �� ����.~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~���� ����� ��������, � ������� ����� ����� ��������. **���** ��� ����� ���� �������� ���� ��������� ����� - � �������� ������� ������, ����� ������ ����.~ [HAERD095]
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~� ���� ���������� ���� ������, �� ��� ���������� ������ ����. **���** ����� ����� ������, ��� ��� ������� �������, ��� ���, ������� �� ������, �����������.~ [HAERD096]
  IF ~~ THEN DO ~SetGlobal("HaerdalinTalk","GLOBAL",1)CreateVisualEffectObject("ICRMPARI",Myself)Wait(3)DestroySelf()~ EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)PartyHasItem("NWWORD1")PartyHasItem("NWWORD2")PartyHasItem("NWWORD3")Global("HaerdalinTalk","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY ~��� ������, ��� ���� ������� ����� ������ �������. **���** ��� ���� �������� ��� ����������, ��� ��� ������ ��� ����������� ����� ������������� � �����. ���� ������ ���� ������.~ [HAERD051]
  IF ~~ THEN REPLY ~��� �� ������ ��� ����������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ��?~ GOTO 13
  IF ~~ THEN REPLY ~� ���� ��� �� ��� �������!~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~ **���** ������� ������� ������. �� �� �������� ����, ��� ����. ��� ����� ������� ����� ����, � ��� ���������� ����, ������� �� �� ������ ���� ������.~ [HAERD052]
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY ~� ��������, ������� ����� ����� �����. **���** ���� ���� - ��� ����, � ������ ������������ ���� � �������� � ��� ����������������.~ [HAERD072]
  IF ~~ THEN REPLY ~��� �� ������ ��� ����������?~ GOTO 12
  IF ~~ THEN REPLY ~� ���� ��� �� ��� �������!~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY ~�����? ��� ���� �����? �������, ����, ���, ������ ��� - ������� � �����, ��������� � ��������, ���� �������� �������. **���** �� ������ ��������� - ��� ��� ���������� �� �������� ���� ����� �����������!~ [HAERD073]
  IF ~~ THEN REPLY ~��� �� ������ ��� ����������?~ GOTO 12
  IF ~~ THEN REPLY ~��� ��?~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY ~�, ��������, ���� �� ����� �����, � ���� ����� � ������ ������, ����� ��� ��� �������, ��� ����� ���� ��������� � ������� ����� �������.~ [HAERD053]
  IF ~~ THEN REPLY ~���� �����?~ GOTO 16
  IF ~~ THEN REPLY ~�������?~ GOTO 17
  IF ~~ THEN REPLY ~����� ��� ��� �������? � ��� �� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~� �-�� ��� ��� ���?~ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY ~����� ���� ����, ������� ���� �������, ���� ������� � ������ ����� �����. **���** �� ���� ���������� ��������, ���� ���� ���� ��������� � ������� ����� ���������.~ [HAERD054]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY ~��������� - ��� ��� �����, ������� ���� ��������������, ������� ������� ������� �� ������� ������. �� ���� ������� ���� �����, ����� ����� ���� ��������, �� ���� �������, �� ���� ����� �����������.~ [HAERD056]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY ~�����-�� ������ ���� ���� ������� ������� ���������. ��������� � ����� ����������� � ���� ������� ���, ��� ��� ������ � �����������. ��������� ���� � ���� ���, ��� � ��, ���� �����.~ [HAERD058]
  IF ~~ THEN REPLY ~� ��� ��������� � ���� ����������� ������� �������?~ GOTO 22
  IF ~~ THEN REPLY ~���� �����?~ GOTO 16
  IF ~~ THEN REPLY ~�������?~ GOTO 17
  IF ~~ THEN REPLY ~� �-�� ��� ��� ���?~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 15.4
  SAY ~����, ����� � ����� ���� ����� ������ ������ ����� ������, ���� �����������. � � ���� �����, ��������� ����� ����, **���** ���� �� ����� ��� ����� � �� ������� ����������� ����.~ [HAERD058]
  IF ~~ THEN REPLY ~�� ������ ���������� ��� ��� ������������ �������?~ GOTO 22
  IF ~~ THEN REPLY ~���� ���� ���� ����� �����, ��� ���� ������� ������?~ GOTO 23
  IF ~~ THEN REPLY ~� ��� ��������� �� ������� ����, ����� ������ �������?~ GOTO 24
  IF ~~ THEN REPLY ~������ ��, ���� �� � ���� ���� ��� ���� �����-������ �����.~ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY ~����� ��� ��� �������, ��, ���� ����� �������� ���� ������� ���������, **���**, ����� ������� ���� ���� �� ����� ���������� ��� � ����� ����� �����.~ [HAERD055]
  IF ~~ THEN REPLY ~�������?~ GOTO 17
  IF ~~ THEN REPLY ~����� ��� ��� �������? � ��� �� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~� �-�� ��� ��� ���?~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY ~�� �� ����� ���� ����� ����������� ����������. **���** ������� �������, ������ �������� - � ��, ���� �����, �������� ������ ����. ��� ��� �����������, ����� ��� ��� ������� � ������.~ [HAERD057]
  IF ~~ THEN REPLY ~���� �����?~ GOTO 16
  IF ~~ THEN REPLY ~����� ��� ��� �������? � ��� �� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~� �-�� ��� ��� ���?~ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY ~��� ������, ������� �������. ���� � ��� ������� ��� �����. �������� �� ��� ���� ����, ������� �� ������ ������ ��������� � ����� �����������. **���** ��� ������� �� ����� ����, �� ����� �����, ���������� ������ ���.~ [HAERD060]
  IF ~~ THEN REPLY ~���� ���� ���� ����� �����, ��� ���� ������� ������?~ GOTO 23
  IF ~~ THEN REPLY ~� ��� ��������� �� ������� ����, ����� ������ �������?~ GOTO 24
  IF ~~ THEN REPLY ~������ ��, ���� �� � ���� ���� ��� ���� �����-������ �����.~ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY ~����� ��������� �������, ���� �� ���� ��������. ��� � ��, ���� �����, ��������� � ���� �����. �� ���� ��������� ��������� �� �������� ���������� �����. �� ���� ��������� ������� ����� � ���������� ����� ������.~ [HAERD061]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY ~��� ��������, ����� ���� ��������, �� ���� �����. �, ����� ��, �������, ��������� � ������, �� ��������� �����, ��������� �����.~ [HAERD070]
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY ~������� ����� ���������� ��������� ���� ����, ����� ����� ����������� ����������. ����� �����, �����, ������, ������ - ������� �����, ����� ��� ������������ ����� ��� � �������� � ��� �������.~ [HAERD063]
  IF ~~ THEN REPLY ~������� ������� �� ������ ��������! � ��������� ���!~ GOTO 28
  IF ~~ THEN REPLY ~�������, ��������. ��� ����� ������� � �� �� ���� ������, ��� ������� ����� ��������� ������ ��� �����.~ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY ~ **���** ������ ���� ����� �������, ����� �������� ����������� ����. �� ��������� ������ ������ � ��������� ��������; ������� �� ������� ���, ������� ������ �� ��� �����. �� �������� ��, ��� �� ������ �������� ���� �������.~ [HAERD062]
  IF ~~ THEN REPLY ~�������� ��� � ����������� ����.~ GOTO 28 
  IF ~~ THEN REPLY ~� ��� ��������� �� ������� ����, ����� ������ �������?~ GOTO 24
  IF ~~ THEN REPLY ~� ����� ��������� ��� ����� � ��������?~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY ~��, ��, ��� �����-�� ��� ������, ������������ � �������� ����� ���, ����� �������� ������ �� �� ������. **���** ������ ������ ���, � ���� ��, ��, ��� ������ �����, ������ �� �����, ��� �������� ��.~ [HAERD071]
  IF ~~ THEN REPLY ~�� ������ ���������� ��� ��� ������������ �������?~ GOTO 22
  IF ~~ THEN REPLY ~���� ���� ���� ����� �����, ��� ���� ������� ������?~ GOTO 23
  IF ~~ THEN REPLY ~� ��� ��������� �� ������� ����, ����� ������ �������?~ GOTO 24
  IF ~~ THEN REPLY ~� ����� ��������� ��� ����� � ��������?~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY ~������� ��� �������. **���** ����� ������ ���� ���������� ������� ���, ������� ��������� ���, ��� ������� ��, ���� �� ������ �������� �������.~ [HAERD064]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.2
  SAY ~������ ���� �� ������ �������� <RACE>! **���** �� ����� �� �������� ��������!~ [HAERD069]
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY ~���� ���� ���� ������ �� ��� ���, ������� �������� � ������� �������. **���** ���� �������� ������� ����������� ����������, ��� ���, ������� �� ������, ���������� ������������! ��� �������� ������������.~ [HAERD065]
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY ~���... �!!! ��� - ����� �� ����� ����! � - �����!~ [HAERD066]
  IF ~~ THEN REPLY ~���? ��� ���������?~ GOTO 32
  IF ~~ THEN REPLY ~�����?~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 32.1
  SAY ~����� - ��� ������� ��� ����! ����� �� ����� ���� - �! ��� ������� ���� ����� ����� - �! ��� ���������� ��� ���������� ������������� - �!~ [HAERD067]
  IF ~~ THEN REPLY ~�������, �� ���������� ���������� ��� ���-�� ��� �����!~ GOTO 33
  IF ~~ THEN REPLY ~�����? ��� ����� �����? �������� ���, ���� �� ������!~ GOTO 33
  IF ~~ THEN REPLY ~������. ������, ����� �������� ���������� ���������, ��� ������� ����� �� ���� �������� �������!~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~�������!!!!~ [HAERD068]
  IF ~~ THEN DO ~SetGlobal("HaerdalinTalk","GLOBAL",2)CreateVisualEffectObject("ICRMPARI",Myself)Wait(3)DestroySelf()~ EXIT
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)PartyHasItem("NWWORD1")PartyHasItem("NWWORD2")PartyHasItem("NWWORD3")Global("HaerdalinTalk","GLOBAL",2)~ THEN BEGIN 34 // from:
  SAY ~������ ����� ���� - �� ������� ��� ������, ����� �������� ��������������. **���** �����, ������� �� ����������� ����������� - � �����. ����� �� ����� ����� ��������� � �� ��������� ������-������������.~ [HAERD074]
  IF ~~ THEN REPLY ~������-��������? ��� ����� ������-��������?~ GOTO 35
  IF ~~ THEN REPLY ~�����... �� ��� �������� � ���.~ GOTO 35
  IF ~~ THEN REPLY ~��� ��?~ GOTO 36
  IF ~~ THEN REPLY ~����, ���������� ����!~ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~����� ���� ��������� ����� ������ - ��������, ���� �����������. **���** ��� ������� ������-��������, ����� ��� ���� �������� � ���� ������ �����.~ [HAERD075]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 34.3
  SAY ~� ��������, ������ �����, � ���� ��������� ����� �� ����, ��� ��� ���� ���������� � �����-���������. **���** ��� ���������� ������� ��� ����� - �� ���������� ������������� �� ����, ����� �� �� ��������� ������.~ [HAERD087]
  IF ~~ THEN REPLY ~������-��������? ��� ����� ������-��������?~ GOTO 35
  IF ~~ THEN REPLY ~�����... �� ��� �������� � ���.~ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.4
  SAY ~�� �� ������� ����� ���� - ��� ���� �������� ���� �������� �����!~ [HAERD088]
  IF ~~ THEN REPLY ~��� ��?~ GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY ~����� ������������ �����, ����� ��������� ���� ����� � �������� ���, ����� ������ �������� ���� � �������� ��� � ���������� �����-��������� - � ����� ���� ����� � ���� �� �����.~ [HAERD076]
  IF ~~ THEN REPLY ~� ������ �� ��� �������� ���� � ���� ������-��������?~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~��������� �� �������� ������ ����. **���** ����� ����� �������, ��� �� ������� �������� �� ����, ������ � ������, ������� ��� �����.~ [HAERD077]
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY ~������ �����-��������� ����� ������ ����, ��� �� �����, ��� �� �����. **���** ����� �� ������ ��������� �������������, ��, ���� ����� ������ ����� ��������� ��������, ����� ������� ����������� ����.~ [HAERD078]
  IF ~~ THEN REPLY ~���� ����� ���������, ��� ��������� ����� � ����������� �������?~ GOTO 41
  IF ~~ THEN REPLY ~����� ������ ���� �����, ��� �������� ���� ������ ����� �����.~ GOTO 42
  IF ~~ THEN REPLY ~� ��� � ���� ������ �������?~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY ~������-�������� �������� ��� ������� ������������, �, ���� �������� �� ��, ��� ������ ����, ���������� ���, ��������� �� ���� ������ ���, ��� ����� ���������� ���������� ��������� ��� ����� ���� � ����� ����� ������.~ [HAERD079]
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 40.2
  SAY ~�� �� ��������� ��� �����, ������� �����-�� ������� ����� ����� �� �������! **���** �� ���� ��������� �������������, ����, �������� �� ��, ��� ���� ������� �����. �� ����� ����������� ���.~ [HAERD081]
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 40.3
  SAY ~���-�� ��������� ��� ����� - ���� �� ���� � �� ���������� ���� ���� �������� ������������ � �����-���������. ��� ������� � ��������� ��� ��, ��� � � �����, � ������� ��������.~ [HAERD083]
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 41.1
  SAY ~��������� ����, ��� ����������, ���� ������ ��������� � ���������������� ��� ���� ����. ��, ��� ��������� ���������� ����������, ������ ������ �����������, � ���� ����� ������� � ������ ������. **���** � �� �������, ����� ��� �����������!~ [HAERD080]
  IF ~~ THEN REPLY ~����� ������ ���� �����, ��� �������� ���� ������ ����� �����.~ GOTO 42
  IF ~~ THEN REPLY ~� ��� � ���� ������ �������?~ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 42.1
  SAY ~��� ������� � ���� ���������� �������, �� �� ��������� � ������ � ������ ������������ �� ����� ������������� ��������. **���** �� �������� ��� ����� � ������ ������, ����� �� ���� �� ������ ���������� ��� �����, � ����� ���� ������� ������� �� ������������.~ [HAERD082]
  IF ~~ THEN REPLY ~���� ����� ���������, ��� ��������� ����� � ����������� �������?~ GOTO 41
  IF ~~ THEN REPLY ~� ��� � ���� ������ �������?~ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY ~������� ������ ��, �� �������� ��������������� � �������, ������� ��� ��������� ���. **���** ���� ���� ���� ������ ����� ����� �� ���� � �� �����������. ������ ������ ������ ���� ��������, � ��� ���������� ��� ����� � ��������� �����������.~ [HAERD084]
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY ~������, ����� ��������� �����������, ������� ����� ���������� ����� ������, ������� ���� ������ ������� � ����� �����. ���� ��� ��� ���������, ����� ��������� ����� ��������� � ������������.~ [HAERD085]
  IF ~~ THEN REPLY ~��� ��� �����, � ��������� ��������!~ GOTO 48
  IF ~~ THEN REPLY ~��������� ��������� � ������������. ��� ��� ��������.~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY ~ **���** ���� ���������� ��������� � ����������� �� ����, ��� ����� �����. �������� � ���, ���� �� ��������� ����� ���� - � ������������ ����������� � ����� ���.~ [HAERD086]
  IF ~~ THEN DO ~SetGlobal("HaerdalinTalk","GLOBAL",3)CreateVisualEffectObject("ICRMPARI",Myself)Wait(3)DestroySelf()~ EXIT
END

