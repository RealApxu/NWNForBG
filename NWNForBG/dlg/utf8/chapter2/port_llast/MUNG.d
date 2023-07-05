// Порт-Лласт Склад в доках   Капитан Мунг    Квест - уговорить капитана Мунга взять груз в Невервинтер

BEGIN ~MUNG~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowCaptain","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Нет, видали вы этого болвана? У меня появилась возможность переправить немного мрамора в Уотердип - можно выручить неплохие деньги! А он тычет мне в морду своей моралью.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~И о чем тут спор?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Можешь называть меня 'капитан Мунг'. И я владею судном, которое перевозит разные товары из Порт-Лласта в другие места - в другие места, которые *я* выбираю. Но этот нехороший хозяин дока превращает мою жизнь в сплошной позор. Скажи, вот тебе бы пришло в голову слать товар в Невервинтер, если бы можно было пойти в Уотердип?~
  IF ~~ THEN REPLY ~Скажите мне правду. Мне нужны подробности.~ GOTO 2
  IF ~~ THEN REPLY ~Мне, в общем-то, все равно. Счастливо.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Эта задница хочет отправить меня в Невервинтер, а у них там чума. И я не хочу рисковать своей жизнью, чтобы тащить им еду и припасы. Особенно в том случае, когда выбор состоит в том, чтобы рисковать жизнью или отвезти в Уотердип немного мрамора за приличную плату. Хорошие деньги, говорю вам!~
  IF ~~ THEN REPLY ~Давай я схожу поговорю с владельцем дока.~ GOTO 5
  IF ~  Global("KnowPrichev","GLOBAL",1)~ THEN REPLY ~У меня был разговор с владельцем дока, и я прошу тебя передумать.~ GOTO 6
  IF ~~ THEN REPLY ~Мне, в общем-то, все равно. Счастливо.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Точно. Счастливо, надеяюсь я все же получу этот груз для Уотердипа.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Тьфу. Если в вас есть хоть немного здравого смысла, вы поговорите с этим хозяином дока и передадите ему мои соображения, пока я не задушил его!~
  IF ~~ THEN DO ~SetGlobal("KnowCaptain","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Спасибо. Не стену брать с вас никаких обещаний, но если сможете убедить его дать мне хороший груз, я буду благодарен.~
  IF ~~ THEN DO ~SetGlobal("KnowCaptain","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~Чего? И вы на его стороне? Я не собираюсь рисковать жизнью и жизнью моей команды. Не верю, что эта чума излечима.~
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~А что, если я заплачу тебе, чтобы покрыть расходы?~ GOTO 7
  IF ~~ THEN REPLY ~Я из Невервинтера. Там порядок, чумы больше нет.~ GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~А весь народ Невервинтера голодает, чтобы ты мог заработать лишних денег....~ GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~А весь народ Невервинтера голодает, чтобы ты мог заработать лишних денег....~ GOTO 10
  IF ~~ THEN REPLY ~Мне, в общем-то, все равно. Счастливо.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY ~Ты заплатишь мне, чтобы я плыл Невервинтер? Это так важно для тебя? Ну, тогда ладно. Я деловой человек. Сколько ты предлагаешь?~
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~400 золотых. Соглашайтесь или нет.~ GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~200 золотых... отправишься за эти деньги в Невервинтер?~ GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~200 золотых... отправишься за эти деньги в Невервинтер?~ GOTO 13
  IF ~~ THEN REPLY ~100 золотых покроют расходы, да?~ GOTO 14
  IF ~~ THEN REPLY ~Вот что. Либо ты отправляешься в Невервинтер, либо я кое-что тебе сломаю.~ GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 6.3
  SAY ~Спорь с кем-нибудь другим, приятель. Меня это не интересует. И я туда не поплыву. Риск не стоит того, что я получу.~
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~А что, если я заплачу тебе, чтобы покрыть расходы?~ GOTO 7
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~А весь народ Невервинтера голодает, чтобы ты мог заработать лишних денег....~ GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~А весь народ Невервинтера голодает, чтобы ты мог заработать лишних денег....~ GOTO 10
  IF ~~ THEN REPLY ~Мне, в общем-то, все равно. Счастливо.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 6.4
  SAY ~Вот вы как ставите вопрос, значит. Прекрасно. Я возьму этот груз. Но вы немедленно оставите меня в покое, лады? Мне пора за работу.~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.5
  SAY ~Да что с вами говорить, когда всю эту чушь я уже слыхал от этого беса из доков? Проваливайте!~
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~А что, если я заплачу тебе, чтобы покрыть расходы?~ GOTO 7
  IF ~~ THEN REPLY ~Я из Невервинтера. Там порядок, чумы больше нет.~ GOTO 8
  IF ~~ THEN REPLY ~Мне, в общем-то, все равно. Счастливо.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~Ну, полагаю, это хорошая цена. Прекрасно, по рукам. Все равно я всегда хотел сделать что-нибудь доброе. Просто нужен был стимул. Приятно иметь с вами дело...~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",1)TakePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY ~200 золотых? И все, что мне нужно сделать, это подкинуть харчей в Невервинтер? Ну ладно. Я готов. Приятно иметь с вами дело...~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",1)TakePartyGold(200)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.4
  SAY ~Простите, 200 золотых это неплохие деньги, но их недостаточно, чтобы пойти на риск немедленной и отвратной смерти.~
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~400 золотых. Соглашайтесь или нет.~ GOTO 11
  IF ~~ THEN REPLY ~Вот что. Либо ты отправляешься в Невервинтер, либо я кое-что тебе сломаю.~ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 7.5
  SAY ~100 золотых? Вы что, Смеетесь надо мной. Предложите мне больше, тогда я подумаю.~
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~400 золотых. Соглашайтесь или нет.~ GOTO 11
  IF ~~ THEN REPLY ~Вот что. Либо ты отправляешься в Невервинтер, либо я кое-что тебе сломаю.~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.5
  SAY ~Не говорите мне, что я должен делать! Кем вы себя возомнили?! Не смейте указывать мне, что делать!! Ну все, я отправляюсь. Забудем о Порт-Лласте. Мне не нужен никакой груз.~
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",2)EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowCaptain","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY ~Вы опять здесь? Я же говорил вам, что ругань с этим дурнем Причевом из дока меня уже довела до ручки. Почему бы вам не пойти и не уладить как-нибудь этот спор?~
  IF ~  Global("KnowPrichev","GLOBAL",1)~ THEN REPLY ~У меня был разговор с владельцем дока, и я прошу тебя передумать.~ GOTO 6
  IF ~~ THEN REPLY ~Скажи еще раз, что у вас проиcходит с владельцем дока?~ GOTO 2
  IF ~~ THEN REPLY ~Ладно, я попробую переубедить владельца дока.~ GOTO 5
  IF ~~ THEN REPLY ~Прости - все это не очень интересно. Счастливо.~ GOTO 4
END

// -----------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("PrichevQuest","GLOBAL",1)Global("PrichevQuest","GLOBAL",3)~ THEN BEGIN 17 // from:
  SAY ~Прекратите мне надоедать, а? Надо грузить этот невервинтерский товар, а время поджимает.~
  IF ~~ THEN EXIT
END
