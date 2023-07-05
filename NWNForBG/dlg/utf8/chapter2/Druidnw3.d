// Лес Невервинтер, дом нимфы - Терари, пропавший друид. в плену у нимфы эльф 

BEGIN ~DRUIDNW3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2901")~ THEN BEGIN 0 // from:
  SAY ~О боги, я вижу, нимфа пленила еще одну жертву. Погоди, но на тебя, по-моему, не подействовали ее чары.~
  IF ~~ THEN REPLY ~Так и есть. Я полностью владею своим сознанием. А кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~У меня, к счастью, хватает ума не поддаваться нимфе. Можешь уходить, и скажи мне спасибо.~ GOTO 2
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Меня зовут Терари. Я друид из рощи Леса Невервинтер. А с кем имею честь?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Аавилл послал меня на твои поиски.~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Я из команды <CHARNAME>. Аавилл послал нас на твои поиски.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Погоди-ка, перед тем, как уходить, спрошу - это не Аавилл тебя послал?~
  IF ~~ THEN REPLY ~Он отправил меня спасать каких-то друидов. Ты случайно не из них?~ GOTO 5
  IF ~~ THEN REPLY ~Мне тут встретился некий Аавилл. Откуда ты его знаешь?~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я постараюсь набраться терпения, но не хочу сидеть здесь взаперти, так что поторопись, пожалуйста.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1
  SAY ~Тогда у меня долг чести и перед тобой, и перед Аавиллом. Я жалею лишь, что не продвинулся дальше в своем задании по спасению Духа Леса.~
  IF ~~ THEN REPLY ~Как далеко ты продвинулся?~ GOTO 7
  IF ~~ THEN REPLY ~Как ты здесь оказался?~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Мудрый Аавилл. Всегда-то он обо всем позаботится. Меня зовут Терари. Я друид из рощи Леса Невервинтер. А с кем имею честь?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Аавилл послал меня на твои поиски.~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Я из команды <CHARNAME>. Аавилл послал нас на твои поиски.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY ~Он - глава нашего круга друидов. Меня зовут Терари. Я друид из рощи Леса Невервинтер. А с кем имею честь?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Аавилл послал меня на твои поиски.~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Я из команды <CHARNAME>. Аавилл послал нас на твои поиски.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY ~Я не очень-то далеко ушел. Я думал, раз животные не хотят общаться, то уж нимфы-то будут хорошим источником сведений. Они, конечно, легкомысленны, но мне казалось, что разум их достаточно стоек, чтобы сопротивляться безумию Духа.~
  IF ~~ THEN GOTO 13

