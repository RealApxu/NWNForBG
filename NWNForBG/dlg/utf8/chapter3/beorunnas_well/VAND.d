// Колодец Беорунна  Улица Ванда   Метки на одежде этой женщины говорят о том, что она - варвар из утгардтского племени Черного Льва.

BEGIN ~VAND~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",0)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY ~Прошу прощения, ты говоришь со мной? Извини за невнимательность, я очень волнуюсь по поводу предстоящего суда над моим мужем.~
  IF ~~ THEN REPLY ~Суд? Какой суд?~ GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY ~Я буду представлять интересы твоего мужа в суде.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Моего мужа Ролгана обвиняют в убийстве солдата Союза Лордов. Если никто не спасет его, моего мужа казнят. Прости, мне очень тяжело говорить об этом. Ньюрик в храме Тира может объяснить это лучше, чем я - я совсем не разбираюсь в тонкостях вашей судебной системы.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Представлять моего мужа? Извини, но обычаи вашего правосудия незнакомы нам, людям из племени Черного Льва. Жрец Ньюрик сказал, что мне придется совершенно честно отвечать на вопросы... как будто бы они *ожидают*, что я начну врать! Он ничего не знает о гордости нашего племени. Спрашивай, мне нечего скрывать.~
  IF ~~ THEN REPLY ~Расскажи мне, что случилось в ту ночь, когда был убит Грифф.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Мой муж поздно вернулся домой. Он выпил, но было что-то еще. Он казался... другим. Как будто бы его сознание было затуманено не только алкоголем. Когда он рассказал мне, что проиграл семейные реликвии, драгоценные камни, освященные жрецами Утгара, я поняла, что все очень плохо. Он был не в своем уме, иначе он бы никогда не поставил на кон эти камни.~
  IF ~~ THEN REPLY ~Азартные игры и алкоголь - опасное сочетание.~ GOTO 4
  IF ~~ THEN REPLY ~Пожалуйста, продолжай.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Я знаю своего мужа, он никогда не был безответственным пьяницей! С ним что-то случилось, что-то куда более жуткое, чем просто опьянение! Разумеется, у меня нет доказательств, но я все равно знаю, что это правда.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2  4.1
  SAY ~Я отправила его к этому человеку, Гриффу, чтобы мой муж попросил этого человека вернуть наше наследие. Мы хотели предложить ему золото. Цену, за которую он никогда не смог бы продать эти камни. Их религиозное значение для племени Черного Льва очень сильно превосходит их материальную ценность.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~Как хочешь. Если тебе понадобится снова поговорить со мной, я буду в деревне, ждать вызова в суд.~
  IF ~~ THEN DO ~SetGlobal("VandJob","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Но этот солдат напал на моего мужа, и Ролган был вынужден убить его, чтобы сохранить свою жизнь. Он сбежал в храм в поисках прибежища, толпа разъяренных друзей Гриффа преследовала его по пятам.~
  IF ~~ THEN REPLY ~Что-нибудь еще?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Пожалуйста, помоги моему мужу. Они хотят показать, что он всего лишь пьяный дикарь-язычник. Они всех Утгардтов считают именно такими. Мы благородный народ, но если Ролгана осудят, эти стереотипы только укоренятся в сознании людей. Я хотела бы помочь тебе, но все, что я могу сделать сейчас - помолиться Утгару, чтобы он даровал тебе мудрость.~
  IF ~~ THEN DO ~SetGlobal("VandJob","GLOBAL",2)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",5)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 9 // from:
  SAY ~Правосудие Союза Лордов - истинное правосудие. Суд по делу моего мужа завершен, его больше не обвиняют в убийстве! Мы с ним снова вместе. Я благодарна тебе, <CHARNAME>, за возвращение солнца на мое небо. Ты всегда будешь другом для племени Черного Льва народа Утгардта.~
  IF ~~ THEN DO ~SetGlobal("VandJob","GLOBAL",6)AddexperienceParty(52000)~ EXIT
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",7)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 10 // from:
  SAY ~Мой муж мертв, солнце на моем небе закатилось, дух мой поглотила темная ночь. Я скорблю и молюсь Утгару, чтобы тот пробудил его дух, но слова мои тщетны. Слуги Тира осквернили его тело, насадив его на кол рядом со своим храмом, и это грязное действо они называют правосудием. И они еще осмеливаются называть нас дикарями? Оставь меня наедине с моими страданиями... я хочу побыть одна.~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",6)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY ~Правосудие Союза Лордов - истинное правосудие. Суд по делу моего мужа завершен, его больше не обвиняют в убийстве! Мы с ним снова вместе. Я благодарна тебе, <CHARNAME>, за возвращение солнца на мое небо. Ты всегда будешь другом для племени Черного Льва народа Утгардта.~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY ~Я здесь. Задавайте свои вопросы.~
  IF ~~ THEN EXTERN ~IGLAND2~ 1
END

IF ~~ THEN BEGIN 13 // from: IGLAND2 2.1
  SAY ~Ни я, ни мой муж никогда не совершили бы подлое убийство. Мы, Утгардты, благородный народ!~
  IF ~~ THEN EXTERN ~IGLAND2~ 3
END

IF ~~ THEN BEGIN 14 // from: IGLAND2 3.1
  SAY ~Да, но он не стал бы убивать этого человека!~
  IF ~~ THEN EXTERN ~IGLAND2~ 4
END

IF ~~ THEN BEGIN 15 // from: IGLAND2 6.1
  SAY ~Я готова отвечать на ваши вопросы, <LADYLORD> <CHARNAME>.~
  IF ~  Global("VandJob","GLOBAL",2)Global("WandaAnswers","LOCALS",0)~ THEN REPLY ~Расскажите мне, почему вы послали своего мужа к Гриффу.~ DO ~SetGlobal("WandaAnswers","LOCALS",1)~ GOTO 16
  IF ~  GlobalGT("VandJob","GLOBAL",0)~ THEN REPLY ~Расскажите мне о том, что значили для вас фамильные ценности, которые проиграл ваш муж.~ GOTO 17
  IF ~~ THEN REPLY ~Вы считаете, что вашего мужа судят только за то, что он принадлежит народу Утгардта?~ GOTO 18
  IF ~~ THEN REPLY ~У меня больше нет вопросов к Ванде.~ EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY ~Я сказала Ролгану, чтобы он поговорил с Гриффом... Чтобы он попросил его вернуть фамильные ценности, которые он забрал у нас. Чтобы он взывал к порядочности Гриффа. Мой муж не убийца. Он вернулся туда только потому, что я послала его поговорить с Гриффом.~
  IF ~  GlobalGT("VandJob","GLOBAL",0)~ THEN REPLY ~Расскажите мне о том, что значили для вас фамильные ценности, которые проиграл ваш муж.~ GOTO 17
  IF ~~ THEN REPLY ~Вы считаете, что вашего мужа судят только за то, что он принадлежит народу Утгардта?~ GOTO 18
  IF ~~ THEN REPLY ~У меня больше нет вопросов к Ванде.~ EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY ~Это не просто семейные ценности. Это артефакты, которые имеют очень большое религиозное значение для племени Черного Льва. Их стоимость не оценивается в деньгах. Для последователей Утгара эти артефакты стоят дороже жизни!~
  IF ~~ THEN EXTERN ~IGLAND2~ 7
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY ~Ваш народ ненавидит Утгардтов! Многие годы Союз Лордов преследовал нас за то, что мы другие! Вы всего лишь кучка расистов!~
  IF ~~ THEN EXTERN ~NEURIK2~ 48
END

