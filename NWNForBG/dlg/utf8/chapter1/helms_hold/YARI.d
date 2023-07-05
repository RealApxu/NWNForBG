// Крепость Хельма   Яри Нож, Этот полуорк в бешенстве. Он выглядит абсолютно безумным.

BEGIN ~YARI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Даааа... свобода! СВОБОДА!! Я расскажу Древним о вашей глупости и слабости! Ваше время приближается! ПРИБЛИЖАЕТСЯ!!!!~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~Хе-хе! Вы знаете, мне пришла в голову мысль, что если один раз убить всех здешних хельмитов, этого будет достаточно... Но нет... А потом, знаете ли, они все вдруг воскресли! Хорошо, что мне удалось запереться здесь. Да... ХОРОШО!!! ПРОКЛЯТЬЕ!!!~
  IF ~~ THEN REPLY ~Ты один из людей Дестера? Ты не пленный хельмит?~ GOTO 2
  IF ~~ THEN REPLY ~Мне тебя совсем не жаль, чужак.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~Люди Дестера? Дестера!? Дестер - всего лишь орудие, как и все остальные. Как и вы. Некоторые из нас счастливы просто служить. Его время вышло. Он должен был принять данную ему почетную роль. Он лишь отсрочивает неизбежное. Вы... Вы тоже за все заплатите. И Невервинтер. Прошлое возвращается, и скоро все вы умрете.~
  IF ~~ THEN REPLY ~Говори, где Дестер!~ GOTO 4
  IF ~~ THEN REPLY ~Кто твои хозяева?~ GOTO 4
  IF ~~ THEN REPLY ~Почему Дестера все бросили?~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Чужак?! Я знаю правду! А вы ничего не знаете! Мы всего лишь орудия для большей славы! Вы, я, Дестер! Его время вышло. Он должен был принять данную ему почетную роль. Он лишь отсрочивает неизбежное. Он лишь отсрочивает неизбежное. Вы... Вы тоже за все заплатите. И Невервинтер. Прошлое возвращается, и скоро все вы умрете.~
  IF ~~ THEN REPLY ~Говори, где Дестер!~ GOTO 4
  IF ~~ THEN REPLY ~Кто твои хозяева?~ GOTO 4
  IF ~~ THEN REPLY ~Почему Дестера все бросили?~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~Больше никакой правды! Никакой! Вы узнаете все, что нужно, когда пойдете в пищу! ХААААА-хааааа-хa-хаа!~
  IF ~  Global("Talked","LOCALS",0)~ THEN DO ~SetGlobal("Talked","LOCALS",1)~ EXIT
  IF ~  Global("Talked","LOCALS",1)~ THEN DO ~Enemy()~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 5 // from:
  SAY ~Вы? Вам этого недостаточно? Вы ничего не получите! НИЧЕГО! Мои хозяева покарают вас всех во имя прошлого! Во имя будущего!~
  IF ~~ THEN REPLY ~Расскажи мне про своих хозяев!~ GOTO 4
  IF ~~ THEN REPLY ~Рассказывай про Дестера, а не то убью!~ GOTO 6
  IF ~~ THEN REPLY ~Может, я поговорю с тобой позже. Сумасшедший идиот.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~Это честь - отдать свою жизнь за Древних! Дестеру нужно понять это! Люди Ока должны служить! И вы тоже! Все жители Невервинтера будут служить!~
  IF ~~ THEN REPLY ~Расскажи мне про своих хозяев!~ GOTO 4
  IF ~~ THEN REPLY ~Может, я поговорю с тобой позже. Сумасшедший идиот.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~Ваше время приближается! Ваше время приближается! После меня, после Дестера, но не раньше Невервинтера! ХААААА-ха-ха-ха-ха-ха!!!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

