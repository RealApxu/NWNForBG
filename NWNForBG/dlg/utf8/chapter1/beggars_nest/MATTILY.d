// Гнездо Нищих  Маттили  Полурослик Эта практичная женщина из полуросликов никак не может смириться с абсурдом всего происходящего.

BEGIN ~MATTILY~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Приветствую. Приятно встретить здесь пока что живого человека. Было бы лучше, если бы мы разговаривали где-нибудь в безопасном месте, но мне все равно приятно.~ [MATTIL54]
  IF ~  !Dead("Aldo")~ THEN GOTO 1
  IF ~  Dead("Aldo")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Конечно, если бы мой муж вытащил нас отсюда, это было бы намного лучше.~
  IF ~~ THEN REPLY ~Кто вы? Что вы здесь делаете?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Я не очень хорошо выгляжу, потому что мой муж Альдо мертв, а еще тут повсюду кишат зомби, да вы и сами все видите.~
  IF ~~ THEN REPLY ~Кто вы? Что вы здесь делаете?~ GOTO 5
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN REPLY ~Вашего мужа звали Альдо? Со мной пришел Гектор. Он искал Альдо.~ GOTO 6
  IF ~  Dead("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 7
  IF ~  !Dead("Hector")!See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 11
  IF ~  !Dead("Hector")See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 12
  IF ~~ THEN REPLY ~Да, это очень плохо. Не повезло вам.~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Что ж, меня зовут Маттили. Что же касается причины, по которой я здесь нахожусь, то это очень хороший вопрос. Почему бы вам не спросить эту телегу?~
  IF ~  See("Aldo")~ THEN EXTERN ~ALDO~ 19 // Не начинай, женщина! Я стараюсь изо всех сил! 9
  IF ~  !See("Aldo")~ THEN GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Добрый день вам.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Я Маттили, из-за этой повозки умер мой муж, а я застряла здесь. Если честно, я не знаю, почему я до сих пор тут. Может быть, из-за того, что повсюду в округе тоже полно зомби.~
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN REPLY ~Вашего мужа звали Альдо? Со мной пришел Гектор. Он искал Альдо.~ GOTO 6
  IF ~  Dead("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 7
  IF ~  !Dead("Hector")!See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 11
  IF ~  !Dead("Hector")See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 12
  IF ~~ THEN REPLY ~Да, это очень плохо. Не повезло вам.~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~Понимаю. Что ж, пускай ищет на здоровье, он никогда его не найдет. Альдо умер, сражаясь за свою любимую повозку. Вот ведь идиот.~
  IF ~  Dead("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 7
  IF ~  !Dead("Hector")!See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 11
  IF ~  !Dead("Hector")See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 12
  IF ~~ THEN REPLY ~Да, это очень плохо. Не повезло вам.~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~Знаешь, спасибо за предложение, но я лучше попробую справиться самостоятельно. Теперь, когда нет Альдо, здесь оставаться нет смысла. Мне хотелось подождать Гектора... но он, скорее всего, мертв.~
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.6
  SAY ~Оскорбляйте кого-нибудь другого. Я видела, как нежить убила моего мужа - не думайте, что я испугаюсь вас. Не нужна мне ваша помощь.~
  IF ~~ THEN REPLY ~Кто вы? Что вы здесь делаете?~ GOTO 5
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN REPLY ~Вашего мужа звали Альдо? Со мной пришел Гектор. Он искал Альдо.~ GOTO 6
  IF ~  Dead("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 7
  IF ~  !Dead("Hector")!See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 11
  IF ~  !Dead("Hector")See("Hector")~ THEN REPLY ~Я могу отвести вас в безопасное место.~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: ALDO 19
  SAY ~Хватит, Альдо! Мне уже надоело ждать колесо от повозки на улице, кишащей зомби!~
  IF ~  !See("Hector")~ THEN REPLY ~Вам не стоит здесь оставаться. Я могу вас вывести отсюда.~ GOTO 13
  IF ~  See("Hector")~ THEN REPLY ~Вам не стоит здесь оставаться. Я могу вас вывести отсюда.~ GOTO 14
  IF ~~ THEN REPLY ~Вы видели что-нибудь опасное?~ GOTO 15
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY ~Прошу прощения за взволнованный тон, но мне уже надоело ждать колесо от повозки на улице, кишащей зомби. Ты слышишь меня, Альдо?!~
  IF ~  !See("Hector")~ THEN REPLY ~Вам не стоит здесь оставаться. Я могу вас вывести отсюда.~ GOTO 13
  IF ~  See("Hector")~ THEN REPLY ~Вам не стоит здесь оставаться. Я могу вас вывести отсюда.~ GOTO 14
  IF ~~ THEN REPLY ~Вы видели что-нибудь опасное?~ GOTO 15
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY ~Видите ли, мой муж ждал Гектора, и я хотела, чтобы вы... Ну, я хотела бы узнать, что с ним все в порядке, прежде, чем уеду отсюда. Он друг семьи, и, по-моему, гораздо важнее этой повозки.~
  IF ~~ THEN REPLY ~Да, это очень плохо. Не повезло вам.~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY ~Ну что ж, если с вами Гектор, мне и вовсе незачем здесь оставаться. То есть, мне бы очень не хотелось оставлять мою любимую повозку... Такие противоречивые чувства...~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY ~С нами все будет в порядке. Альдо за нами присмотрит. Он хороший человек. Слишком привязан к своей телеге, как мне кажется, но человек хороший. Меня больше волнует Гектор. Альдо послал его на поиски запчастей для повозки, а я за него очень волнуюсь. Друг семьи, понимаете ли.~
  IF ~~ THEN REPLY ~Вы видели что-нибудь опасное?~ GOTO 15
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY ~О, думаю, с нами все будет в порядке. Вижу, с вами Гектор. Теперь, когда он здесь, с нами все будет в порядке. Я за него волновалась. Альдо! Смотри! Это Гектор! Поговорите с Альдо, хорошо? Он будет рад узнать, что с Гектором все в порядке.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY ~Помимо легионов нежити, мужа, который ценит свою телегу больше своей семьи, и чумы, которая, кажется, скоро приведет к концу света? Нет, на самом деле, ничего не видела. Большую часть времени я трачу на то, чтобы остаться в живых.~
  IF ~  !See("Hector")~ THEN REPLY ~Вам не стоит здесь оставаться. Я могу вас вывести отсюда.~ GOTO 13
  IF ~  See("Hector")~ THEN REPLY ~Вам не стоит здесь оставаться. Я могу вас вывести отсюда.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY ~Это была шутка. Спасибо за предложение, но мы с Гектором и сами сможем выбраться отсюда. Я очень ценю вашу помощь. Не сделаете ли мне одолжение? Плюньте на повозку прежде, чем уйдете.~
  IF ~~ THEN DO ~AddexperienceParty(20000)ActionOverride("Hector",EscapeAreaDestroy(60))EscapeAreaDestroy(60)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 17 // from:
  SAY ~Я виню повозку. Не мор, не зомби... повозку.~ [MATTIL56]
  IF ~~ THEN EXIT
END

