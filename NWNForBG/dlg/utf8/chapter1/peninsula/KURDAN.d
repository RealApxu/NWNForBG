// Полуостров Казематы   Курдан Фенкт полуорк   Этот могучий представитель породы полуорков готов к драке... любой драке.

//Да, господин. Мы ждем их здесь. [KURDAN50]

// Рррр... Вы умеете сражаться. Я сдаюсь. [KURDAN51]

BEGIN ~KURDAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Так вы охотитесь за главным надзирателем, а? Знаете, что вас ждет?~ [KURDAN52]
  IF ~~ THEN REPLY ~Такой же человек, как все остальные, может, чума свела его с ума.~ GOTO 1
  IF ~~ THEN REPLY ~Собственно, я надеюсь, что это одно из уотердипских существ.~ GOTO 2
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Воющая Смерть? Нет. Главный надзиратель, он больше не человек, только скорлупка от человека. Что-то сожрало его мозг изнутри. Оно смотрит его глазами и делает его... другим.~
  IF ~~ THEN REPLY ~А у вас есть доказательства?~ GOTO 5
  IF ~~ THEN REPLY ~Тогда что же находится в нем? Вы это видели?~ GOTO 6
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Хррр, я про это ничего не знаю. Знаю только, что он не человек, просто скорлупа. Что-то ест его мозг изнутри, смотрит его глазами и делает его другим.~
  IF ~~ THEN REPLY ~А у вас есть доказательства?~ GOTO 5
  IF ~~ THEN REPLY ~Тогда что же находится в нем? Вы это видели?~ GOTO 6
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я Курдан Фенкт. Я был королем казематов, пока главный надзиратель не спустился сюда. Теперь он - король, а я только его лакей. Хрр...~
  IF ~~ THEN REPLY ~И вы позволили главному надзирателю взять верх над всеми вами? Как это случилось?~ GOTO 8
  IF ~~ THEN REPLY ~Вы были королем пустоты - здесь ничего нет.~ GOTO 9
  IF ~~ THEN REPLY ~Главный надзиратель просто заболел Воющей Смертью, вот и все.~ GOTO 10
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хррр. Тогда вы не достойны того, чтобы я вам сдавался. Если я умру, я умру, как король казематов. Давай!~
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Почему он освободил стражников? Почему он превращает стражников в зомби? Почему он просил меня охранять его с тыла? Почему? Да потому, что он больше не Элейфин.~
  IF ~~ THEN REPLY ~Стражников в зомби? О чем вы говорите?~ GOTO 11
  IF ~~ THEN REPLY ~Тогда что же находится в нем? Вы это видели?~ GOTO 6
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Да, я его видел. Оно маленькое, размером с собаку, и пахнет тухлятиной. Головы нет, только открытый мозг. Наверное, поэтому ему так нравится жрать мозги.~
  IF ~~ THEN REPLY ~Похоже на уотердипского мозгоеда, который нужен Арибет.~ GOTO 12
  IF ~~ THEN REPLY ~А у вас есть доказательства?~ GOTO 5
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~Хрр, я здесь не останусь. Если главный надзиратель убьет вас, он поймет, что я сдался вам, и съест за это мой мозг. Я не хочу. Вам надо сразиться с ним. И поговорить со стражниками, чтобы они ушли, и мозгоед не смог перепрыгнуть в них. Да, сделайте это. А я убираюсь отсюда.~
  IF ~~ THEN DO ~AddexperienceParty(20000)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~Он может превращать людей в зомби. Даже стражников. И меня тоже грозил превратить..~
  IF ~~ THEN REPLY ~Стражников в зомби? О чем вы говорите?~ GOTO 11
  IF ~~ THEN REPLY ~Вы были королем пустоты - здесь ничего нет.~ GOTO 9
  IF ~~ THEN REPLY ~Главный надзиратель просто заболел Воющей Смертью, вот и все.~ GOTO 10
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Казематы - это то, что ты из них сделаешь. Лучше быть королем казематов, чем вообще не королем... Много ли королей вы знаете?~
  IF ~~ THEN REPLY ~И вы позволили главному надзирателю взять верх над всеми вами? Как это случилось?~ GOTO 8
  IF ~~ THEN REPLY ~Главный надзиратель просто заболел Воющей Смертью, вот и все.~ GOTO 10
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~Воющая Смерть? Нет. Главный надзиратель, он больше не человек, только скорлупка от человека. Что-то сожрало его мозг изнутри. Оно смотрит его глазами и делает его... другим.~
  IF ~~ THEN REPLY ~А у вас есть доказательства?~ GOTO 5
  IF ~~ THEN REPLY ~Тогда что же находится в нем? Вы это видели?~ GOTO 6
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Вы скоро встретитесь с ними. Они там, в его логове, защищают его. Кормят его. Он сказал, что и из меня то же сделает, если я не буду служить ему...~
  IF ~~ THEN REPLY ~Как ужасно. Есть какой-нибудь способ спасти их?~ GOTO 13
  IF ~~ THEN REPLY ~Тогда что же находится в нем? Вы это видели?~ GOTO 6
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Я об этом ничего не знаю. Я только знаю, что главный надзиратель был сильный, а если эта мозговая тварь его захватила, значит, она сильнее, так что она очень опасна...~
  IF ~~ THEN REPLY ~А у вас есть доказательства?~ GOTO 5
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY ~Ха! Может, вы сможете им втолковать. Поговорите с ними, и тогда не будет места, куда эта тварь сможет перебраться. Она очень быстро вселяется в людей. Да, может и так. Поговорите с людьми, пусть они уйдут. А еще лучше убить эту тварь внутри главного надзирателя, да побыстрее.~
  IF ~~ THEN REPLY ~Тогда что же находится в нем? Вы это видели?~ GOTO 6
  IF ~~ THEN REPLY ~Кто вы и почему помогаете главному надзирателю?~ GOTO 3
  IF ~~ THEN REPLY ~Ты не стоишь того, чтобы тратить на тебя время. Умри, негодяй!~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, оставайтесь здесь, а я пойду к главному надзирателю.~ GOTO 7
END

