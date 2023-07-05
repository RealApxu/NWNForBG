// Лунный лес пещеры  Акулатраксас Зеленый дракон  Зеленые драконы воинственны и склонны нападать без всякого повода. Они устраивают логова в древних лесах, где летают под кронами деревьев.

BEGIN ~NWDRACO2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!PartyHasItem("NWHEAD01")~ THEN BEGIN 0 // from:
  SAY ~Зачем вы здесь, малютка? По какой причине вы явились в пещеру, в которой обитает существо несравнимо большее, чем вы сами? Почему осмеливаетесь вы тревожить могущественную Акулатраксас?~ [DRACO251]
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Я ищу Слова Власти.~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Я из команды <CHARNAME>. Я ищу Слова Власти.~ GOTO 1
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Отдай мне свои сокровища, червь, не то я убью тебя!~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я никогда не слышала о Словах Власти, а я прожила в этих горах всю свою жизнь. И я буду продолжать жить здесь и дальше, как бы ни пытались изгнать меня великаны холмов.~
  IF ~~ THEN REPLY ~Что вы говорили насчет великанов холмов?~ GOTO 6
  IF ~~ THEN REPLY ~Великая Акулатраксас, неужели великаны холмов так глупы, что осмеливаются бросать вызов вашей мощи?~ GOTO 7
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Отдай мне свои сокровища, червь, не то я убью тебя!~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Вы проявляете уважение, которое и следует проявлять к драконам. Это хорошо, существо <RACE>. Беседовать с вами мне гораздо приятнее, чем убивать наглых горных великанов, которые посмели атаковать мое логово. Итак, о чем вы хотите спросить?~
  IF ~~ THEN REPLY ~Великая Акулатраксас, неужели великаны холмов так глупы, что осмеливаются бросать вызов вашей мощи?~ GOTO 7
  IF ~~ THEN REPLY ~Вы поистине поразительное существо. Есть ли где-нибудь поблизости еще драконы, способные прославить вашу древнюю расу?~ GOTO 8
  IF ~~ THEN REPLY ~Скажите, ведь ваши знания невероятно велики, а  известно ли вам что-нибудь о Словах Власти?~ GOTO 1
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Осторожнее, крошка <RACE>. Только дурак отдает приказы дракону у него в логове. Я прощу вам это нарушение этикета... на сей раз. Если вы будете продолжать свои оскорбления, я уничтожу вас, как уже уничтожила наглых великанов холмов, которые оказались настолько глупы, что попытались атаковать меня в моем же собственном логове! Задавайте свой вопрос, но тщательнее подбирайте слова.~
  IF ~~ THEN REPLY ~Великая Акулатраксас, неужели великаны холмов так глупы, что осмеливаются бросать вызов вашей мощи?~ GOTO 7
  IF ~~ THEN REPLY ~Вы поистине поразительное существо. Есть ли где-нибудь поблизости еще драконы, способные прославить вашу древнюю расу?~ GOTO 8
  IF ~~ THEN REPLY ~Скажите, ведь ваши знания невероятно велики, а  известно ли вам что-нибудь о Словах Власти?~ GOTO 1
  IF ~~ THEN REPLY ~Ты уже кончила тявкать, ящерица-переросток? У тебя из рта идет отвратительный запах.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~Я вижу, тебе нужно преподать хороший урок, глупое существо <RACE>! Я убью тебя, как уже убила тех великанов, которые напали на мое логово!~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY ~Если у тебе есть дела где-то в другом месте, можешь заняться ими. Акулатраксас дает разрешение уйти, малютка.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Вы крайне бесцеремонны, <MALEFEMALE> <RACE>. Вам следует более уважительно обращаться к драконам... Мои сородичи могут оказаться не так терпимы к подобным ужасным нарушениям этикета, я же, пожалуй, отвечу на ваш вопрос.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Великаны холмов пытались украсть мои яйца! Логова многих моих сородичей были атакованы. Многие драконы были убиты, а их яйца украдены.~
  IF ~  GlobalLT("NWDraco2Job","GLOBAL",2)~ THEN GOTO 10
  IF ~  GlobalGT("NWDraco2Job","GLOBAL",1)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~В этом районе есть и другие драконы, хотя никто из них не может сравниться со мной. Горгота устроила себе логово на востоке Хребта Мира, хотя я мало знаю о ней. Золотые драконы не испытывают теплых чувств к моему племени.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~Латунный дракон по имени Скиландара тоже устроила логово в Хребте Мира, но ее я тоже избегаю, поскольку она ревнует ко мне. Большинство остальных бежали под напором великанов холмов, осмелившихся атаковать меня в моем собственном логове!~
  IF ~~ THEN REPLY ~Что вы говорили насчет великанов холмов?~ GOTO 6
  IF ~~ THEN REPLY ~Великая Акулатраксас, неужели великаны холмов так глупы, что осмеливаются бросать вызов вашей мощи?~ GOTO 7
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~Но великаны холмов похожи на всех низших существ: они не могут сравниться с таким драконом, как я, даже если их много. Проклятые налетчики не осмелятся трогать мои яйца!~
  IF ~~ THEN REPLY ~Гнусные налетчики заслуживают смерти за то, что осмелились покуситься на ваших отпрысков!~ GOTO 12
  IF ~~ THEN REPLY ~Я могу позаботиться об этих великанах холмов для вас... за определенную цену.~ GOTO 13
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~Но теперь у меня есть трофей, голова вожака великанов, а без вожака они не осмелятся приходить ко мне за моими яйцами!~
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY ~Я не могу покинуть свое логово. Я должна защищать свои яйца, пока они не проклюнутся. Но я не успокоюсь, пока великаны не будут уничтожены, и голова их вожака не будет лежать у моих ног! Я даже готова поделиться с вами частью своего сокровища, чтобы спасти жизнь своим детям. Могу ли я еще что-нибудь сделать для вас, если вы согласитесь обдумать мое предложение, <RACE>?~
  IF ~~ THEN REPLY ~Где я могу найти вожака великанов?~ DO ~SetGlobal("NWDraco2Job","GLOBAL",1)~ UNSOLVED_JOURNAL ~Работа для Акулатраксас