END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~На самом деле, это меня здорово смущает. Я думал, нимфы будут хорошим источником сведений, поскольку их разум более устойчив, чем у простых лесных зверей. ~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 7 8
  SAY ~Я решил посетить этот дом первым, поскольку я... эээ... знал именно эту нимфу в прошлом. Она, похоже, была очень рада меня видеть, буквально набросилась. Я надеялся получить от нее некоторые сведения без... не... без того, чтобы входить к ней в дом.~
  IF ~~ THEN REPLY ~Почему ты не хотел заходить в ее дом?~ GOTO 9
  IF ~~ THEN REPLY ~Ты ведь уже подозревал неладное, верно?~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.1
  SAY ~Где-то в глубине души часть меня все удивлялась, почему же она ни разу не назвала меня по имени, хотя мы знали друг друга довольно давно. Это казалось... странным. К сожалению, я не мог думать связно. Полагаю, я был просто уверен, что она не сможет сделать ничего такого, с чем я не справлюсь. Когда мы вошли в ее дом, она предложила мне раздеться, и пока я это делал, она наложила на меня заклинание.~
  IF ~~ THEN REPLY ~Полагаю, она знала, как можно тобой управлять.~ GOTO 11
  IF ~~ THEN REPLY ~Думаю, я могу себе представить, как это случилось.~ GOTO 11
  IF ~~ THEN REPLY ~Сидеть взаперти - самое меньшее, чего ты заслуживаешь за такое отвратительное поведение.~ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.2
  SAY ~Она пыталась затащить меня в дом с гораздо большим желанием, чем обычно.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY ~Следующее, что я помню - это то, что я оказался запертым в этой комнате без всякой надежды бежать. Нимфа не причиняла мне вреда, она просто не отпускала меня. Перед тем, как войти в комнату, она накладывала какое-то заклинание, а потом я просыпался и не мог вспомнить, что случилось. ~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY ~Можешь осуждать меня сколько угодно, если твои собственные намерения безупречны.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY ~Теперь, когда я свободен, я должен вернуться в рощу, чтобы обсудить проблему Духа Леса с остальными друидами. Может быть, им известно больше, чем мне.~
  IF ~  Dead("SpiritFo")~ THEN REPLY ~Дух мертв. Боюсь, мне пришлось его убить.~ GOTO 15
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~Мне удалось излечить Духа Леса. Ты можешь больше об этом не беспокоиться.~ GOTO 16
  IF ~~ THEN REPLY ~Я и хочу помочь тебе с этим. Что ты узнал о Духе Леса?~ GOTO 17
  IF ~  OR(2)Global("Druid1Saved","GLOBAL",0)Global("Druid2Saved","GLOBAL",0)~ THEN REPLY ~Другие друиды тоже не вернулись. Полагаю, ты не знаешь, где бы они могли быть?~ GOTO 18
  IF ~~ THEN REPLY ~Ты можешь сейчас сам выбраться отсюда?~ GOTO 19
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~Это ужасные новости. Этот лес будет страдать на протяжении сотен лет. Я очень надеюсь, что тебе удалось перепробовать все возможное прежде, чем прибегать к подобным крайностям.~
  IF ~~ THEN REPLY ~У меня не было другого выбора. Если бы только можно было поступить иначе.~ GOTO 20
  IF ~~ THEN REPLY ~Что ж, возможно, был и другой способ, но этот точно был самый быстрый.~ GOTO 21
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY ~Должно быть, ты из тех героев, о которых слагают легенды. Как тебе удалось совершить такой подвиг? Нет, не говори мне. Наверняка, в будущем тебе еще предстоит многое совершить. Когда ты станешь знаменитостью и все барды будут слагать песни о твоих подвигах, надеюсь, ты вернешься в этот лес и сможешь насладиться его тишиной.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY ~Наверняка было сделано все возможное. Надеюсь только, что лес сможет пережить эту потерю. А мне пора уходить. Я сам доберусь. Встретимся в роще друидов.~
  IF ~~ THEN DO ~SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY ~Такое жестокое отношение к природе - признак черной души. Поверь мне, когда-нибудь твои поступки тебе еще аукнутся. Зло порождает зло и свою собственную гибель. Я могу сказать и больше, но думаю, тебе не интересно слушать мою проповедь. Я оставлю тебя в руках природы. Я сам доберусь. Встретимся в роще друидов.~
  IF ~~ THEN DO ~SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16
  SAY ~Может, мы сможем подружиться и рассказывать друг другу разные истории. А пока этого не произошло, мне нужно уходить. Я сам доберусь. Встретимся в роще друидов.~
  IF ~~ THEN DO ~SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY ~Я не знаю почему, но Дух определенно безумен, и это безумие заражает Лес. Оно подействовало даже на нимф, так что у него неслабая хватка. Я знаю, для того, чтобы добраться до Духа, тебе придется каким-то образом войти в пруд, с помощью которого он входил и выходил из Леса. Перед тем, как наложить заклинание, нимфа упомянула, что Дух не показывался здесь уже довольно давно.~
  IF ~~ THEN REPLY ~Расскажи мне еще об этом пруде.~ GOTO 23
  IF ~~ THEN REPLY ~Почему Дух не приходит?~ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY ~Я не очень-то в курсе, что собирались делать остальные, правда, Орлейн направлялся в юго-восточную сторону. Что же касается Бри, то она так тщеславна - трудно угадать, что придет ей в голову. Хотел бы я помочь тебе еще чем-нибудь. Надеюсь, они разузнали о Духе больше, чем я.~
  IF ~~ THEN REPLY ~Я и хочу помочь тебе с этим. Что ты узнал о Духе Леса?~ GOTO 17
  IF ~~ THEN REPLY ~Ты можешь сейчас сам выбраться отсюда?~ GOTO 19
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY ~Я и сам доберусь. Встретимся в роще друидов. Спасибо тебе еще раз, и большой удачи.~
  IF ~~ THEN DO ~EraseJournalEntry(%Лес Невервинтер: Дух Леса

Дух Леса Невервинтер с недавних пор находится в плачевном состоянии, и архидруид Аавилл, который возглавляет конклав, очень обеспокоен этим. С большой неохотой он позволил нам войти в его лес, в надежде, что мы поможем ему выяснить, что же произошло.%)SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ UNSOLVED_JOURNAL ~Лес Невервинтер: Дух Леса

