// Лунный Лес логово горного великана  Пленник великанов холмов Человек Мужчина  Метки на одежде этого мужчины говорят о том, что он - варвар из утгардтского племени Золотого Орла.

BEGIN ~PRISNW3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Спасибо, что спасли меня от этого мясника. Он хотел нарубить меня на кусочки и сварить рагу!~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Как великаны холмов вас поймали?~ GOTO 1
  IF ~~ THEN REPLY ~Можете что-нибудь рассказать мне о великанах холмов?~ GOTO 2
  IF ~~ THEN REPLY ~Мне уже пора идти. Вы сможете сами выбраться отсюда?~ GOTO 3
  IF ~~ THEN REPLY ~Представьте себе - это не спасение! Я здесь, чтобы убить вас!~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я Утгардт из племени Золотого Орла. Великаны захватили меня, когда устроили набег на наше стойбище. Мы сражались, чтобы защитить землю своих предков, но великанов было слишком много, и им удалось захватить в плен несколько человек.~
  IF ~~ THEN REPLY ~Можете что-нибудь рассказать мне о великанах холмов?~ GOTO 2
  IF ~~ THEN REPLY ~Мне уже пора идти. Вы сможете сами выбраться отсюда?~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Я слышал, как мои тюремщики говорили о каком-то огненном великане, посланнике от Клаута, который предложил крупное вознаграждение за драконьи яйца, которые могут найти великаны холмов.~
  IF ~~ THEN REPLY ~Зачем им нужны драконьи яйца?~ GOTO 4
  IF ~~ THEN REPLY ~Клаут? Кто это?~ GOTO 5
  IF ~~ THEN REPLY ~Что там насчет посланника огненных великанов?~ GOTO 6
  IF ~~ THEN REPLY ~Мне уже пора идти. Вы сможете сами выбраться отсюда?~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Я Утгардт, Сын Орла, гордый воин. Я сам найду выход из этого места. А теперь мне пора воссоединиться с мои народом. Прощайте, и пусть парящий орел наблюдает за вами.~
  IF ~~ THEN DO ~AddexperienceParty(30000)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~Этого я не знаю. Но прежде чем я попал в плен, я слышал слухи о том, что банды великанов холмов нападают на гнезда драконов и воруют их яйца. Должно быть они собирали яйца для посланника Клаута.~
  IF ~~ THEN REPLY ~Клаут? Кто это?~ GOTO 5
  IF ~~ THEN REPLY ~Что там насчет посланника огненных великанов?~ GOTO 6
  IF ~~ THEN REPLY ~А вы-то, собственно, кто? И почему великаны холмов вас захватили?~ GOTO 1
  IF ~~ THEN REPLY ~Мне уже пора идти. Вы сможете сами выбраться отсюда?~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~Моему народу знакомо это ужасное имя. Говорят, что этот Клаут живет в крепости на Хребте Мира. Они говорят, что даже Скрогг, великий король огненных великанов Севера, принес клятву верности Клауту. Моему народу неизвестно, что за существо этот Клаут, но это именно он прислал сюда огненного великана с предложением продать ему драконьи яйца в обмен на золото.~
  IF ~~ THEN REPLY ~Зачем им нужны драконьи яйца?~ GOTO 4
  IF ~~ THEN REPLY ~Что там насчет посланника огненных великанов?~ GOTO 6
  IF ~~ THEN REPLY ~Представьте себе - это не спасение! Я здесь, чтобы убить вас!~ GOTO 7
  IF ~~ THEN REPLY ~Мне уже пора идти. Вы сможете сами выбраться отсюда?~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY ~Я слышал, как мои тюремщики говорили о посланнике огненных великанов, который служит Клауту и остановился в селении великанов холмов. Это он доставил сюда послание Клаута с приказанием переправить ему не проклюнувшиеся драконьи яйца.~
  IF ~~ THEN REPLY ~Зачем им нужны драконьи яйца?~ GOTO 4
  IF ~~ THEN REPLY ~Клаут? Кто это?~ GOTO 5
  IF ~~ THEN REPLY ~А вы-то, собственно, кто? И почему великаны холмов вас захватили?~ GOTO 1
  IF ~~ THEN REPLY ~Мне уже пора идти. Вы сможете сами выбраться отсюда?~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Воины Золотого Орла не умирают без боя!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 8 // from:
  SAY ~Спасибо, что спасли меня от этого мясника. Он хотел нарубить меня на кусочки и сварить рагу! А теперь мне пора воссоединиться с мои народом. Прощайте, и пусть парящий орел наблюдает за вами.~
  IF ~~ THEN DO ~AddexperienceParty(30000)EscapeAreaDestroy(60)~ EXIT
END