На самку зеленого дракона Акулатраксас нападают великаны холмов, желающие украсть ее яйца. Она предложила подарить сокровище из своих запасов любому, кто принесет ей голову предводителя великанов холмов. По ее словам, логово великанов нужно искать на запад от ее пещеры.~ GOTO 14
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY ~Торговаться с драконом в ее собственном логове? Вы так же храбры, как и глупы... В любое другое время я бы убила вас за такое оскорбление, но сейчас обстоятельства необычны.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~Вожак горных великанов прячется где-то на горном плато на западе. Принесите мне его голову, и вы получите свое вознаграждение. А теперь, крошечный инструмент моего мщения, что еще вы хотели?~
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("NWHEAD01")~ THEN BEGIN 15 // from:
  SAY ~**фыркает** Акулатраксас узнает ваш запах, малютка. Зачем вы вернулись, крошка, и почему беспокоите существо, которое гораздо больше вас?~ [DRACO252]
  IF ~~ THEN REPLY ~Я ищу Слова Власти.~ GOTO 1
  IF ~~ THEN REPLY ~Прошу вас, могущественная Акулатраксас, не могли бы вы в своей мудрости ответить мне на несколько вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть несколько вопросов, на которые вы должны ответить.~ GOTO 3
  IF ~~ THEN REPLY ~Отдай мне свои сокровища, червь, не то я убью тебя!~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)PartyHasItem("NWHEAD01")~ THEN BEGIN 16 // from:
  SAY ~**фыркает** Акулатраксас чует кровь и... что-то еще. Что-то грязное. **ФЫРКАЕТ** У вас голова вожака горных великанов! Дайте ее мне, чтобы я своими глазами посмотрела на доказательство его смерти!~ [DRACO250]
  IF ~~ THEN REPLY ~Для меня большая честь вручить вам голову вожака великанов, великая Акулатраксас.~ GOTO 17
  IF ~~ THEN REPLY ~Какое вознаграждение я получу за эту голову?~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY ~Великаны холмов не будут больше нападать на моих сородичей! Убив их вожака, вы заслужили мою благодарность. Не так легко человеку получить милость дракона. Мы, драконы, неохотно делимся своими сокровищами, но вы спасли мои яйца и жизни моих еще не проклюнувшихся детей от новых набегов этих отвратительных великанов. Возьмите это золото, <RACE>. Для большинства бескрылых это целое состояние.~
  IF ~~ THEN REPLY ~Благодарю вас за этот щедрый дар, о могучая Акулатраксас.~ GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Великая Акулатраксас, разумеется, жизнь ваших отпрысков стоит больше, чем вы мне предложили?~ GOTO 20
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Великая Акулатраксас, разумеется, жизнь ваших отпрысков стоит больше, чем вы мне предложили?~ GOTO 21
  IF ~~ THEN REPLY ~Лучше вырой ямку поглубже в этой куче золота, Акулатраксас, не то твои яйца могут оказаться в опасности!~ GOTO 22
  IF ~~ THEN REPLY ~Отдай мне свои сокровища, червь, не то я убью тебя!~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY ~Осторожнее, <RACE>. Неразумно демонстрировать вашу жадность в собственном логове дракона, не то я могу подумать, что вы хотите обокрасть меня. Вы получите вознаграждение в свое время, как только отдадите мне голову вожака!~
  IF ~~ THEN REPLY ~Для меня большая честь вручить вам голову вожака великанов, великая Акулатраксас.~ GOTO 17
  IF ~~ THEN REPLY ~Мне не нравятся ваши манеры, драконица. Думаю, я оставлю эту голову себе.~ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY ~Вы проявляете уважение, которое и следует проявлять к драконам. Это хорошо, существо <RACE>.~
  IF ~~ THEN DO ~TakePartyItem("NWHEAD01")GiveGoldForce(8000)SetGlobal("NWDraco2Job","GLOBAL",2)AddexperienceParty(110000)EraseJournalEntry(%Работа для Акулатраксас

На самку зеленого дракона Акулатраксас нападают великаны холмов, желающие украсть ее яйца. Она предложила подарить сокровище из своих запасов любому, кто принесет ей голову предводителя великанов холмов. По ее словам, логово великанов нужно искать на запад от ее пещеры.%)~ SOLVED_JOURNAL ~Работа для Акулатраксас

