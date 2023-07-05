// Чарвуд, дом - обыватель мужчина Люди из этого городка выглядят вполне здоровыми, но что-то с ними не так. Их взгляд устремлен куда-то вдаль, и, кажется, ни у кого из них нет никаких дел. Они не работают и не занимаются коммерцией. Все они апатичны, и печать отчаяния лежит на их лицах.

BEGIN ~CHMALE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Charwood_Is_Saved","GLOBAL",0)Global("Charwood_Is_Cursed","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Доброго вам дня, дружище. В Чарвуде редко бывают гости. Если вообще бывают.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я отвечу, хотя слова ваши кажутся мне очень... У вас такая современная речь. Думаю, мэр поможет вам лучше, чем я.~
  IF ~~ THEN REPLY ~Что вы можете мне сказать о Чарвуде?~ GOTO 3
  IF ~~ THEN REPLY ~Я разыскиваю культ, который вызвал чуму в Невервинтере.~ GOTO 4
  IF ~~ THEN REPLY ~Может, слышали какие-нибудь странные слухи?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~До свидания. Может быть, мы еще поговорим... и еще...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~О, я мало что могу вам рассказать. Это самое обыкновенное место... Тут и без того всяких историй хватает...~
  IF ~~ THEN REPLY ~Чарвуд очень уединенное место. Кто защищает вас?~ GOTO 6
  IF ~~ THEN REPLY ~Есть в этом городе важные персоны?~ GOTO 7
  IF ~~ THEN REPLY ~Есть у вас лавки? Торговцы?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Я ничего не знаю об этом... Невервинтер, говорите? Кажется, только вчера мне рассказывали, что этот эльф, Хэлуэт Невер, основал его. Прошу прощения, но я ничего не знаю ни о какой секте. Мы живем очень уединенно... То есть, я хочу сказать, мы предпочитаем быть сами по себе.~
  IF ~~ THEN REPLY ~А где ваши стражники? Может, они знают?~ GOTO 9
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Мы ничего не знаем. Новости извне могут привести к переменам, а здесь все должно оставаться, как есть, или настанет конец. Я... Я не могу говорить об этом. Лучше поговорите с мэром Мобли. Он выслушает все ваши истории. У вас их так много... совсем как у Квинта... Такие вещи приводят к переменам...~
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 10
  IF ~~ THEN REPLY ~Кто такой Квинт?~ GOTO 11
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~Ну, думаю, вы говорите о замке Джарегов. Лорды Карлат и Квинт Джарег основали это поселение, и правят им, сделав его безопасным для всех нас. Пожалуйста, идите рассказывать свои истории мэру. Не нужно говорить о том, что происходит в замке Джарегов. Это может привести к переменам, а они здесь никому не нужны.~
  IF ~~ THEN REPLY ~Вы боитесь лордов Джарегов?~ GOTO 12
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 10
  IF ~~ THEN REPLY ~Кто такой Карлат?~ GOTO 13
  IF ~~ THEN REPLY ~Кто такой Квинт?~ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY ~Послушайте, истории у нас выслушивает мэр Мобли. У него есть ответы на все вопросы... Даже на такие хитрые, как у Квинта...~
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 10
  IF ~~ THEN REPLY ~Кто такой Квинт?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY ~Хмм? О, нет. Нет у нас никакой торговли. Очень редко, в качестве вознаграждения за услугу. Тут никто не торгует ничем, кроме историй, и даже в этом случае... Очень жаль... поищите в другом месте. Вот в этом торговом городке, не так давно его построили поблизости... Порт-Лласт, по-моему?~
  IF ~~ THEN REPLY ~Только что построен? Порт-Лласт стоит уже много лет.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~Нам не нужны стражники... кроме того, что стоит у ворот замка, разумеется. Лорды Джареги обеспечивают нашу безопасность... Мы все здесь из-за лордов Джарегов. Но вам не следует говорить о делах Джарегов. Это может привести к переменам. Может вызвать конец.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY ~Вам надо поговорить с мэром Мобли. Больше я ничего не могу сказать. Люди рассказывают слишком много историй. И слишком многого хотят. Взять хотя бы Квинта.~
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 10
  IF ~~ THEN REPLY ~От чего защищает вас стражник у ворот?~ GOTO 15
  IF ~~ THEN REPLY ~Кто такой Квинт?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~Ну, он в мэрии, как... как всегда... Никогда не уходит... никогда не уходит... только бесконечный сон...~
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~Не разговаривайте с ним! Он безумец! Он уничтожит все, все! И запрет вас здесь, как уже запер всех нас... Он... Он... Я... Мне очень жаль, но я совсем не помню, о чем мы говорили. Правда, странно? Ничегошеньки не помню...~
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY ~Вы не понимаете. Рассказывание историй не дает ничего, кроме неприятностей - спросите у Квинта! Пожалуйста, поговорите с мэром Мобли.~
  IF ~~ THEN REPLY ~Кто такой Квинт?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY ~Я... Нет, неправильно... это было... Я не знаю, как давно это было. Это неправильно. Погодите... было что-то... Остановлено... заморожено... Это была отличная история! Все шло хорошо, пока он не довел до конца... и мы все продолжали жить счастливо даже после этого... вечно...~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~Стражник? У ворот замка? Я... Я не помню... Он здесь недавно... его нанял мэр Мобли... Он защищает нас от... от перемен...~
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 10
  IF ~~ THEN REPLY ~Кто такой Квинт?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 16 // from: 13
  SAY ~Простите, не стоило мне так отклоняться от темы. Я просто запутался немного. Ну, думаю, вы найдете все, что нужно, в Порт-Лласте.~
  IF ~~ THEN REPLY ~Расскажите мне еще о Чарвуде.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 17 // from:
  SAY ~Привет. Надеюсь, вас сюда привели добрые намерения? В Чарвуде уже очень давно не видели новых лиц.~
  IF ~~ THEN REPLY ~О чем вы говорите? Мы же с вами уже виделись.~ GOTO 18
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~Я в себе не сомневаюсь. Пока мы с вами не разговорились, я новичков тут не встречал. В этом нет сомнений... нет сомнений... Время здесь течет медленно... оно почти остановилось... Он остановил его... остановил смерть... Но... Но было слишком поздно для... для детей...~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18
  SAY ~Простите... Я слегка запутался. Приятно было познакомиться.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END
