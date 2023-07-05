// Центр Невервинтера  Эррол Заданий нет. Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.

BEGIN ~ERROL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Почему именно мои дети? Почему чума не унесла вместо них другого, вот хоть тебя?~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Могу уделить пару минут. Может, короткий разговор поможет мне отвлечься.~
  IF ~~ THEN REPLY ~Мне нужна информация о разных местах Невервинтера.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),17,INT)Class(LastTalkedToBy(Myself),THIEF_ALL)Global("Robbed","LOCALS",0)~ THEN REPLY ~Ты купишь лекарство от чумы, если кто-нибудь предложит его продать?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,INT)!Class(LastTalkedToBy(Myself),THIEF_ALL)Global("Robbed","LOCALS",0)~ THEN REPLY ~Ты купишь лекарство от чумы, если кто-нибудь предложит его продать?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Спасибо, что помогли мне немного развеяться. Надеюсь, ваш род ждет более счастливая участь...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Невервинтер... Когда-то он был прекрасным городом. А теперь его улицы забиты грудами горящих тел. У меня теперь нет даже семьи.~
  IF ~~ THEN REPLY ~Что в этом городе за районы?~ GOTO 8
  IF ~~ THEN REPLY ~Где я могу достать снаряжение?~ GOTO 9
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Мне бы очень не хотелось подхватить это. Воющая смерть унесла всю мою семью, одного за другим. Я видел, как все они умерли - они все иссохли изнутри.~
  IF ~~ THEN REPLY ~Вы имеете в виду физически или духовно?~ GOTO 10
  IF ~~ THEN REPLY ~Что слышно об экспериментах с исцелением?~ GOTO 11
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Как будто мне есть дело до чего-нибудь! Я боюсь идти домой и смотреть на эти трупы. Я боюсь и того, что сам могу подхватить эту болезнь. Если хотите выискать какие-то подробности, я мешать не стану. Я останусь здесь: на улице и подальше от проблем.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Что... лекарство? Ходили слухи, что его пытаются приготовить, но никто не верил, что нам, простым людям, его скоро дадут. П-почему ты спрашиваешь, заплачу ли я?~
  IF ~~ THEN REPLY ~У меня есть лекарство! Отдавай все свое золото и можешь его получить!~ GOTO 38
  IF ~~ THEN REPLY ~Чтобы узнать, есть ли у тебя золото! Отдавай его, живо!~ GOTO 12
  IF ~~ THEN REPLY ~Неважно. У меня есть еще несколько вопросов.~ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~Даже и не пробуй надуть меня. Меня уже обобрали до нитки. Спрашивай, что надо, и проваливай!~
  IF ~~ THEN REPLY ~Мне нужна информация о разных местах Невервинтера.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~Сердце города похоже на глаз, а мы с вами прямо в его зрачке. Вокруг находятся другие районы... А через все это течет река, полная слез. Вам рассказать о Гнезде Нищих? О портовом районе? Черном озере? Полуострове? Сердце города? Выбирайте, у меня вся жизнь впереди. Недолгая, правда.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Зависит от того, что вы ищете. Думаю, у меня получится угадать, что же вам нужно.~
  IF ~  Class(Player1,THIEF)~ THEN GOTO 18
  IF ~  OR(2)Class(Player1,DRUID)Class(Player1,RANGER)~ THEN GOTO 19
  IF ~  OR(3)Class(Player1,CLERIC)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN GOTO 20
  IF ~  OR(2)Class(Player1,MAGE)Class(Player1,SORCERER)~ THEN GOTO 21
  IF ~  Class(Player1,FIGHTER)~ THEN GOTO 22
  IF ~  !Class(Player1,THIEF)
