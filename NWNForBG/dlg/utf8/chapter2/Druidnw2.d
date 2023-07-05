// Лес Невервинтер, дом Сетары - Бри, пропавший друид. в плену у Сетары человек женщина 

BEGIN ~DRUIDNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2904")Global("Druid2Saved","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Оставь мое лицо в покое, ты, ужасная... ох, ты ведь не она, не эта страшная карга.~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Нет, точно нет. Я <CHARNAME>. А кто ты такая?~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Нет, точно нет. А кто ты такая?~ GOTO 1
  IF ~~ THEN REPLY ~Ты заметила? Вообще-то советую тебе бежать, пока ведьма не вернулась.~ GOTO 2
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Меня зовут Бри. Помимо того, что я самая красивая друидка в лесу Невервинтер, я также являюсь исследовательницей проблемы с Лесным Духом.~
  IF ~~ THEN REPLY ~Почему бы тебе не рассказать мне, что случилось?~ GOTO 4
  IF ~~ THEN REPLY ~Что ты делаешь здесь, в доме ведьмы?~ GOTO 4
  IF ~~ THEN REPLY ~Что ты узнала о Духе?~ GOTO 5
  IF ~~ THEN REPLY ~Другие друиды тоже исчезли. Ты не знаешь, где они?~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Погоди-ка, перед тем, как уходить, спрошу - это не Аавилл тебя послал?~
  IF ~~ THEN REPLY ~Он отправил меня спасать каких-то друидов. Ты случайно не из них?~ GOTO 7
  IF ~~ THEN REPLY ~Мне тут встретился некий Аавилл. Откуда ты его знаешь?~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~О, пожалуйста, только недолго. Я должна поскорей выбираться отсюда.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2
  SAY ~Я бродила по лесу, избегая встреч с его исконными обитателями. Не было смысла даже пытаться говорить с животными; они казались бешеными, настолько их захватили страх и гнев. Затем я подумала о ведьме.~
  IF ~~ THEN REPLY ~Зачем ты искала ведьму?~ GOTO 9
  IF ~~ THEN REPLY ~Это, несомненно, было бесподобное решение.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Он сошел с ума! Весь лес охвачен его безумием, и если кто-то в ближайшее время не остановит это, боюсь, зверушки начнут рвать друг друга на части. Дух обычно миролюбив и приходит в Лес через свой пруд, чтобы навестить обитателей. С тех пор, как животные стали одержимы насилием, Дух ни разу не приходил сюда. Если бы он пришел, я попыталась бы поговорить с ним.~
  IF ~~ THEN REPLY ~Расскажи мне еще об этом пруде.~ GOTO 11
  IF ~~ THEN REPLY ~И как ты думаешь, Дух бы тебе очень обрадовался?~ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Я не знаю, куда пошел этот низенький, Орлейн его зовут, но знаю, что наш хорошенький эльф, Терари, собирался испытать свое обаяние на нимфах. Можешь пойти, спросить его. Они могут знать, куда он пошел. Конечно же, они могли сойти с ума так же, как и весь лес, так что говори с ними поосторожней.~
  IF ~~ THEN REPLY ~Что ты узнала о Духе?~ GOTO 5
  IF ~~ THEN REPLY ~И как ты сюда попала?~ GOTO 4
  IF ~~ THEN REPLY ~Тебе нужна помощь, или ты сама доберешься?~ GOTO 13
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~Чудесный Аавилл! Хвала богам за его мудрость.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~Он - глава нашего круга друидов.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~Животные всегда питали крайнее уважение к ведьме. Она весьма часто защищает и помогает им. Я предположила, что Дух вряд ли имеет какую-либо власть над ее разумом, так что, возможно, она окажется кладезем информации.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY ~Я нашла ведьму на поляне неподалеку отсюда. Она в это время собирала какие-то травы, так что я тихо вышла из леса и ждала, пока она заметит меня. Некоторое время она работала, затем обернулась и улыбнулась мне. Ее глаза надолго задержались на моем лице.~
  IF ~~ THEN REPLY ~Она что, узнала тебя, или что?~ GOTO 15
  IF ~~ THEN REPLY ~Почему она уставилась на тебя?~ GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY ~Но как я могла предвидеть ее реакцию на мою невероятную красоту?~
  IF ~~ THEN REPLY ~Она что, узнала тебя, или что?~ GOTO 15
  IF ~~ THEN REPLY ~Почему она уставилась на тебя?~ GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Пруд - это что-то вроде входа в иную реальность, где чаще всего обитает Дух. Однако у меня нет ни малейшего представления о том, как он выглядит.~
  IF ~~ THEN REPLY ~Почему ты не вошла в него?~ GOTO 17
  IF ~~ THEN REPLY ~Что это значит - иная реальность?~ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY ~Не знаю, что бы он сделал. Может быть, напал бы на меня, но я бы все равно попыталась. Ведь это же от него все неприятности.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 6 3
  SAY ~Я и сама доберусь. Встретимся в роще друидов. Сохрани в памяти мое прекрасное лицо, на удачу. Прощай.~
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",1)EscapeAreaObject("Door1")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~Она, казалось, была просто ошеломлена моей красотой. На самом деле, и неудивительно, ведь она страшна, как смертный грех. Она убедила меня зайти к ней в дом, и мы уселись попить чаю. Мы немножко поболтали, но потом я почувствовала головокружение и поняла, что в мой чай что-то подмешано. Очнулась я запертой в этой комнате. Ведьма заходила ко мне и бормотала что-то о том, чтобы украсть мое лицо. Я не знаю, что она имела в виду, хотя, будь у меня такое, я бы тоже хотела с кем-нибудь поменяться.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY ~Ты что, плохо видишь? Моя ослепительная красота заворожила ее, бедняжку.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 19 // from: 15.1
  SAY ~Теперь, когда я свободна, я вернусь в рощу и буду совещаться с остальными друидами по поводу Духа Леса.~
  IF ~  Dead("SpiritFo")~ THEN REPLY ~Мне пришлось убить Духа Леса, так что можешь об этом больше не беспокоиться..~ GOTO 20
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~Мне удалось излечить Духа леса, так что можешь спокойно отдыхать.~ GOTO 21
  IF ~  !Dead("SpiritFo")Global("SpiritSaved","GLOBAL",0)~ THEN REPLY ~Расскажи мне, что ты узнала о Духе Леса.~ GOTO 5
  IF ~  OR(2)
