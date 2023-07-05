// Полуостров Штаб-квартира ополчения   Седос Себил человек   Похоже, эта женщина в курсе всего, что творится вокруг, и процветает посреди хаоса. Ее лицо не несет знаков всепобеждающей усталости, которая отличает соратников-стражников.

BEGIN ~SEDOS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Что привело вас сюда? Стражники не должны были никого пропускать в район Полуострова... скажите, вы, случайно, не новобранец, а?~ [SEDOS051]
  IF ~~ THEN REPLY ~Леди Арибет временно приняла меня на службу в ополчение.~ GOTO 1
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Она уже знает? Что ж, это первая хорошая новость за весь день.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Седос Себил, из ополчения Невервинтера. Я отвечаю за деятельность наших здесь... А вы кто?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Я ищу приключений.~ GOTO 6
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Мое имя не имеет значения, я <CLASS> из команды <CHARNAME>.~ GOTO 7
  IF ~~ THEN REPLY ~Я никогда не называю своего имени.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Послушайте, у нас тут кризис, так что у меня нет времени для дружеской беседы. Больше всего мне нужны свежие люди, которые смогли бы утрясти возникшие проблемы вне компетенции ополчения.~
  IF ~~ THEN REPLY ~Что за работа?~ GOTO 8
  IF ~~ THEN REPLY ~Простите, меня это не интересует. Мне пора.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Ну, тогда ступайте своей дорогой. Осторожней там.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Отлично. Пусть будет <CHARNAME>. Честно говоря, у нас тут на полуострове куча хлопот, и ваша помощь нам бы пригодилась... хотя это не очень похоже на обычную работу ополчения.~
  IF ~~ THEN REPLY ~Что за работа?~ GOTO 8
  IF ~~ THEN REPLY ~Простите, меня это не интересует. Мне пора.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~Ищете приключений, вот как, хм? Очень хорошо, <CHARNAME>, Мне нужна ваша помощь здесь, на Полуострове... хотя это не очень похоже на обычную работу ополчения.~
  IF ~~ THEN REPLY ~Что за работа?~ GOTO 8
  IF ~~ THEN REPLY ~Простите, меня это не интересует. Мне пора.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~Как хотите. Все равно, у нас тут на полуострове куча хлопот, так что ваша помощь может пригодиться... хотя это не очень похоже на обычную работу ополчения.~
  IF ~~ THEN REPLY ~Что за работа?~ GOTO 8
  IF ~~ THEN REPLY ~Простите, меня это не интересует. Мне пора.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~Все заключенные высыпали на улицы, и мы до предела измотаны попытками защитить мирных граждан... Как будто Воющей Смерти было недостаточно... Мне нужно, чтобы кто-нибудь пробрался в тюрьму и выяснил, что за дьявольщина там творится. Леди Арибет распорядилась выдать 1000 золотых любому ополченцу, который принесет мне доказательства того, что проблема решена. Считайте это платой за риск.~
  IF ~~ THEN REPLY ~Как вы собираетесь доставить меня в тюрьму?~ GOTO 9
  IF ~~ THEN REPLY ~Если вам это не под силу, то как это сделать мне?~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~Они превратили тюрьму в крепость, высылают оттуда штурмовые отряды, а потом снова отступают внутрь. С ними нелегко будет справиться. Думаю, у них действительно есть ключи, чтобы возвращаться в крепость, после того, как они заканчивают мародерствовать. Хотя ни у кого из тех, кого мы поймали, их не было.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY ~Послушайте, если бы у меня были люди, можно было бы разобраться с этим, но мы в ловушке. Заключенные очень хорошо организованы, они управляют тюрьмой, как крепостью. Если у них бывают вылазки, то все они отступают в тюрьму. Думаю, у них действительно есть ключи, чтобы возвращаться в крепость, после того, как они заканчивают мародерствовать. Хотя ни у кого из тех, кого мы поймали, их не было.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY ~Поскольку вы не можете взломать парадный вход, вам надо найти того, у кого есть ключ. По-моему, начать стоит с канализации на юго-западе района. Мы встречали там несколько банд.~
  IF ~~ THEN REPLY ~Не очень-то это большая плата за такую прорву работы.~ GOTO 12
  IF ~~ THEN REPLY ~Может, вы дадите аванс?~ GOTO 13
  IF ~~ THEN REPLY ~Какие опасности меня ждут?~ GOTO 14
  IF ~~ THEN REPLY ~Ладно, я сделаю это.~ GOTO 15
  IF ~~ THEN REPLY ~Нет, меня это не интересует.~ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~Может и так, но заключенные уже похитили все ценное, так что вы можете отобрать у них все, что вам нужно.~
  IF ~~ THEN REPLY ~Может, вы дадите аванс?~ GOTO 13
  IF ~~ THEN REPLY ~Какие опасности меня ждут?~ GOTO 14
  IF ~~ THEN REPLY ~Ладно, я сделаю это.~ GOTO 15
  IF ~~ THEN REPLY ~Нет, меня это не интересует.~ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY ~Конечно, нет. Если бы я выплачивала аванс всем членам ополчения, городская казна бы уже опустела, а заключенные продолжали бы бунтовать.~
  IF ~~ THEN REPLY ~Не очень-то это большая плата за такую прорву работы.~ GOTO 12
  IF ~~ THEN REPLY ~Какие опасности меня ждут?~ GOTO 14
  IF ~~ THEN REPLY ~Ладно, я сделаю это.~ GOTO 15
  IF ~~ THEN REPLY ~Нет, меня это не интересует.~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY ~Кроме заключенных, позаботьтесь еще о главном надзирателе, Элейфине. Судя по последним донесениям, он их и выпустил...~
  IF ~~ THEN REPLY ~Элейфин? Что вы можете сказать мне о нем?~ GOTO 17
  IF ~~ THEN REPLY ~Не очень-то это большая плата за такую прорву работы.~ GOTO 12
  IF ~~ THEN REPLY ~Может, вы дадите аванс?~ GOTO 13
  IF ~~ THEN REPLY ~Ладно, я сделаю это.~ GOTO 15
  IF ~~ THEN REPLY ~Нет, меня это не интересует.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 11.4
  SAY ~Тогда удачи вам, и не забудьте доложить мне, когда узнаете, что там стряслось.~
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",2)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Капитан-привратник Кипп советовал поговорить с Седос Себил, чтобы определить лучший способ проникнуть в здание тюрьмы и помочь подавить бунт. Ее штаб-квартира расположена в юго-восточной части квартала.%)~ UNSOLVED_JOURNAL ~Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Беглые преступники не только повергли улицы города в хаос, но и захватили здание тюрьмы. Теперь они патрулируют его, а бывшие охранники тюрьмы брошены в камеры. Седос Себил, командир ополчения на полуострове, запросила помощи. Нам нужно, пробраться в тюрьму и выяснить, что за дьявольщина там творится.~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.5
  SAY ~Что ж, я могу отвести животное к воде, но как бы я к нему не обращалась, напиться заставить не выйдет. Прошу извинить меня, но у нас сейчас ужасно много дел.~
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY ~Он был одним из лучших ополченцев, и мне не приходилось слышать о нем ни одного дурного слова. Лорд Нашер лично назначил его начальником тюрьмы. Здесь что-то не так. Полагаю, Воющая Смерть может изменить взгляд на вещи...~
  IF ~~ THEN REPLY ~Не очень-то это большая плата за такую прорву работы.~ GOTO 12
  IF ~~ THEN REPLY ~Может, вы дадите аванс?~ GOTO 13
  IF ~~ THEN REPLY ~Ладно, я сделаю это.~ GOTO 15
  IF ~~ THEN REPLY ~Нет, меня это не интересует.~ GOTO 16
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY ~Опять вы, вот как? Не передумали насчет разведки в тюрьме?~ [SEDOS053]
  IF ~~ THEN REPLY ~Скажите еще раз, что вам нужно?~ GOTO 8
  IF ~~ THEN REPLY ~Да, теперь у меня другое мнение. Я это сделаю.~ GOTO 15
  IF ~~ THEN REPLY ~Нет, меня это все еще не интересует.~ GOTO 16
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",2)~ THEN BEGIN 19 // from:
  SAY ~Еще раз привет. Надеюсь, ваши поиски причин бунта успешны. Нам нужна любая помощь, которую мы можем получить. Вы нашли что-нибудь в тюрьме?~ [SEDOS054]
  IF ~~ THEN REPLY ~Меня это больше не интересует.~ GOTO 20
  IF ~~ THEN REPLY ~Так как же я попаду в тюрьму?~ GOTO 21
  IF ~~ THEN REPLY ~Скажите еще раз, какое будет вознаграждение.~ GOTO 22
  IF ~~ THEN REPLY ~Я вернусь к этому. До встречи.~ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~Как хотите, <SIRMAAM>, но у меня есть приказ, и я останусь здесь, пока работа не будет закончена.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY ~Сбежавшие заключенные продолжают посылать группы налетчиков. У одной из них должен быть ключ, чтобы вернуться. Вам надо найти того, у кого есть этот ключ. Больше ничего об этом я не знаю.~
  IF ~~ THEN REPLY ~Меня это больше не интересует.~ GOTO 20
  IF ~~ THEN REPLY ~Скажите еще раз, какое будет вознаграждение.~ GOTO 22
  IF ~~ THEN REPLY ~Я вернусь к этому. До встречи.~ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 19.3
  SAY ~Арибет распорядилась выдать 1000 золотых. Если вы хотите больше, мы можем поговорить об этом, когда будут серьезные результаты.~
  IF ~~ THEN REPLY ~Меня это больше не интересует.~ GOTO 20
  IF ~~ THEN REPLY ~Так как же я попаду в тюрьму?~ GOTO 21
  IF ~~ THEN REPLY ~Я вернусь к этому. До встречи.~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 19.4
  SAY ~Великолепно. Тогда я дождусь вашего возвращения.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",3)~ THEN BEGIN 24 // from:
  SAY ~Привет. Приятно видеть живых людей. Не знаю точно, что произошло в тюрьме, но что бы там ни было, это произвело сильное впечатление на всех нас здесь. Сбежавшие заключенные, похоже, уже не столь страшны. Конечно, они по-прежнему очень опасны, но бунт, по-видимому, закончился. У меня нет этому объяснений.~ [SEDOS056]
  IF ~  !PartyHasItem("Crewtd2")Global("Brainworm","GLOBAL",1)~ THEN REPLY ~Главный надзиратель Элейфин был под контролем какой-то сущности.~ GOTO 25
  IF ~  !PartyHasItem("Crewtd2")Global("Brainworm","GLOBAL",0)~ THEN REPLY ~Главный надзиратель Элейфин был под контролем какой-то сущности.~ GOTO 26
  IF ~  PartyHasItem("Crewtd2")~ THEN REPLY ~Нечто управляло главным надзирателем Элейфином. И у меня получилось добыть часть этого.~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY ~Да, говорят, что это был пожиратель интеллекта из Уотердипа. А еще говорят, что вы вернули его останки Арибет. Хорошая работа! Ее слово - достаточное доказательство того, что вы выполнили работу. Полагаю, что 1000 золотых достаточно за такое опасное задание?~
  IF ~~ THEN REPLY ~Да, это подойдет.~ GOTO 28
  IF ~~ THEN REPLY ~Лучше предложить больше денег, женщина. Я не хочу, чтобы у тебя были... проблемы.~ GOTO 29
  IF ~~ THEN REPLY ~Мне вознаграждение не нужно. В тюрьме теперь все в порядке, только это и имеет значение.~ GOTO 30
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY ~Вы можете как-то подтвердить, что устранили эту угрозу? Я не могу писать об этом в отчете, пока мы не будем полностью убеждены в этом. Докажите мне, что вы действительно покончили с тем, что, как вы утверждаете, управляло им. Тогда мы подумаем насчет вашей награды.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY ~Дайте-ка взглянуть... Это же мозг мозгоеда, правда? Так вот почему капитан Элейфин вел себя так странно! Ну конечно! Мозгоед - одно из уотердипских существ, которые были нужны леди Арибет, чтобы сделать лекарство от мора! Лучше отнесите это ей. Полагаю, доказательств того, что вы выполнили требуемую работу, достаточно. Думаю, 1000 золотых будут достаточной компенсацией за риск.~
  IF ~~ THEN REPLY ~Да, это подойдет.~ GOTO 28
  IF ~~ THEN REPLY ~Лучше предложить больше денег, женщина. Я не хочу, чтобы у тебя были... проблемы.~ GOTO 29
  IF ~~ THEN REPLY ~Мне вознаграждение не нужно. В тюрьме теперь все в порядке, только это и имеет значение.~ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY ~Тогда я благодарю вас за все, что вы сделали для выполнения этого задания. Я дам вам хорошую рекомендацию, когда буду составлять рапорт. А теперь, прошу прощения, но мне надо заняться составлением рапорта для лорда Нашера. Он плохо себя чувствует, но известия о нашем успехе должны поднять его дух.~
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",4)GiveGoldForce(1000)AddexperienceParty(154000)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Капитан-привратник Кипп советовал поговорить с Седос Себил, чтобы определить лучший способ проникнуть в здание тюрьмы и помочь подавить бунт. Ее штаб-квартира расположена в юго-восточной части квартала.%)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Беглые преступники не только повергли улицы города в хаос, но и захватили здание тюрьмы. Теперь они патрулируют его, а бывшие охранники тюрьмы брошены в камеры. Седос Себил, командир ополчения на полуострове, запросила помощи. Нам нужно, пробраться в тюрьму и выяснить, что за дьявольщина там творится.%)~ SOLVED_JOURNAL ~Полуостров: Бунт в тюрьме