Голова вождя великанов холмов была доставлена зеленому дракону Акулатраксас, и теперь ее яйцам ничего не угрожает.~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY ~Вы дерзки, <MALEFEMALE>. Более разумное существо приняло бы золото дракона, пока он не передумал. Но вы мне нравитесь. Вы развлекаете меня, а моим последним питомцам это не удавалось. А зачем мне нужен питомец без ошейника? Возьмите это ожерелье, <RACE>. Его магия не стоит моего внимания, но вы можете счесть ее забавной.~
  IF ~~ THEN DO ~TakePartyItem("NWHEAD01")GiveGoldForce(8000)GiveItemCreate("NWAMUL02",LastTalkedToBy,0,0,0)SetGlobal("NWDraco2Job","GLOBAL",2)AddexperienceParty(110000)EraseJournalEntry(%Работа для Акулатраксас

На самку зеленого дракона Акулатраксас нападают великаны холмов, желающие украсть ее яйца. Она предложила подарить сокровище из своих запасов любому, кто принесет ей голову предводителя великанов холмов. По ее словам, логово великанов нужно искать на запад от ее пещеры.%)~ SOLVED_JOURNAL ~Работа для Акулатраксас

Голова вождя великанов холмов была доставлена зеленому дракону Акулатраксас, и теперь ее яйцам ничего не угрожает.~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY ~Ваши манеры отвратительны, существо... но я прощаю вас ради той службы, которую вы мне сослужили. Возьмите это ожерелье в качестве последнего дара, и покончим с этим. В будущем советую вам выказывать больше уважения при разговоре с существом, которое настолько больше вас.~
  IF ~~ THEN DO ~TakePartyItem("NWHEAD01")GiveGoldForce(8000)GiveItemCreate("NWAMUL02",LastTalkedToBy,0,0,0)SetGlobal("NWDraco2Job","GLOBAL",2)AddexperienceParty(110000)EraseJournalEntry(%Работа для Акулатраксас

На самку зеленого дракона Акулатраксас нападают великаны холмов, желающие украсть ее яйца. Она предложила подарить сокровище из своих запасов любому, кто принесет ей голову предводителя великанов холмов. По ее словам, логово великанов нужно искать на запад от ее пещеры.%)~ SOLVED_JOURNAL ~Работа для Акулатраксас

Голова вождя великанов холмов была доставлена зеленому дракону Акулатраксас, и теперь ее яйцам ничего не угрожает.~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4
  SAY ~Вы осмеливаетесь угрожать моим детям, бескрылое существо? Такое преступление простить нельзя! Теперь вы узнаете ярость Акулатраксас!~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)Enemy()EraseJournalEntry(%Работа для Акулатраксас

На самку зеленого дракона Акулатраксас нападают великаны холмов, желающие украсть ее яйца. Она предложила подарить сокровище из своих запасов любому, кто принесет ей голову предводителя великанов холмов. По ее словам, логово великанов нужно искать на запад от ее пещеры.%)~ EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)PartyHasItem("NWHEAD01")~ THEN BEGIN 16 // from:
  SAY ~**фыркает** Акулатраксас чует кровь и... что-то еще. Что-то грязное. **ФЫРКАЕТ** У вас голова вожака горных великанов! Дайте ее мне, чтобы я своими глазами посмотрела на доказательство его смерти!~ [DRACO250]
  IF ~~ THEN REPLY ~Для меня большая честь вручить вам голову вожака великанов, великая Акулатраксас.~ GOTO 17
  IF ~~ THEN REPLY ~Какое вознаграждение я получу за эту голову?~ GOTO 18
END