Global("Druid1Saved","GLOBAL",0)
Global("Druid3Saved","GLOBAL",0)~ THEN REPLY ~Ты не знаешь, что случилось с другими друидами?~ GOTO 6
  IF ~~ THEN REPLY ~Тебе нужна помощь, или ты сама доберешься?~ GOTO 13
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY ~Я не очень много знаю про этот пруд, по большей части разные предания. Я знаю, что ни одно живое создание не может пройти через портал в иную реальность. По-моему, Орлейн говорил мне что-то о том, что портал существует между реальностями жизни и смерти. Дух - существо, некоторым образом, лишь наполовину живое, так что он может проходить через портал в обе стороны, а мы нет.~
  IF ~~ THEN REPLY ~Есть у тебя какие-нибудь предложения о том, что мне делать?~ GOTO 23
  IF ~~ THEN REPLY ~И как ты сюда попала?~ GOTO 4
  IF ~~ THEN REPLY ~Тебе нужна помощь, или ты сама доберешься?~ GOTO 13
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY ~Это другой план существования. Пруд работает как портал в это иное место.~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~Мертв? О, мне так и казалось, что это и произойдет. Остальные друиды не хотели этого признавать, но никто не знал, как остановить Духа. Это был всего лишь вопрос времени, прежде чем кто-нибудь понял бы, что ему придется умереть.~
  IF ~~ THEN REPLY ~Так ты не будешь на меня злиться?~ GOTO 24
  IF ~~ THEN REPLY ~Хорошо, что ты меня понимаешь.~ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY ~Тебе... тебе удалось его излечить? Нужно признаться, я в шоке. Ты - <MALEFEMALE> воистину героических способностей, если тебе удалось такое сотворить. Ты действительно герой, несмотря на то, что твоя внешность далека от совершенства.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY ~Мне пора уходить. Всего хорошего и спасибо тебе за помощь.~
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",1)EscapeAreaObject("Door1")~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY ~Каким-то образом тебе нужно найти способ пройти через портал, а затем либо вылечить Духа, либо, страшно даже сказать, убить его. Большинство друидов не могут даже помыслить о подобном, но тебе придется что-то сделать. Не спрашивай меня, как ты все это сделаешь, я этого не знаю. Хоть я, вдобавок к исключительной красоте, обладаю и таким же умом, но у меня просто нет ответов.~
  IF ~~ THEN REPLY ~И как ты сюда попала?~ GOTO 4
  IF ~  OR(2)
Global("Druid1Saved","GLOBAL",0)
Global("Druid3Saved","GLOBAL",0)~ THEN REPLY ~Ты не знаешь, что случилось с другими друидами?~ GOTO 6
  IF ~~ THEN REPLY ~Тебе нужна помощь, или ты сама доберешься?~ GOTO 13
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь.~ GOTO 3
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY ~Иногда единственный способ решить проблему - сделать выбор, который понравится далеко не всем. Не обращай внимание на то, что говорят остальные. Это был твой долг. Мне пора уходить. Всего хорошего и спасибо тебе за помощь.~
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",1)EscapeAreaObject("Door1")~ EXIT
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2904")Global("Druid2Saved","GLOBAL",0)~ THEN BEGIN 25 // from:
  SAY ~Я рада, что ты снова здесь. Я уже начинала беспокоиться. Могу я уже идти?~
  IF ~~ THEN REPLY ~Почему бы тебе не рассказать свою историю?~ GOTO 4
  IF ~~ THEN REPLY ~Тебе нужна помощь, или ты сама доберешься?~ GOTO 13
  IF ~~ THEN REPLY ~Просто подожди здесь. Я вернусь..~ GOTO 3
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Druid2Saved","GLOBAL",0)~ THEN BEGIN 26 // from:
  SAY ~Я спасена и все еще прекрасна, благодаря тебе. Прими мою вечную признательность.~
  IF ~~ THEN EXIT
END
