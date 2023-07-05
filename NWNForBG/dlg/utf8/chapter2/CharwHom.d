// Чарвуд, дом - обыватель мужчина Люди из этого городка выглядят вполне здоровыми, но что-то с ними не так. Их взгляд устремлен куда-то вдаль, и, кажется, ни у кого из них нет никаких дел. Они не работают и не занимаются коммерцией. Все они апатичны, и печать отчаяния лежит на их лицах.

BEGIN ~CHARWHOM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Зачем вы явились в мой дом?~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY ~Мы уже виделись. Вы не помните?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Вы вломились в мой дом и надоедаете мне своими дурацкими вопросами? Как будто у меня и без вас не достаточно проблем.~
  IF ~~ THEN REPLY ~У вас тут что, какие-то неприятности?~ GOTO 4
  IF ~~ THEN REPLY ~Что вы можете мне сказать о Чарвуде?~ GOTO 5
  IF ~~ THEN REPLY ~Я разыскиваю культ, который вызвал чуму в Невервинтере.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Нет сомнений, что мы уже миллион раз виделись, только вот я этого не помню. У нас и без вас забот хватает.~
  IF ~~ THEN REPLY ~У вас тут что, какие-то неприятности?~ GOTO 4
  IF ~~ THEN REPLY ~Что вы можете мне сказать о Чарвуде?~ GOTO 5
  IF ~~ THEN REPLY ~Я разыскиваю культ, который вызвал чуму в Невервинтере.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Как хотите. Я не могу остановить вас...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~У меня забрали моего ребенка, а всем в этом городе на это наплевать, вот что больше всего меня мучает! Я ничего не могу сделать. Этот Квинт Джарег забрал моего сына, а что я могу сказать? Ничего! И мэр тоже не может ничего сказать поперек... О нем все забыли. Он и Карлат были братьями и лордами этого места до того, как мы оказались... заперты здесь. Некогда он был жрецом Латандера...~
  IF ~~ THEN REPLY ~Кто такой Карлат?~ GOTO 7
  IF ~~ THEN REPLY ~Может быть, я смогу помочь?~ GOTO 14
  IF ~~ THEN REPLY ~У меня есть еще несколько вопросов...~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Это проклятое место. А если кто скажет, что это не так, значит он сам и сделал его проклятым. И Карлата Джарега это тоже касается.~
  IF ~~ THEN REPLY ~Кто такой Карлат?~ GOTO 7
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 9
  IF ~~ THEN REPLY ~Есть в этом городе важные персоны?~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Невер-что? В Чарвуде это ничего не значит. Мы все забыты. В этой деревне вы не найдете того, что вам нужно. Да и мы тоже, похоже... Карлат Джарег может знать про то, что вам нужно, да только ему наплевать на вас и на меня... и на все остальное.~
  IF ~~ THEN REPLY ~Кто такой Карлат?~ GOTO 7
  IF ~~ THEN REPLY ~У вас тут что, какие-то неприятности?~ GOTO 4
  IF ~~ THEN REPLY ~Что вы можете мне сказать о Чарвуде?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~Карлат Джарег? Он был волшебником, и очень могущественным. Мы думали, что Чарвуд будет в безопасности у подножия его замка. Какими же мы были дураками, правда...~
  IF ~~ THEN REPLY ~Где я могу найти этот замок?~ GOTO 11
  IF ~~ THEN REPLY ~Что тут случилось?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть еще несколько вопросов...~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~Вы вломились в мой дом и надоедаете мне своими дурацкими вопросами? Как будто у меня и без вас не достаточно проблем.~
  IF ~~ THEN REPLY ~Что вы можете мне сказать о Чарвуде?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~Не такой судьбы мы хотели выгадать, но виноваты сами. Мы поселились у ног демонов, вон как... хотели быть в безопасности... навсегда... Поговорите с мэром, он вам не скажет. Поговорите с нами, мы вам не скажем. Никто из нас не может сказать... никто не может положить этому конец... это все продолжается и продолжается...~
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 12
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY ~Нет здесь важных персон. Ни мэр, ни я - ничего не значим. Может, Квинт, но он сумасшедший. Может, вы, но вы не понимаете. Может, Карлат, кто знает?~
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 12
  IF ~~ THEN REPLY ~Кто такой Карлат?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY ~Это на дальнем конце деревни, за крепостной стеной. Если хотите пойти туда, идите, но там не ждет вас ничего, кроме смерти, бесконечной смерти.~
  IF ~~ THEN REPLY ~Что тут случилось?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть еще несколько вопросов...~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY ~Он в мэрии, в центре деревни... По крайней мере, он был там, сколько мы себя помним, а это совсем не долго...~
  IF ~~ THEN REPLY ~Что тут случилось?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть еще несколько вопросов...~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY ~Снова и снова по кругу со своими дурацкими вопросами? Как будто у меня и без вас не достаточно проблем.~
  IF ~~ THEN REPLY ~У вас тут что, какие-то неприятности?~ GOTO 4
  IF ~~ THEN REPLY ~Что вы можете мне сказать о Чарвуде?~ GOTO 5
  IF ~~ THEN REPLY ~Я разыскиваю культ, который вызвал чуму в Невервинтере.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 4.2
  SAY ~Никто не говорил, что это ваше дело. Вы спросили и получили ответ, но сюда вас никто не звал. Лорды Джареги делают, что хотят, и бес побери, мы все виноваты в том, что происходит в замке! Мы все виноваты!~
  IF ~~ THEN REPLY ~Где я могу найти этот замок?~ GOTO 11
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 15
  IF ~~ THEN REPLY ~Хватит. Мне все равно.~ GOTO 16
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY ~Нет, я не скажу... Я не скажу... Я не хочу, чтобы об этом стало известно... Это может повторяться до бесконечности... а я не хочу, чтобы это стало известно...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY ~Всем наплевать. Полагаю, такова уплаченная нами цена. Всем наплевать, и это никогда не кончается... и я не позволю, чтобы об этом стало известно...~
  IF ~~ THEN EXIT
END
