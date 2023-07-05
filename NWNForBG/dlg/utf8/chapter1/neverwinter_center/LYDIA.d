// Центр Невервинтера  Лидия полурослик женщина из гнезла нищих.  Эта женщина, очевидно, расстроена. Судя по ее изможденному виду, чума перевернула ее жизнь с ног на голову.

BEGIN ~LYDIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Что вам нужно? Я не стражник, и ничем не могу помочь. Я могу только ждать, пока меня не заразит чума, а у меня нет даже своей постели. Не думаю, что было бы лучше, если бы тебе пришлось, потерять свой дом, не говоря уж о зомби, которые гонялись бы за тобой. Это, конечно, всего лишь Гнездо Нищих, но это лучше, чем просто сидеть здесь и вдыхать дым сжигаемых трупов.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Может быть, я могу тебе помочь?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Нет, пожалуйста, я не хочу больше об этом думать.~
  IF ~~ THEN REPLY ~Может быть, я могу тебе помочь?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Зачем тебе помогать мне? Я всего лишь простолюдин из Гнезда Нищих. Половина города, наверное, только рада, что у нас нашествие, будь то хоть и зомби. Оставь меня в покое. Пожалуйста.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Да, просто оставьте меня. Мне больше некуда идти.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(3,2)~ THEN BEGIN 4 // from:
  SAY ~Что вам нужно? Я не стражник, и ничем не могу помочь. Я могу только ждать, пока меня не заразит чума, а у меня нет даже своей постели. Не думаю, что было бы лучше, если бы тебе пришлось, потерять свой дом, не говоря уж о зомби, которые гонялись бы за тобой. Это, конечно, всего лишь Гнездо Нищих, но это лучше, чем просто сидеть здесь и вдыхать дым сжигаемых трупов.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Может быть, я могу тебе помочь?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(3,3)~ THEN BEGIN 5 // from:
  SAY ~Прошу, не троньте меня. Мне и так досталось. У меня ничего нет. Нет даже местечка, чтобы лечь и умереть. Не думаю, что было бы лучше, если бы тебе пришлось, потерять свой дом, не говоря уж о зомби, которые гонялись бы за тобой. Это, конечно, всего лишь Гнездо Нищих, но это лучше, чем просто сидеть здесь и вдыхать дым сжигаемых трупов.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Может быть, я могу тебе помочь?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Зомби больше нет? Не знаю, что и сказать. Я так рада, что могу вернуться домой... Хоть это и бедняцкий квартал... Но другого дома у меня нет.~
  IF ~~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