!Class(Player1,DRUID)
!Class(Player1,RANGER)
!Class(Player1,CLERIC)!Class(Player1,PALADIN)!Class(Player1,MONK)!Class(Player1,MAGE)!Class(Player1,FIGHTER)!Class(Player1,SORCERER)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY ~А какая разница? Сначала слепнут глаза, а потом все тело парализует... Так начинается Воющая Смерть... Может, эти хельмиты правы. Может, это болезнь души. Может, боги гневаются на нас... Интересно, как мне удалось выжить?~
  IF ~~ THEN REPLY ~Что слышно об экспериментах с исцелением?~ GOTO 11
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY ~Хе, нам, "простакам", вы этого можете не говорить. Думают, мы запаникуем, если не останется надежды, или устроим набег, если найдется лекарство. Я ничего не слышал и, возможно, не услышу. Не знаю, благословление это или проклятие, но пока я жив...~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Ч-что? Ты... ты меня ограбишь прямо на улице, у всех на глазах? Ты не в своем уме? А как же стражники? Городская милиция?~
  IF ~~ THEN REPLY ~Я стражник, а ты - никто. Отдавай золото или умри как собака!~ GOTO 24
  IF ~~ THEN REPLY ~Ах, я просто шучу. Приношу свои извинения.~ DO ~SetGlobal("Robbed","LOCALS",1)~ GOTO 25
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY ~Мы сейчас здесь. Здесь предоставляют все необходимые услуги. Много людей живет здесь... Но их с каждым днем все меньше... Замок Невер находится на западе, там делает дела вся наша "просвещенная элита". Сам я покупаю все необходимое за внешней границей. Конечно, из-за Воющей Смерти теперь мало что удастся раздобыть...~
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY ~Гнездо Нищих? Не слушайте тех, кто говорит о нем плохо. Там живут и умирают хорошие и честные люди, не то, что в портовом районе или на Черном озере.~
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 14.1
  SAY ~По мне так это не совпадение, что чума началась в Гнезде Нищих! Богачам нужен был повод, чтобы уничтожить его. А теперь еще эти зомби или как их там... Хоть бы среди них не было моих родственников, я не хочу, чтобы они стали такими.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 14.2
  SAY ~Да, и дела идут лучше. Чума все свирепствует, но кто-то уничтожил всех зомби или что там было источником этих проблем. Надеюсь, среди этих зомби не было членов моей семьи. А если и были, я был бы благодарен любому, кто наконец-то позволил им обрести покой...~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY ~Я раньше подрабатывал всякими делишками в районе порта, но теперь - нет. Я не хочу работать на пиратов.~
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY ~Последнее, что я слышал, что в этом месте полно воров. Этим людям зачем-то очень нужны деньги. Держитесь подальше от доков. Потеряв семью, не стоит терять еще и кошелек. И стражники ничем не помогут, если что.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY ~Говорят, что положение улучшается. Была какая-то драка, или что-то в этом роде, но теперь все закончилось. И хулиганов стало меньше. Может, вы слышали об этом, а может, и сами участвовали? Не знаю, но теперь в этом районе поспокойнее... Вот разве что эта Воющая чума.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 8.4
  SAY ~Фу! Сборище чванливых богатеев. Воющая Смерть заставила их всех сбиться в кучу - она убивает их так же, как простых людей, а их это жутко бесит.~
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 16.1
  SAY ~Определенно, они пытались захватить запасы, предназначенные для нас, простого народа. Мой бедный брат пожил бы еще, если бы у нас было хоть немного еды...~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Что вы знаете об этом?~ GOTO 32
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Что вы знаете об этом?~ GOTO 33
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 31 // from: 16.2
  SAY ~Говорили даже, что они пытались спрятать провизию и часть лекарства! Но кто-то им помешал. Может, это были вы? Что ж, я рад, что они получили свое. Они это заслужили, да и здесь стало поспокойнее.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY ~Меня это не касается, так что я в безопасности. Я мало что знаю. Понимаете, аристократы с Черного озера и еще кто-то, я не знаю, кто, запасают провиант. Этим они нажили себе много врагов. Я слышал, что из-за них были какие-то беспорядки. Не знаю, чем там все закончилось. Не мое это дело. Я остался последний из семьи, у меня есть, чем забить голову.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY ~Не мне об этом рассказывать. Меня это не касается, и я мало что знаю. Из моей семьи остался только я, и у меня полно других забот.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Расскажите мне о полуострове.~ GOTO 35
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 8.5
  SAY ~Вы и впрямь не знаете города, если спрашиваете. Никто не ходит на полуостров. Там находится тюрьма. В тюрьме обычно очень строгие порядки, но я даже не представляю, что с ней теперь сделала чума. Мне сказали - но я не скажу, кто - что нескольких узников и стражников убили. Интересно, что же там происходит...~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 35 // from: 8.5
  SAY ~Вы и впрямь не знаете города, если спрашиваете. Никто не ходит на полуостров. Теперь все немного успокоилось. Я слышал, что были жертвы, и даже тамошний начальник погиб. Это не мое дело, но я рад, что ситуацию удалось взять под контроль. И вам довелось поучаствовать в этом? Ну что ж, вы молодец!~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 15
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 16
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 9.1
  SAY ~Вы небось занимаетесь чем-то незаконным? Не бойтесь, я нем, как рыба! Но могу рассказать вам кое-что интересное... Рядом с главным выходом из города - это в Сердце города, на юго востоке, есть местечко - Маска Лунного Камня. Там много чего интересного. А если вам нужен простофиля, который будет подставлять за вас горло - идите прямиком на Ярмарку Мечей, это лагерь наемников на юго-востоке.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 9.2
  SAY ~Вы один из этих любителей природы, лесных бродяг, да? Возможно, вам следует наведаться к Древу Друидов, это на юго-западе района, рядом с воротами. А если вам нужен простофиля, который будет подставлять за вас горло - идите прямиком на Ярмарку Мечей, это лагерь наемников на юго-востоке.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY ~Вы ищете храм или вроде того? Тогда вам надо в храм Тира, это в западной части Сердца города, на север от главной площади. А если вам нужен простофиля, который будет подставлять за вас горло - идите прямиком на Ярмарку Мечей, это лагерь наемников на юго-востоке.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY ~Вы, случаем, не заклинатель? Башня Плаща - это самое место для вас, она на востоке района.. А если вам нужен простофиля, который будет подставлять за вас горло - идите прямиком на Ярмарку Мечей, это лагерь наемников на юго-востоке.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 9.5
  SAY ~Вы ищете хорошую сталь, или вроде того? Это все в "Сияющем Оружии и Броне для Рыцарей", в Сердце города, чуть южнее главной площади. А если вам нужен простофиля, который будет подставлять за вас горло - идите прямиком на Ярмарку Мечей, это лагерь наемников на юго-востоке.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 23 // from: 9.6
  SAY ~Вы, должно быть, обладаете многими талантами. Воин обязательно должен зайти в "Сияющее Оружие и Броня для Рыцарей", магам рекомендуется заглянуть в Башню Плаща, для священников у нас есть храм Тира, тем, кто интересуется природой, следует наведаться к Древу Друидов. Ну а воров радушно встречают в Маске Лунного Камня. А если вам нужен простофиля, который будет подставлять за вас горло - идите прямиком на Ярмарку Мечей, это лагерь наемников на юго-востоке.~
  IF ~~ THEN REPLY ~Есть еще другой вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~Но... нет, пожалуйста! Я... я просто хочу пережить это время, выжить! Вот... забирай! Забирай все, что у меня есть! Забирай и... и сгинь с глаз моих... уходи...~
  IF ~~ THEN DO ~GiveGoldForce(52)ReputationInc(-1)SetGlobal("Robbed","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~Я... я не понимаю, о чем ты говоришь. Задавай свои вопросы и оставь меня в покое.~
  IF ~~ THEN REPLY ~Мне нужна информация о разных местах Невервинтера.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 38 // from: 6.1
  SAY ~Лекарство от Воющей Смерти? У тебя и правда есть лекарство?! Боги! Мне... мне оно необходимо! Пожалуйста... пожалуйста, я отдам все свое золото... Это все, что у меня есть... и... ты улыбаешься... Почему ты... У тебя нет никакого лекарства... Это обман...~
  IF ~~ THEN REPLY ~ХА-ХА-ХА! Что за идиот!~ GOTO 34
  IF ~~ THEN REPLY ~Не расстраивайся. Бизнес есть бизнес.~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 38.1
  SAY ~Ах, ты злобный кусок помета... у тебя теперь все, что у меня еще оставалось. Сгинь с глаз моих... убирайся!!!~
  IF ~~ THEN DO ~GiveGoldForce(52)ReputationInc(-1)SetGlobal("Robbed","LOCALS",2)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",2)~ THEN BEGIN 36 // from:
  SAY ~Сгинь с глаз моих, злобная тварь. Сгинь и не возвращайся!~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 37 // from:
  SAY ~Что вам нужно? У меня и своих забот, знаете ли, хватает...~
  IF ~~ THEN EXIT
END


