// Доки дом Житель порта   Полуорк Эта женщина-полуорк одета просто. Ее поведение показывает, что она подавлена всеми смертями последнего времени, что вполне естественно..
// дать в инвентарь 17 золотых

BEGIN ~CITIZEN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Зачем вы здесь? Если вы не собираетесь оплакать погибших вместе со мной, вряд ли вам еще что-то может понадобиться в моем доме.~
  IF ~~ THEN REPLY ~Я работаю в качестве стражника. Мне нужна информация.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Не указывайте мне, куда идти. Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Вы стражник? Хотите произвести на меня впечатление? Что вы можете сделать? Вы не можете посадить чуму под замок. Вы не можете объяснить, почему это происходит. Моя сестра и ее ребенок... мертвы. В моих силах было лишь ухаживать за ними, оставалось только надеяться, что я не подхвачу заразу. Теперь мне жаль, что этого не произошло. Не думаю, что мне так уж нужен стражник.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~А зачем это мне отвечать на ваши вопросы? Повсюду умирают люди, а я буду развлекать взломщиков у себя дома?~
  IF ~~ THEN REPLY ~Я работаю в качестве стражника. Мне нужна информация.~ GOTO 1
  IF ~~ THEN REPLY ~Не указывайте мне, куда идти. Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я не могу остановить вас... но просто не понимаю, почему вы приходите и угрожаете мне, когда все мы все равно так скоро умрем.~
  IF ~~ THEN REPLY ~Если не возражаешь, тебя не слишком затруднит отдать мне все твое золото?!~ GOTO 9
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хорошо. Чем меньше людей будет вокруг меня, тем меньше я буду плакать по ним, когда они умрут.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY ~Если у вас есть вопросы, задайте их. А потом идите, арестуйте карманного воришку, или что-нибудь вроде этого.~
  IF ~~ THEN REPLY ~Мне нужна информация о портовом районе.~ GOTO 6
  IF ~~ THEN REPLY ~Насколько тут сильна чума?~ GOTO 7
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~Информация о порте, хмм? Что вы хотите знать? Где лучше всего лечь и умереть?~
  IF ~~ THEN REPLY ~Есть интересные места в этом районе?~ GOTO 10
  IF ~~ THEN REPLY ~Каких важных людей вы знаете в этом районе?~ GOTO 11
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~Мертвецы повсюду. Их так много, что начинаешь забывать имена. Так многих... Так многих унесла чума...~
  IF ~~ THEN REPLY ~Что слышно об экспериментах с исцелением?~ GOTO 27
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY ~Какое это имеет значение? Я имею в виду, вы спрашиваете об этих вещах, как будто они что-то значат, а я просто не могу...~
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 13
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~Ты шутишь... да? Пожалуйста, у меня почти ничего не осталось. Чем я буду кормиться? Как я выживу?~
  IF ~~ THEN REPLY ~Отдай мне все свое золото, а не то я убью тебя. Я служу в страже, мне все сойдет с рук.~ GOTO 15
  IF ~~ THEN REPLY ~Вы, разумеется, правы. Приношу извинения.~ GOTO 16
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY ~Я могу назвать несколько мест, где на моих глазах умерли десятки людей. Или вы ищете что-то другое?~
  IF ~~ THEN REPLY ~Таверна или трактир.~ GOTO 17
  IF ~~ THEN REPLY ~Места, где можно достать припасы.~ GOTO 18
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY ~Важные люди - это те, кто до сих пор жив. А что до всего остального, мне совершенно начхать, кого "Кровавые моряки" на этой неделе называют боссом.~
  IF ~~ THEN REPLY ~Кто такие "Кровавые моряки"?~ GOTO 19
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY ~Если у вас есть вопросы, задайте их. А потом идите, арестуйте карманного воришку, или что-нибудь вроде этого.~
  IF ~~ THEN REPLY ~Мне нужна информация о портовом районе.~ GOTO 6
  IF ~~ THEN REPLY ~Насколько тут сильна чума?~ GOTO 7
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY ~Говорят, что-то творилось в таверне Джима Сиди, но сейчас все уже закончилось. Теперь в порту ничего особенного не происходит. Ну, кроме чумы, разумеется.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY ~Мне очень жаль. Может, кое в чем из того, что мне рассказывали, и была правда... Я не знаю. Что-то о распрях среди "Кровавых моряков". Венгаул "Кровавый парус" устроил какой-то цирк, а назвать его слабаком нельзя. Даже мне приходилось слышать об этом.~
  IF ~~ THEN REPLY ~Пираты не любят лишнего внимания.~ GOTO 20
  IF ~~ THEN REPLY ~Венгаул устраивает цирк?~ GOTO 21
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY ~Нет! Пожалуйста... Я тебе отдам все, что у меня есть... пожалуйста, уходи... оставь меня... ни с чем... (всхлипывает!)~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)GivePartyGold(17)ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY ~Ладно. Я не совсем понимаю, чего тебе здесь нужно, но если тебе есть что сказать, говори. А потом проваливай!~
  IF ~~ THEN REPLY ~Ответь на несколько вопросов.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~Если вы из тех, кого туда пускают, таверна Джима Сиди в северной части района. Там всегда полно людей, которых я знать не желаю. Большинство заведений закрыты, вот разве что таверна Сиди... ладно, я сплетни не пересказываю.~
  IF ~~ THEN REPLY ~Где можно достать припасы?~ GOTO 18
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~Двадцатка-в-колчане. Думаю, они еще открыты. Хотя мне не особенно нужно то, что они продают. Теперь уже нет.~
  IF ~~ THEN REPLY ~Есть тут таверна или трактир?~ GOTO 17
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~Хорошенькие у нас стражники, не знают даже главной банды преступников, которая правит этим районом. "Кровавые моряки" правят портовым районом. Все корабли через них проходят.~
  IF ~~ THEN REPLY ~Так это пираты?~ GOTO 22
  IF ~~ THEN REPLY ~А кто у них главный?~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY ~Там был человек... Его звали Каллик. Он был в "Золотом яблоке", и он был вне себя от этого. Он говорил, что он... ну... Он говорил о насилии, Как будто вокруг недостаточно смерти. Я о нем больше ничего не скажу. Я и так скоро умру.~
  IF ~~ THEN REPLY ~Венгаул устраивает цирк?~ GOTO 21
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY ~В Таверне Сиди. Может, аукцион? Он раздул большую шумиху. Можно подумать, что он хочет, чтобы стражники услышали об этом. Там много людей дерутся из-за золота, так что, что бы там ни происходило, дело большое. Может, это связано и с мором, я не знаю.~
  IF ~~ THEN REPLY ~Пираты не любят лишнего внимания.~ GOTO 20
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY ~Не такие уж они головорезы, какими могли бы быть, надо полагать. Мне кажется, это не в стиле их главаря. Если только у преступников вообще может быть стиль.~
  IF ~~ THEN REPLY ~А кто у них главный?~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY ~Гильдия "Кровавых моряков" была сформирована Венгаулом "Кровавым парусом". Говорят, он знаком с самим лордом Нашером. Я не верю ни единому слову. Он держит своих мерзавцев на коротком поводке. Мне не приходилось видеть, чтобы "Кровавые моряки" хулиганили. Во всяком случае, не при параде.~
  IF ~~ THEN REPLY ~Где прячется этот Венгаул?~ GOTO 24
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY ~Не могу вам сказать. Я только знаю, какие ходят слухи, а остальное меня не волнует, если честно.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 25 // from:
  SAY ~Зачем вы вернулись? Что я могу вам сказать? Я просто жду смерти от чумы.~
  IF ~~ THEN REPLY ~Мне нужна информация о портовом районе.~ GOTO 6
  IF ~~ THEN REPLY ~Насколько тут сильна чума?~ GOTO 7
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 26 // from:
  SAY ~Пожалуйста, оставьте меня. Все равно мы все умрем. Не надо причинять мне боль.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 7.1
  SAY ~Я знаю, что никто ничего не делает. Стражники... Нашер... они просто ждут, когда мы умрем. Только хельмиты пытаются... хотя все это бесполезно...~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