Со смертью странного создания, которое поглотило некогда благородный разум главного надзирателя, безопасность на полуострове начала восстанавливаться. Впрочем, над кварталом по-прежнему довлеет тяжким грузом Воющая Смерть.~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.2
  SAY ~У вас была работа, и вы ее выполнили. Вот ваша плата, 1000 золотых. Я отмечу в своем отчете, что вы пытались мне угрожать. А теперь, прошу прощения, но мне надо заняться составлением рапорта для лорда Нашера. Он плохо себя чувствует, но известия о нашем успехе должны поднять его дух.~
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",4)GiveGoldForce(1000)AddexperienceParty(154000)ReputationInc(-1)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Капитан-привратник Кипп советовал поговорить с Седос Себил, чтобы определить лучший способ проникнуть в здание тюрьмы и помочь подавить бунт. Ее штаб-квартира расположена в юго-восточной части квартала.%)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Беглые преступники не только повергли улицы города в хаос, но и захватили здание тюрьмы. Теперь они патрулируют его, а бывшие охранники тюрьмы брошены в камеры. Седос Себил, командир ополчения на полуострове, запросила помощи. Нам нужно, пробраться в тюрьму и выяснить, что за дьявольщина там творится.%)~ SOLVED_JOURNAL ~Полуостров: Бунт в тюрьме

