// Лускан Логово Курта Толан Лозен Этого заключенного, похоже, долго держали связанным и плохо кормили, настолько он истощен.

//   IF ~~ THEN REPLY ~Пойдет.~ DO ~StartStore("Innkeep1",LastTalkedToBy(Myself))~ EXIT

BEGIN ~TOLAN~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Аххх! Пожалуйста, не трогайте меня! Прошу вас... Скажите Курту, что я не пытаюсь убежать, клянусь!~
  IF ~~ THEN REPLY ~Вы тут в заключении?~ GOTO 1
  IF ~~ THEN REPLY ~Стоять! Я не потерплю никаких фокусов!~ GOTO 2
  IF ~~ THEN REPLY ~Успокойтесь. Я не за Курта, это точно.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Да... Я из армии Курта, но... Когда он сошел с ума, мне захотелось убежать. Думаю, хорошо еще, что меня оставили в живых. А вы... не могли бы вы освободить меня, <LADYLORD>?~
  IF ~~ THEN REPLY ~Откуда мне знать, что вы действительно в плену, и что все это не уловка?~ GOTO 4
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
  IF ~~ THEN REPLY ~Какое вознаграждение я получу, если отпущу вас?~ GOTO 6
  IF ~~ THEN REPLY ~А вы сможете сами найти выход?~ GOTO 7
  IF ~~ THEN REPLY ~Я здесь не для того, чтобы спасать вас. Убирайтесь с моей дороги.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~У меня нет ни оружия, ни доспехов, <LADYLORD>. А если бы и были, я больше не стану драться за Курта. Он бросил меня сюда за попытку к бегству. Не... не могли бы вы освободить меня?~
  IF ~~ THEN REPLY ~Откуда мне знать, что вы действительно в плену, и что все это не уловка?~ GOTO 4
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
  IF ~~ THEN REPLY ~Какое вознаграждение я получу, если отпущу вас?~ GOTO 6
  IF ~~ THEN REPLY ~А вы сможете сами найти выход?~ GOTO 7
  IF ~~ THEN REPLY ~Я здесь не для того, чтобы спасать вас. Убирайтесь с моей дороги.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Это... большое облегчение, <LADYLORD>. Курт спятил, это точно... Он бросил меня сюда при попытке сбежать из его армии. А не... Не могли бы вы выпустить меня отсюда?~
  IF ~~ THEN REPLY ~Откуда мне знать, что вы действительно в плену, и что все это не уловка?~ GOTO 4
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
  IF ~~ THEN REPLY ~Какое вознаграждение я получу, если отпущу вас?~ GOTO 6
  IF ~~ THEN REPLY ~А вы сможете сами найти выход?~ GOTO 7
  IF ~~ THEN REPLY ~Я здесь не для того, чтобы спасать вас. Убирайтесь с моей дороги.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Я не знаю. У меня нет ничего, чем можно было бы ранить вас... И если вы меня отпустите, я просто уйду! Клянусь, я лишь хочу поскорее выбраться отсюда!~
  IF ~~ THEN REPLY ~Я тебе не доверяю. Умри!~ GOTO 9
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
  IF ~~ THEN REPLY ~Какое вознаграждение я получу, если отпущу вас?~ GOTO 6
  IF ~~ THEN REPLY ~А вы сможете сами найти выход?~ GOTO 7
  IF ~~ THEN REPLY ~Я здесь не для того, чтобы спасать вас. Убирайтесь с моей дороги.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Я мало что знаю, <LADYLORD>... Но я расскажу вам, что смогу.~
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~А вы сможете сами найти выход?~ GOTO 7
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~У меня нет золота. Курт бросил меня здесь совершенно без всего. Я... Я думаю, что могу рассказать вам что-нибудь о его базе или о самом Курте...~
  IF ~~ THEN REPLY ~Да, информация мне не помешает.~ GOTO 5
  IF ~~ THEN REPLY ~Вы для меня бесполезны. Отстаньте.~ GOTO 13
  IF ~~ THEN REPLY ~А вы сможете сами найти выход?~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY ~Думаю да. Лучше умереть при попытке бежать, чем сидеть и ждать, пока Курт не позволит какому-нибудь демону съесть меня... Или еще что похуже.~
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
  IF ~~ THEN REPLY ~Тогда бегите на свободу. Путь позади меня чист.~ GOTO 14
  IF ~~ THEN REPLY ~Может быть, ты можешь пойти со мной. Так будет безопаснее.~ GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY ~Так... Вы меня отпустите? И не причините мне зла, да?~
  IF ~~ THEN REPLY ~Это не мои слова. Убивать приятно! Ха-ха-ха!!!~ GOTO 9
  IF ~~ THEN REPLY ~Зачем мне причинять вам вред? Идите, говорю вам.~ GOTO 14
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~Ааааа! Я... У меня даже нечем сражаться! Кто-нибудь, помогите мне!!!~
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),100)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~Я был одним из солдат Курта... До того, как это все началось. Нас осталось совсем немного... Его армия теперь в основном состоит из... из всяких монстров и демонов. Высший Капитан Курт сошел с ума... Он пойдет на все, он убьет всех нас, лишь бы убить других Высших Капитанов. Мне... Мне хотелось убежать, выбраться отсюда, но он поймал меня и бросил сюда.~
  IF ~~ THEN REPLY ~Но почему он просто не убьет вас?~ GOTO 16
  IF ~~ THEN REPLY ~У вас есть какие-нибудь идеи, почему вдруг он сошел с ума?~ GOTO 17
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~Не очень много. По-моему, это место когда-то принадлежало какому-то волшебнику. У волшебника был портал, через который он мог вызывать демонов... И Курту очень хотелось заполучить его. Думаю, что волшебник не отдал бы это Курту, потому что Высший Капитан заставил нас захватить это место и убить старика.~
  IF ~~ THEN REPLY ~Вы знаете, где Курт?~ GOTO 18
  IF ~~ THEN REPLY ~Расскажи, что тебе известно об этом портале.~ GOTO 19
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY ~Он действительно сильный боец, <LADYLORD>. А еще он сумасшедший. Я вот что скажу вам... Он не станет разговаривать с вами, если увидит вас здесь... Он захочет вашей крови!~
  IF ~~ THEN REPLY ~Какие у Курта есть союзники?~ GOTO 20
  IF ~~ THEN REPLY ~Есть ли здесь еще заключенные?~ GOTO 21
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.4
  SAY ~Так... Вы меня отпустите? И не причините мне зла, да?~
  IF ~~ THEN REPLY ~Это не мои слова. Убивать приятно! Ха-ха-ха!!!~ GOTO 9
  IF ~~ THEN REPLY ~Зачем мне причинять вам вред? Идите, говорю вам.~ GOTO 14
  IF ~~ THEN REPLY ~Сначала мне нужна информация.~ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 7.2
  SAY ~С-спасибо вам, <LADYLORD>. Я лишь хочу уехать подальше от этой войны и этого проклятого города. А Курт... Надеюсь, он получит по заслугам!~
  IF ~~ THEN DO ~AddexperienceParty(12000)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY ~Вы... Вы очень добры, <LADYLORD>, но я не могу просить вас об этом. Могу поспорить, вам встретится еще больше людей Курта... А мне бы совсем не хотелось оказаться в такой ситуации. Не беспокойтесь обо мне. Я... Я думаю, что смогу выбраться отсюда. Просто... Спасибо вам за вашу доброту. Надеюсь, что Курт получит по заслугам!~
  IF ~~ THEN DO ~AddexperienceParty(12000)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY ~Он убил многих других, так что я не знаю. Он сказал что-то насчет... насчет того, что отдаст меня какому-то демону. Я... Я даже думать об этом не хочу...~
  IF ~~ THEN REPLY ~У вас есть какие-нибудь идеи, почему вдруг он сошел с ума?~ GOTO 17
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 10.2
  SAY ~Нет... совсем нет. Хотя теперь я помню, что был один человек, который однажды ночью пришел к Высшему Капитану. Курт называл его Маугримом. И все эти дела начались после этого.~
  IF ~~ THEN REPLY ~Но почему он просто не убьет вас?~ GOTO 16
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY ~Где-то за дверью... ну, понимаете, той, что на другом конце главного зала за пределами тюрьмы. Но вам следует быть осторожнее... Там полно всяких монстров. Больших монстров. Они так и лезут из портала.~
  IF ~~ THEN REPLY ~Расскажи, что тебе известно об этом портале.~ GOTO 19
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 11.2
  SAY ~Курт вызвал при помощи него огромное количество демонов... большая часть силы Курта каким-то образом связана с порталом. По крайней мере, так мне сказал один из его магов. Интересно, что же он сделал, чтобы получить такую силу. Где-то здесь все еще есть библиотека, которая раньше принадлежала волшебнику, построившему портал. Может, в ней тебе удастся получить о портале больше информации - не знаю.~
  IF ~~ THEN REPLY ~Вы знаете, где Курт?~ GOTO 18
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Расскажите мне, что вы знаете о Курте.~ GOTO 12
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY ~Я... Я думаю, одна из них была жрицей Орил, хотя точно не знаю. Есть еще солдаты, завербованные Куртом... А еще демоны... много демонов. Они все выходят из портала, который открыл волшебник, что жил здесь до того, как это место захватил Курт.~
  IF ~~ THEN REPLY ~Есть ли здесь еще заключенные?~ GOTO 21
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 12.2
  SAY ~Я видал немногих. Но не знаю, что произошло с ними. И девушка тоже была... Как же ее звали? Эвейн? Курт держал ее поближе к себе... Ее уже давно не видно.~
  IF ~~ THEN REPLY ~Какие у Курта есть союзники?~ GOTO 20
  IF ~~ THEN REPLY ~Как получилось, что вы попали в плен?~ GOTO 10
  IF ~~ THEN REPLY ~Что вы знаете об этом месте?~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо. У меня больше нет вопросов.~ GOTO 13
END

