// Крепость Хельма   Дестер  Дестер в совершенной ярости. Он отчаянно пытается завершить свой ритуал. Его планы рассыпаются как карточный домик, и это его совсем не радует.

// Я... я побежден. Нет смысла продолжать этот бой. Я... я все равно нужен тебе живым. [DESTH160]

// Вы пришли. Тогда сражайтесь, и мы посмотрим, кто теперь управляет судьбой! Я ЖДУ ВАС!! [DESTH145]

// Моя судьба в моих руках! А не в руках Маугрима! И не в ваших! И не в руках Древних! [DESTH146]

BEGIN ~DESTHER3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Pause","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~Я уничтожен... ты молодец, дружочек. Вот предатель и пойман. И что теперь?~ [DESTH161]
  IF ~~ THEN REPLY ~Я доставлю тебя обратно и представлю суду.~ GOTO 1
  IF ~~ THEN REPLY ~Мне бы следовало убить тебя прямо сейчас.~ GOTO 2
  IF ~~ THEN REPLY ~Пришло время объясниться, Дестер.~ GOTO 3
END

IF ~~ THEN BEGIN 1  // from: FENTHIC2 
  SAY ~Да, я нужен Нашеру живым, не так ли? Он захочет знать причины и оправдания. Ему будет нужен негодяй, которого он бросит толпе. Я думаю, меня казнят, чтобы задобрить народ, но это ничего не меняет. То ли еще будет. Вы же ничего не понимаете!~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // 0.1
  SAY ~И что это докажет? Нет, Нашеру я нужен живым. Он захочет знать причины и оправдания. Ему будет нужен негодяй, которого он бросит толпе. Я думаю, меня казнят, чтобы задобрить народ, но это ничего не меняет. То ли еще будет. Вы же ничего не понимаете!~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // 0.2
  SAY ~У тебя, конечно, куча вопросов. Но у меня нет ответов. Я вам такого удовольствия не доставлю, ни тебе, ни этой шайке в Невервинтере. Ваша победа будет бесплодной.~
  IF ~~ THEN REPLY ~Где лекарство?~ GOTO 4
  IF ~~ THEN REPLY ~Кому ты служишь?~ GOTO 6
  IF ~~ THEN REPLY ~Чем было вызвано нападение на Невервинтер? Зачем ты распространял чуму?~ GOTO 7
  IF ~~ THEN REPLY ~А что же будет с Фентиком? Из-за твоего предательства и он теперь обречен.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // 0.3
  SAY ~Ну да, конечно, лекарство. Не волнуйся. Оно здесь. Но это неважно. Чума бы и так довольно скоро прекратилась без моих ложных хельмитов, которые ее распространяли. Может вам и удастся спасти кое-кого из тяжело больных, но удар уже нанесен. Чума подорвала силы города. Она сделала свое дело.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // 2.1
  SAY ~Лекарство у меня. Когда ты приведешь меня к лорду Нашеру, лекарство будет со мной. Можешь не искать его, у меня больше нет причин отталкивать вас.~
  IF ~~ THEN REPLY ~Кому ты служишь?~ GOTO 6
  IF ~~ THEN REPLY ~Чем было вызвано нападение на Невервинтер? Зачем ты распространял чуму?~ GOTO 7
  IF ~~ THEN REPLY ~А что же будет с Фентиком? Из-за твоего предательства и он теперь обречен.~ GOTO 8
  IF ~~ THEN REPLY ~Заткнись. Мне еще нужно тут как следует осмотреться, прежде чем забрать тебя обратно.~ GOTO 9
  IF ~~ THEN REPLY ~Хватит! Я немедленно доставлю тебя в Невервинтер!~ GOTO 10
END

IF ~~ THEN BEGIN 6 // 2.2
  SAY ~Мы - Люди Ока. Мы - те, кто следует. Мы - прислужники Древних, а вы - вы просто скот! Вы ничего не поймете!~
  IF ~~ THEN REPLY ~Кто такие Древние?! Говори!~ GOTO 11
  IF ~~ THEN REPLY ~Как велика ваша группа? Сколько в ней "Людей Ока"?~ GOTO 12
END

IF ~~ THEN BEGIN 7 // 2.3
  SAY ~А зачем вообще нападают на города? Чтобы ослабить его и сделать нападавшего сильнее. Теперь Невервинтер - только тень его былой славы, притом славы незаслуженной! Ты увидишь! Для меня было честью распространить великую болезнь! Она вас вымотала и теперь кормит вашу погибель! Души погибших дадут силу моим повелителям!~
  IF ~~ THEN REPLY ~Если это не ты создал чуму, тогда кто же?~ GOTO 13
  IF ~~ THEN REPLY ~Объясни, что ты имел в виду! Что делает чума?~ GOTO 13
END

