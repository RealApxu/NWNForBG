// Доки Стражник поместья Андрода  Человек В эти трудные времена почти никто не помогает друг другу. Это человек, похоже, растерял всю дисциплину, присущую профессиональному стражнику.

BEGIN ~ANDGUARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Хмм? Что вы хотели? Вы не друг мистера Андрода, так что не следует меня вам беспокоить.~
  IF ~~ THEN REPLY ~Я всего лишь хочу задать несколько простых вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ах, я не умею хорошо отвечать на вопросы. Если бы я мог, то не стоял бы у дверей этого дурацкого дворянского дома.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 3
  IF ~~ THEN REPLY ~Вам что-нибудь известно о Воющей Смерти?~ GOTO 4
  IF ~~ THEN REPLY ~Вы хорошо знаете район порта?~ GOTO 5
  IF ~~ THEN REPLY ~Почему я не могу войти в усадьбу?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Прощайте... Только не устраивайте мне проблем.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Меня зовут Берт. Я всего лишь здешний стражник. Мне это не нравится, но кому сейчас легко, а? Я ненавижу этого парня. Ненавижу! Этого мистера Андрода, он такой чванливый и слишком богатый. Говорит со мной так, словно я не знаю своего дела. А я его знаю... Только вот делать его не хочу. К тому же, я даже не нужен ему. Внутри у него есть парни, которые убьют даже вас, и не поморщатся. А я всего лишь занимаю место. Да!~
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Хотелось бы мне не знать того, что я знаю. Я видел, как люди умирали от этого. Они выходят на улицу, кричат... как ненормальные... словно в конце концов они смогут напасть на собственных матерей. Надеюсь, я этого не подхвачу, но это не от меня зависит. И, похоже, вообще ни от кого не зависит.~
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Я так думал, но теперь тут полный бардак. Здесь повсюду воры! Я видел, как людей грабят повсюду. Я буду вести себя тихо. Я не знаю, почему все посходили с ума, и уж конечно не хочу в это вмешиваться. Я лучше не буду никуда лезть.~
  IF ~~ THEN REPLY ~Я ищу работу.~ GOTO 7
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Ха, если вы можете взломать дверь, то какое мне дело? Мне и работа-то эта не нужна, а уж драка и подавно. Мне особого дела нет. Это не мой дом, так зачем мешать людям заходить в него? Если они такие глупые, чтобы пойти на это... то это не мое дело. Но там внутри опасно, предупреждаю вас.~
  IF ~~ THEN REPLY ~Почему там опасно?~ GOTO 8
  IF ~~ THEN REPLY ~Ты и вправду ничего не сделаешь, если я войду?~ GOTO 9
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Удачи вам, это все, что я могу сказать. Ни у кого нет работы. Меня наняли сюда, но работа мне не нравится. Однако у меня не было выбора.~
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY ~А почему вы думаете? Стал бы мистер Андрод оставлять снаружи такое ничтожество, как я, если бы у него не было *настоящих* кровожадных стражников внутри? Они очень свирепые! Думаю, он нанял наемников. Спасибо, я лучше побуду тут, снаружи. Если вы хотите войти, то дело ваше.~
  IF ~~ THEN REPLY ~Ты и вправду ничего не сделаешь, если я войду?~ GOTO 9
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY ~Послушайте, это не мой дом, так какое мне дело? Конечно, мне платят за то, что я его охраняю, но не настолько много, чтобы рисковать своей шеей.~
  IF ~~ THEN REPLY ~Почему там опасно?~ GOTO 8
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