Дух Леса Невервинтер с недавних пор находится в плачевном состоянии, и архидруид Аавилл, который возглавляет конклав, очень обеспокоен этим. С большой неохотой он позволил нам войти в лес, в надежде, что мы поможем ему выяснить, что же произошло. Другие друиды в глубине леса говорят, что можно увидеть Духа сначала зайдя, а потом выйдя из лесного пруда, и совершив какой-то ритуал. Однако они не имеют ни малейшего представления о том, что это мог бы быть за ритуал.~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY ~Пруд - это что-то вроде входа в иную реальность, где чаще всего обитает Дух. Однако у меня нет ни малейшего представления о том, как он выглядит.~
  IF ~~ THEN REPLY ~Почему ты не вошел в него?~ GOTO 25
  IF ~~ THEN REPLY ~Что это значит - иная реальность?~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY ~Она не сказала почему, она сообщила лишь, что Дух уже давно не выходил из пруда. У нимф не очень-то развито чувство времени.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY ~Ни одно живое существо не может пройти через портал в иное царство. Так говорится в самых старых преданиях моего народа. Предания говорят, что портал связывает реальности живых и мертвых. Дух - создание, некоторым образом, живое лишь наполовину, так что оно может ходить туда и сюда через портал, а мы нет.~
  IF ~~ THEN REPLY ~Есть у тебя какие-нибудь предложения о том, что мне делать?~ GOTO 27
  IF ~~ THEN REPLY ~Ты можешь сейчас сам выбраться отсюда?~ GOTO 19
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY ~Это другой план существования. Пруд работает как портал в это иное место.~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY ~Тебе надо попытаться найти остальных и выяснить, не удалось ли им узнать больше. Кроме того, в Лесу есть еще ведьма по имени Сетара, она тоже может что-то знать. Я как раз собирался поговорить с ней после нимф. Кроме этой, у меня нет никаких мыслей о том, как помочь Духу, но это надо сделать поскорее, пока какой-нибудь сорвиголова из искателей приключений не решил перебить в этом лесу все живое.~
  IF ~~ THEN REPLY ~Ты можешь сейчас сам выбраться отсюда?~ GOTO 19
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2901")Global("Druid3Saved","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY ~Я весь в твоей воле, терпеливый, как деревья. Однако мне бы неплохо в скором времени убраться отсюда.~
  IF ~~ THEN REPLY ~Почему бы тебе не рассказать свою историю?~ GOTO 7
  IF ~~ THEN REPLY ~Ты можешь сейчас сам выбраться отсюда?~ GOTO 19
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  AreaCheck("NW2800")GlobalGT("Druid3Saved","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY ~Спасибо тебе за помощь. Я был бы благодарен, если бы подробности того, что со мной случилось, остались в тайне.~
  IF ~~ THEN EXIT
END