IF ~~ THEN BEGIN 8 // 2.4
  SAY ~Прекрасно! Пусть этот чумной сброд жаждет крови! Пусть требуют самых жестоких кар! Мне-то что?! Фентик был прекрасным инструментом. Он так хотел верить в чужую веру. И вот, теперь он почти соучастник, и уж как минимум проявил преступную доверчивость. Скажи мне, <CHARNAME>, что случается с людьми, которые набрасываются на лучших среди них? Теперь им везде будут чудиться предатели. Их дух ослабнет еще больше.~
  IF ~~ THEN REPLY ~Где лекарство?~ GOTO 4
  IF ~~ THEN REPLY ~Кому ты служишь?~ GOTO 6
  IF ~~ THEN REPLY ~Чем было вызвано нападение на Невервинтер? Зачем ты распространял чуму?~ GOTO 7
  IF ~~ THEN REPLY ~Заткнись. Мне еще нужно тут как следует осмотреться, прежде чем забрать тебя обратно.~ GOTO 9
  IF ~~ THEN REPLY ~Хватит! Я немедленно доставлю тебя в Невервинтер!~ GOTO 10

END

IF ~~ THEN BEGIN 9 // 2.5
  SAY ~Жадный наемник. Можешь грабить, забирай, что хочешь. У меня нет сил сопротивляться. Возвращайся ко мне перед уходом. Думаю, лорд Нашер ждет, не дождется меня.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // 2.6
  SAY ~Можешь не беспокоиться за меня. Я знаю, что меня ждет. Судьба моя предрешена. В этом нет ничего приятного. Впрочем, это все же лучше неуверенности, которая ждет вас всех.~
  IF ~~ THEN DO ~SetGlobal("NWNChapter","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // 2.7
  SAY ~Побереги свой гнев, от меня ты ничего не добьешься. Я не могу тебе этого объяснить. Разве муравей поймет колесо, которое раздавит его? Разве вепрь поймет копье, которое пронзает его? Ты не в состоянии понять моих повелителей, и я не буду о них говорить. Можешь мне угрожать, пусть Нашер притащит своих палачей, но вы от меня ни слова не услышите.~
  IF ~~ THEN REPLY ~Как велика ваша группа? Сколько в ней "Людей Ока"?~ GOTO 12
  IF ~~ THEN REPLY ~Где лекарство?~ GOTO 4
  IF ~~ THEN REPLY ~Чем было вызвано нападение на Невервинтер? Зачем ты распространял чуму?~ GOTO 7
  IF ~~ THEN REPLY ~Заткнись. Мне еще нужно тут как следует осмотреться, прежде чем забрать тебя обратно.~ GOTO 9
  IF ~~ THEN REPLY ~Хватит! Я немедленно доставлю тебя в Невервинтер!~ GOTO 10
END

IF ~~ THEN BEGIN 12 // 2.8
  SAY ~Имя нам легион, и нас становится все больше и больше. В конце концов, все, кто захочет выжить, присоединятся к нам. Плыви по течению или утонешь! Вы победили моих ложных хельмитов, но новые слуги займут их место. Наша работа здесь закончена - наше поражение ничего не значит.~
  IF ~~ THEN REPLY ~Кто такие Древние?! Говори!~ GOTO 11
  IF ~~ THEN REPLY ~Где лекарство?~ GOTO 4
  IF ~~ THEN REPLY ~Чем было вызвано нападение на Невервинтер? Зачем ты распространял чуму?~ GOTO 7
  IF ~~ THEN REPLY ~Заткнись. Мне еще нужно тут как следует осмотреться, прежде чем забрать тебя обратно.~ GOTO 9
  IF ~~ THEN REPLY ~Хватит! Я немедленно доставлю тебя в Невервинтер!~ GOTO 10
END

IF ~~ THEN BEGIN 13 // 7.1
  SAY ~Я ничего не скажу! Ты как дитя, которое жаждет объяснений, но ничего не понимает. Вы все обречены и ничего не можете с этим поделать! Вот увидите!~
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 3
  IF ~~ THEN REPLY ~Заткнись. Мне еще нужно тут как следует осмотреться, прежде чем забрать тебя обратно.~ GOTO 9
  IF ~~ THEN REPLY ~Хватит! Я немедленно доставлю тебя в Невервинтер!~ GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~Ты не торопишься доставить меня к Нашеру и вашей бесценной леди Арибет. Быстрее, довольно мародерства. Давай закончим этот фарс.~ [DESTH162]
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 3
  IF ~~ THEN REPLY ~Заткнись. Мне еще нужно тут как следует осмотреться, прежде чем забрать тебя обратно.~ GOTO 9
  IF ~~ THEN REPLY ~Хватит! Я немедленно доставлю тебя в Невервинтер!~ GOTO 10
END

