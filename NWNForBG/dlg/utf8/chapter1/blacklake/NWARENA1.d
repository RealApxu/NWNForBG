// Чернозерье Перчатка Девушка Эта женщина явно в восторге от боя. Она восхищается любым, кто может показать свои способности на арене.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~NWARENA1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Что? С чего бы мне разговаривать с вами? У вас ни одной медальки. Фи!~
  IF ~~ THEN REPLY ~Расскажите мне хотя бы о бойцах.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Новичок желает знать про бойцов? Ха! И зачем же? Чтобы получить звание, сначала нужно победить могучего Храска - только тогда тебя оценят! У Храска огненный топор, знаете? Спалит вам все волосы. Даже самые короткие!~
  IF ~~ THEN REPLY ~Как насчет остальных?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Точно, до свидания. У меня нет времени на тех, кто без медалей. Ну вас.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Уходите. Надоело мне с вами разговаривать, бесполезное ничтожество.~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWArena","GLOBAL",1)Global("NWArena","GLOBAL",2)~ THEN BEGIN 4 // from:
  SAY ~Эй вы! У вас все прекрасно получается! У вас хорошая медаль!~
  IF ~  Global("NWArena","GLOBAL",1)~ THEN REPLY ~Что вы знаете о бойцах?~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",2)~ THEN REPLY ~Что вы знаете о бойцах?~ GOTO 8
  IF ~~ THEN REPLY ~Вы видели множество боев. Они честные?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~С Фаши надо сражаться во втором раунде. Он вроде маленький, да удаленький! Просто потрясающий парень. Его не порежешь и не уколешь! Он всегда такой сосредоточенный. Но частенько он бывает весь в синяках. Я это заметила. Он тоже уязвим.~
  IF ~~ THEN REPLY ~Что насчет третьего раунда?~ GOTO 8
  IF ~~ THEN REPLY ~Вы видели множество боев. Они честные?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~Конечно. То есть, у каждого свое особое умение, но обо всем этом можно узнать еще до боя. Поспрашивайте народ. Кроме Клодуса. У него нет ничего особенного, но его просто невозможно победить. Настолько он силен.~
  IF ~~ THEN REPLY ~Что вы знаете о бойцах?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~Конечно. Увидимся! Удачи. Вы великолепны!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~С Агаром нужно драться за медаль в третьем раунде. Он сильный, у него неплохая броня, ну, как у всех, и еще кое-что нехорошее. У него ядовитое оружие. Сначала люди жаловались, но потом привыкли. Все равно он силен, его здесь ценят.~
  IF ~~ THEN REPLY ~Что насчет Клодуса?~ GOTO 9
  IF ~~ THEN REPLY ~Вы видели множество боев. Они честные?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~Не беспокойтесь об этом. До него вы не доберетесь. Остальные сильны, а Клодус так просто страшен.~
  IF ~~ THEN REPLY ~Вы видели множество боев. Они честные?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 10 // from:
  SAY ~Это вы! Это <CHARNAME>! Я вас люблю! То есть, мне нравится, как вы деретесь! Вы победили Фаши! И самого Агара! Не могу поверить, что говорю с вами. То есть, может, вы привыкли быть этаким новичком без медалей, но сейчас! Только подумать!~
  IF ~~ THEN REPLY ~Что вы знаете о Клодусе?~ GOTO 11
  IF ~~ THEN REPLY ~Уходи, дитя, ты мне мешаешь.~ GOTO 12
  IF ~~ THEN REPLY ~Спасибо. До свидания.~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY ~Клодус? Он, великий, он непобедим! Как... Я не знаю, как кто! Словно он вообще неуязвим! Некоторые жалуются, что он так силен, но они и в подметки ему не годятся. Ведь все честно, так? Он дерется обычным зачарованным оружием без всяких штучек вроде огня или яда. Он, кажется, по натуре супербоец!~
  IF ~~ THEN REPLY ~Уходи, дитя, ты мне мешаешь.~ GOTO 12
  IF ~~ THEN REPLY ~Спасибо. До свидания.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY ~Хмм... Получив медали, начинает нос воротить... Но как он дерется... Это восхитительно!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY ~Спасибо! Он говорит спасибо! Мне! Все слышали?! С ума сойти!~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY ~Невероятно! <CHARNAME> самый лучший! Лучше всех! Это было великолепно!~
  IF ~~ THEN EXIT
END

