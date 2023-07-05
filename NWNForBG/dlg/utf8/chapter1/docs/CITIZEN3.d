// Доки дом Житель порта   Этот эльф, житель Невервинтера, держится с достоинством, хотя в его глазах тоже можно прочитать страх перед чумой, как и у всех остальных.
// дать в инвентарь 17 золотых

BEGIN ~CITIZEN3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Кто вы? Бандиты? Городская Стража? Не имеет значения. Чума угрожает всем нам одинаково. Вам незачем тут оставаться, дружище.~
  IF ~~ THEN REPLY ~Я работаю в качестве стражника. Мне нужна информация.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Не указывайте мне, куда идти. Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~У вас есть вопросы? Вот как, у меня тоже они есть. Какая польза от стражи, если все вокруг умирают от чумы? Можете вы мне сказать? Моя мать умерла... она сгнила изнутри у меня на глазах. Под конец мор свел ее с ума...~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~У меня нет времени для вопросов. Какой смысл в моих ответах, я все равно умру через неделю. Как и все остальные.~
  IF ~~ THEN REPLY ~Я работаю в качестве стражника. Мне нужна информация.~ GOTO 1
  IF ~~ THEN REPLY ~Не указывайте мне, куда идти. Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Честно говоря, мне все равно. Идите себе в зараженные чумой дома, если хотите. Я надеюсь, вы сгниете, как и заслуживаете.~
  IF ~~ THEN REPLY ~Я работаю в качестве стражника. Мне нужна информация.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Это к лучшему. Мне есть, кого оплакать, и я не хочу, чтобы люди падали мертвыми, пока я делаю это.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY ~Так что, как вы видите, мне не особенно нужен стражник. Если у вас есть вопросы, задавайте их. Полагаю, вы должны составить рапорт, или что-то вроде этого.~
  IF ~~ THEN REPLY ~Мне нужна информация о портовом районе.~ GOTO 6
  IF ~~ THEN REPLY ~Насколько тут сильна чума?~ GOTO 7
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~Что вы хотите узнать? Не можете, что ли, сами по закоулкам пошариться?~
  IF ~~ THEN REPLY ~Есть интересные места в этом районе?~ GOTO 10
  IF ~~ THEN REPLY ~Каких важных людей вы знаете в этом районе?~ GOTO 11
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~Что значит, насколько сильна? Вы уже знаете, что она сделала со мной и с моим домом. Что вам еще нужно? Может, пойдем, посчитаем трупы?~
  IF ~~ THEN REPLY ~Что слышно об экспериментах с исцелением?~ GOTO 15
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY ~Может быть... слушайте, я совсем не хочу болтать лишнее. Мне правда не следует... и какое это имеет значение... все равно мы все умрем.~
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 13
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY ~Ну, если чума интересует, за ней далече ходить не надо, она везде. Правда, я не понимаю, что именно вы ищете. Таверну? Лавку?~
  IF ~~ THEN REPLY ~Таверна или трактир.~ GOTO 17
  IF ~~ THEN REPLY ~Места, где можно достать припасы.~ GOTO 18
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY ~Важные люди? Откуда мне знать? Я просто торчу тут и жду смерти. И я очень далеко от того, кого "Кровавые моряки" называют боссом на этой неделе.~
  IF ~~ THEN REPLY ~Кто такие "Кровавые моряки"?~ GOTO 19
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY ~Если у вас есть вопросы, задавайте их. Полагаю, вы должны составить рапорт, или что-то вроде этого.~
  IF ~~ THEN REPLY ~Мне нужна информация о портовом районе.~ GOTO 6
  IF ~~ THEN REPLY ~Насколько тут сильна чума?~ GOTO 7
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY ~Кажется, были какие-то беспорядки в таверне Сиди, но теперь все успокоилось. Ничего особенного не происходит, кроме того, конечно, что чума постепенно всех нас убивает.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY ~Думаю, я вполне могу сказать, хотя и знаю не так уж много. Говорят, идут какие-то стычки с "Кровавыми моряками". Говорят, что в таверне Сиди сейчас что-то вроде аукциона. Сам Венгаул "Кровавый парус" устроил какой-то цирк, типа того.~
  IF ~~ THEN REPLY ~Пираты не любят лишнего внимания.~ GOTO 20
  IF ~~ THEN REPLY ~Венгаул устраивает цирк?~ GOTO 21
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~Хельмиты утверждают, что их благословения лечат. Вот дерьмо. Все, кого я знаю, умерли, или умирают.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~Загляните к Джиму Сиди, в его таверну. Это в северной части района. Удачи вам при разговоре с вышибалой. Не знаю, почему они остаются открытыми, несмотря на мор... что ж... Я слухам не верю.~
  IF ~~ THEN REPLY ~Где можно достать припасы?~ GOTO 18
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~Думаю, вам стоит зайти в "Двадцатку-в-Колчане", в центре района. Там всегда много товара.~
  IF ~~ THEN REPLY ~Есть тут таверна или трактир?~ GOTO 17
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~Кто они такие? Ух ты, вы, наверное, здесь недавно. "Кровавые моряки" правят портовым районом. Без их разрешения ни один корабль не уйдет далеко.~
  IF ~~ THEN REPLY ~Так это пираты?~ GOTO 22
  IF ~~ THEN REPLY ~А кто у них главный?~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY ~Я знаю. Говорят, что... никогда не знаешь, что с тобой могут сделать рассерженные пираты. Но мне удалось подслушать, как человек по имени Каллик в таверне Золотое Яблоко... ну... Думаю, больше мне ничего не стоит говорить об этом. Может я и умру от чумы, но я не хочу, чтобы мне до этого оторвали ноги.~
  IF ~~ THEN REPLY ~Венгаул устраивает цирк?~ GOTO 21
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY ~Он любит шумиху. Мне кажется, это аукцион, или вроде того. Из-за этого ужасная кутерьма. Куча людей хочет получить деньги. Некоторые говорят, это имеет какое-то отношение к мору, но сейчас кажется, что все имеет отношение к мору. Люди напуганы.~
  IF ~~ THEN REPLY ~Пираты не любят лишнего внимания.~ GOTO 20
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY ~Надо думать. Они не делают из этого секрета. Их главный по этому поводу не стесняется. Если он у них до сих пор главный.~
  IF ~~ THEN REPLY ~А кто у них главный?~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY ~Их собрат, Венгаул "Кровавый парус". Это благодаря ему они вообще действуют. Мне кажется, он знавал самого лорда Нашера, вон как! Он не дает им превратиться в обычную банду головорезов. Думаю, предпочитает считать себя отважным ловчилой. Хотя и малость староват для этого.~
  IF ~~ THEN REPLY ~Где прячется этот Венгаул?~ GOTO 24
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY ~Я не знаю. Может быть... нет, я слухам не верю...~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 25 // from:
  SAY ~Не знаю, зачем вы здесь. Что сказано, то сказано. А теперь я просто жду, пока чума заберет то немногое, что у меня еще осталось в этом мире.~
  IF ~~ THEN REPLY ~Мне нужна информация о портовом районе.~ GOTO 6
  IF ~~ THEN REPLY ~Насколько тут сильна чума?~ GOTO 7
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

