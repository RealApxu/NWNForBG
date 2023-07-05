// Центр Невервинтера  Дом   Простолюдин человек   Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.

BEGIN ~MALECOM4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Кто вы? Зачем забрались ко мне в дом? Я подумать не могу, что мои соотечественники, жители Невервинтера, решили стать бандитами!~
  IF ~~ THEN REPLY ~Я городской стражник на службе у Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Хмм. Чужеземцев наняли, чтобы заменить умерших. Думается, они решили, что я должен доверять вам? Я отвечу на пару вопросов, но потом уходите.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Почему я должен отвечать? Вы вломились в мой дом и не объяснили, почему. Убирайтесь!~
  IF ~~ THEN REPLY ~Я городской стражник на службе у Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ну, похоже, я не могу помешать вам исполнить задуманное. Вы что, намерены ограбить мой дом?~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В общем-то, я тут по поводу золота.~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В общем-то, я тут по поводу золота.~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В общем-то, я тут по поводу золота.~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хорошо. Незнакомцы в доме мне не нужны.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Что вы хотите знать? Лучше бы вам поспрашивать своих коллег-стражников. Я простой горожанин.~
  IF ~~ THEN REPLY ~Что в этом городе за районы?~ GOTO 11
  IF ~~ THEN REPLY ~Что вы знаете о правителях Невервинтера?~ GOTO 12
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Не так много. Есть немногое, что мне нужно знать - кроме того, что, она убивает моих друзей и членов семьи.~
  IF ~~ THEN REPLY ~Что слышно об исцелении?~ GOTO 14
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Извините, я почти не выбираюсь из центра города. Особенно сейчас, когда свирепствует эпидемия. Опасно, знаете ли.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~Прощайте. Пожалуйста, покиньте мой дом так же, как пришли.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~О нет, с меня хватит уже пожертвований. Если у вас есть еще вопросы, быстро спрашивайте и проваливайте отсюда.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3 3.4
  SAY ~Я... понимаю. И какое отношение это имеет ко мне?~
  IF ~  RandomNum(2,1)~ THEN REPLY ~Я собираю пожертвования в фонд жертв чумы. Вы исполните свой гражданский долг?~ GOTO 15
  IF ~  RandomNum(2,2)~ THEN REPLY ~Я собираю пожертвования в фонд жертв чумы. Вы исполните свой гражданский долг?~ GOTO 16
  IF ~~ THEN REPLY ~Отдавай золото и я оставлю тебя в живых!~ GOTO 17
  IF ~~ THEN REPLY ~На самом деле, мне нужны только ответы на некоторые вопросы.~ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Я немного могу сказать. Я живу и работаю в Сердце города. В районе Черного озера у меня дел нет, да и в других районах делать мне нечего. Меня не интересует ни Гнездо Нищих, ни доки, ни полуостров. Они и до эпидемии были неприятными районами.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY ~Я не особенно интересуюсь политикой. Я служу лорду Нашеру, нашему правителю, и леди Арибет из Невервинтерской Девятки.~
  IF ~~ THEN REPLY ~Как Лорд Нашер справляется с чумой?~ GOTO 36
  IF ~~ THEN REPLY ~А что делала леди Арибет когда пришла чума?~ GOTO 37
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY ~Хорошо, я поговорю с вами. Надеюсь, это не займет много времени?~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY ~Лорд Нашер уверяет нас, будто принимаются все меры к поиску метода излечения от чумы. А кроме этого... Я ничего не слышал.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 10.1
  SAY ~С учетом того, как быстро распространяется чума, нам всем понадобятся деньги, раньше или позже. Так что я с тем же успехом могу их приберечь для себя. Я ведь могу подхватить чуму так же, как любой другой.~
  IF ~~ THEN REPLY ~Отдавай золото и я оставлю тебя в живых!~ GOTO 17
  IF ~~ THEN REPLY ~На самом деле, мне нужны только ответы на некоторые вопросы.~ GOTO 18
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY ~Ну, много я дать не могу, но если я что-то дам, может и другие тоже помогут. Кто знает, может, я тоже заболею и тогда получу все обратно. Ну, ладно, можете дать мне бумагу с печатью в подтверждение того, что было сделано пожертвование? Я от сборщика податей иначе не...~
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 17 // from: 10.3
  SAY ~Ч-что? Вы... вы что, шутите? Да у меня нет при себе ничего, чтобы откупиться! Я... я же никто!~
  IF ~~ THEN REPLY ~Значит, никто по тебе скучать не будет! Кошелек или жизнь!~ GOTO 24
  IF ~~ THEN REPLY ~Прошу прощения. Мне не хотелось  тебя пугать.~ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 10.4
  SAY ~Ну, вы определитесь, ладно? Это ведь ВЫ чего-то хотите от МЕНЯ.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~Здесь вы сейчас находитесь. Это деловой центр города. Могли бы и сами догадаться, просто погуляв здесь немного.~
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY ~Это трущобы. Гнездо и до Воющей Смерти было очень бедным районом. Боюсь и подумать, во что он превратился сейчас.~
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY ~Я и близко туда не подхожу, особенно после того, как услышал, что в этом квартале полным-полно воров. Я имею в виду - там небезопасно.~
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY ~Квартал эгоистичных, жадных богатеев! Я слышал, один из них даже утаивает большие запасы еды! Представьте себе, он хранит их для себя, вместо того, чтобы отдать нуждающимся!~
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 11.5
  SAY ~А зачем мне что-то знать об этом полуострове? Там рано или поздно оказываются лишь отпетые негодяи.~
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN GOTO 32
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~Не трогайте меня! Неужели чумы было мало? Неужели нужно еще и отобрать у меня даже те мелочи, которые у меня остались? Вот, забирайте и уходите... Это все деньги, которые у меня есть... Убирайтесь...~
  IF ~~ THEN DO ~GiveGoldForce(163)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~Я... я не понимаю к чему вы клоните, но мне это не нравится. Задавайте свои вопросы и убирайтесь.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 26 // from: 20.1
  SAY ~Я ничего не могу сказать вам об этом месте. Мне повезло, что удалось скопить немного денег там-сям.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY ~Я слышал даже, что у них там было форменное нашествие зомби. Но, похоже, все уже успокоилось. Эй, кстати, говорят, им помог кто-то вроде вас. Сомнительно, однако.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~Я мало об этом знаю. Я стараюсь избегать плохих районов города. Говорили что-то про пиратов, но точно не помню.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY ~Кажется, стражники говорили, что там уже все успокоилось... Вашей заслуги в этом, случайно, нет, а? Хотя вряд ли стражник такого класса стал бы вламываться в мой дом, как вы.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY ~Район Черного озера - самая богатая часть города. Мне там особо нечего делать. Не могу позволить себе выглядеть так, как будто я там живу.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 22.2
  SAY ~Кажется, кто-то с ним разобрался, но я не знаю подробностей. Хммм... Кстати, по-моему, они говорили, что там крутился кто-то вроде вас. Впрочем, я не уверен.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY ~Я слышал, он еще хуже района порта. Хотя я никогда там не был.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 23.2
  SAY ~О, я слышал, тут какие-то неприятности. Что-то вроде бы овладело главным надзирателем. Все это мне очень не нравится. Впрочем, это не мое дело. Вас-то, наверное, это больше интересует. Кстати, вы походите на того, кому, как я слышал, удалось разобраться с проблемой. Ну, наверное, это случайно.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 36 // from: 12.1
  SAY ~Лорд Нашер поклялся, что сделает все необходимое для исцеления чумы. Он изо всех сил старается помочь, как и положено любому правителю во время беды. Вообще-то, должен сказать, что о его намерениях мы услышали от советников. Сам лорд Нашер был надежно заперт, чтобы не заразиться чумой.~
  IF ~~ THEN REPLY ~А что делала леди Арибет когда пришла чума?~ GOTO 37
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 12.2
  SAY ~Я не знаю точно, но она была, что называется в первых рядах, работала с людьми, все организовывала... Все, кого мы видим - это хельмиты, раздающие свои благословления. Не знаю, кому они служат. Может, кому-то началом Арибет?~
  IF ~~ THEN REPLY ~Как Лорд Нашер справляется с чумой?~ GOTO 36
  IF ~~ THEN REPLY ~А что делала леди Арибет когда пришла чума?~ GOTO 37
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY ~Постой... у вас же нет ленты... ленты уполномоченного сборщика пожертвований........ Ах ты тварь... Меня надули, не так ли... Убирайся... Прочь из моего дома! Вон!!!~
  IF ~~ THEN DO ~GiveGoldForce(100)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 34 // from:
  SAY ~Снова вы? Может, я чего-то не понимаю: у вас что, есть основания так тут и остаться?~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В общем-то, я тут по поводу золота.~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В общем-то, я тут по поводу золота.~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В общем-то, я тут по поводу золота.~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY ~Вы просто позор для нашего славного города. Уйдите с глаз моих.~
  IF ~~ THEN EXIT
END