Со смертью странного создания, которое поглотило некогда благородный разум главного надзирателя, безопасность на полуострове начала восстанавливаться. Впрочем, над кварталом по-прежнему довлеет тяжким грузом Воющая Смерть.~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.3
  SAY ~Отлично <SIRMAAM>. Вы отлично поработали и отказались от награды. Я очень высоко оценю вашу деятельность в своем отчете. А теперь, прошу прощения, но мне надо заняться составлением рапорта для лорда Нашера. Он плохо себя чувствует, но известия о нашем успехе должны поднять его дух.~
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",4)AddexperienceParty(154000)ReputationInc(1)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Капитан-привратник Кипп советовал поговорить с Седос Себил, чтобы определить лучший способ проникнуть в здание тюрьмы и помочь подавить бунт. Ее штаб-квартира расположена в юго-восточной части квартала.%)EraseJournalEntry(%Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Беглые преступники не только повергли улицы города в хаос, но и захватили здание тюрьмы. Теперь они патрулируют его, а бывшие охранники тюрьмы брошены в камеры. Седос Себил, командир ополчения на полуострове, запросила помощи. Нам нужно, пробраться в тюрьму и выяснить, что за дьявольщина там творится.%)~ SOLVED_JOURNAL ~Полуостров: Бунт в тюрьме

Со смертью странного создания, которое поглотило некогда благородный разум главного надзирателя, безопасность на полуострове начала восстанавливаться. Впрочем, над кварталом по-прежнему довлеет тяжким грузом Воющая Смерть.~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",4)~ THEN BEGIN 31 // from:
  SAY ~Мне действительно нужно подготовить отчет лорду Нашеру. Извините, <SIRMAAM>.~ [SEDOS055]
  IF ~~ THEN EXIT
END

