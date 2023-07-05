//  Астральный карман  Хэдралин   Человекоящер  Haedrali

BEGIN ~HAEDRAL3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~**Ш-ш-ш** Вижу ты все еще живо, теплокровное. **Ш-ш-ш** Я боялась, что ты исчезло вместе с Мораг и остальными Древними, когда исчез Камень-Источник.~ [HAERD171]
  IF ~~ THEN REPLY ~Что это за место, Хэдралин? Как мне удалось здесь очутиться?~ GOTO 1
  IF ~~ THEN REPLY ~Камень-Источник исчез? Что это значит?~ GOTO 1
  IF ~~ THEN REPLY ~Снова ты? Что тебе нужно на этот раз?~ GOTO 1
  IF ~~ THEN REPLY ~Мне не терпится вернуться в свой мир, Хэдралин.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Когда была уничтожена Мораг, была уничтожена и ее магия. **Ш-ш-ш** Мир, созданный ею, Камень-Источник, рухнул в небытие, и все, кто там находился, исчезли навеки. **Ш-ш-ш**~ [HAERD173]
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY ~Ты сделало все, о чем я просила тебя, теплокровное. **Ш-ш-ш** Мораг побеждена, магия Слов силы разрушена. **Ш-ш-ш**~ [HAERD191]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Я использовала свою магию, чтобы открыть портал из рушащегося Камня в этот астральный карман, временное убежище между тем миром и твоим домом. **Ш-ш-ш** Я рада, что тебе удалось найти этот портал и спастись, теплокровное.~ [HAERD174]
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~Раса Созидателей никогда больше не вернется, а я никогда больше не буду рабыней Слова. **Ш-ш-ш** Ты можешь в любой момент покинуть этот астральный мир, приняв мою благодарность. Портал позади меня перенесет тебя в твой мир.~ [HAERD192]
  IF ~~ THEN DO ~SetGlobal("NW_Final_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~**Ш-ш-ш** Мое время здесь подходит к концу. Слова Власти уничтожены, и моя магия слабеет. **Ш-ш-ш** Скоро я покончу с этим существованием, и этот астральный карман тоже исчезнет.~ [HAERD175]
  IF ~~ THEN REPLY ~Покончишь с этим существованием? Ты умираешь?~ GOTO 6
  IF ~~ THEN REPLY ~Значит, все кончено? Невервинтер снова в безопасности?~ GOTO 7
  IF ~~ THEN REPLY ~Мне не терпится вернуться в свой мир, Хэдралин.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~Время расы Созидателей прошло. **Ш-ш-ш** Теперь в твоем мире мне места нет, как нет места и Мораг. Я смирилась с этим, теплокровное.~ [HAERD176]
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~Ты столкнулось в бою с Мораг и Древними. Победа осталась за тобой. **Ш-ш-ш** Даже древняя магия черной королевы не смогла противостоять твоей силе.~ [HAERD177]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Ты спасло Невервинтер, теплокровное. Но это далеко не все. **Ш-ш-ш** Тебе удалось изменить судьбу не только своего мира, но и тысячи других, которые захватили бы войска Мораг.~ [HAERD178]
  IF ~~ THEN REPLY ~Это был мой долг.~ GOTO 9
  IF ~~ THEN REPLY ~Наверное, теперь все должны преклоняться перед моим несравненным величием.~ GOTO 10
  IF ~~ THEN REPLY ~За все, что мне пришлось сделать, можно было и получше меня отблагодарить.~ GOTO 10
  IF ~~ THEN REPLY ~Мне не терпится вернуться в свой мир, Хэдралин.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~Очень немногие способны были противостоять силе Мораг и выжить. **Ш-ш-ш** Но хотя тебе удалось нейтрализовать угрозу расы Созидателей, твоя работы еще не закончена. Мне удалось мельком увидеть судьбу, что тебя ждет.~ [HAERD179]
  IF ~  Alignment(Player1,MASK_EVIL)~ THEN GOTO 11
  IF ~  Alignment(Player1,MASK_GOOD)~ THEN GOTO 12
  IF ~  Alignment(Player1,MASK_GENEUTRAL)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY ~**Ш-ш-ш** Ты говоришь самоуверенно, но в твоих словах есть правда.~ [HAERD190]
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY ~Я отметила твою злобную натуру, теплокровное. **Ш-ш-ш** Ты жаждешь богатства и власти. Ты хочешь господствовать над всеми и уничтожить тех, кто откажется склониться пред тобой. **Ш-ш-ш**~ [HAERD180]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY ~Ты герой севера, борешься против любого проявления зла. **Ш-ш-ш** Держись того пути, что считаешь верным, и твоя доблесть не подведет тебя, когда наступит время величайшего испытания.~ [HAERD183]
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY ~Твоя слава будет расти, и о тебе узнают по всему северу. **Ш-ш-ш** Но Мораг - не самый сильный враг, с которым тебе придется встретиться в жизни. **Ш-ш-ш** Ты станешь могущественнее, но станут могущественнее и те, кто захотят тебя уничтожить.~ [HAERD188]
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY ~Послушай меня внимательно, теплокровное. Ты не так уж сильно отличаешься от моего народа. Или даже от самой Мораг. **Ш-ш-ш** По мере того, как будет расти дурная слава о тебе, будет расти и сила, и убеждения тех, кто восстанет против тебя.~ [HAERD181]
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY ~Город Невервинтер все еще уязвим, и есть другие враги, которые хотят уничтожить его. И тебя. **Ш-ш-ш** Злые силы объединятся против тебя, так как твое имя стало символом добра и справедливости.~ [HAERD184]
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY ~Многие будут пытаться лишить тебя того, ради чего ты так трудилось, и некоторые постараются добыть себе славу, попробовав уничтожить тебя. **Ш-ш-ш** Твои враги объединятся. Они нанесут удар, когда ты меньше всего этого ожидаешь. **Ш-ш-ш** Такова цена славы и богатства.~ [HAERD189]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY ~Герои будут бросать вызов твоей тирании, как ты однажды бросило вызов Мораг. **Ш-ш-ш** Копи свои силы и собирай войска, ибо тебе понадобится любая помощь, чтобы победить тех, кто решит тебя свергнуть.~ [HAERD182]
  IF ~~ THEN REPLY ~Кто же эти выскочки, что посмеют бросить мне вызов?~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY ~Больше я не могу ничего сказать. Моя магия слабеет после уничтожения Слов силы. Туманы времени застилают мне глаза.~ [HAERD185]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY ~Быстрее, теплокровное. Больше я не могу поддерживать этот астральный карман. *Ш-ш-ш** Портал позади меня вернет тебя в твой мир.~ [HAERD186]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~Благодарю тебя за все, что ты для меня сделало. Я никогда больше не буду рабыней Слова. Ш-ш-ш** Войди в портал, чтобы я наконец смогла обрести долгожданный вечный покой.~ [HAERD187]
  IF ~~ THEN DO ~SetGlobal("NW_Final_Quest","GLOBAL",1)~ EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 21 // from:
  SAY ~ Зачем ты вернулось, теплокровное? **Ш-ш-ш** моя магия больше не может поддерживать этот астрал. Тебе нужно возвращаться через портал в свой мир. Тогда я смогу спокойно покончить с этим  существованием.~ [HAERD171]
  IF ~~ THEN REPLY ~Что это за место, Хэдралин? Как мне удалось здесь очутиться?~ GOTO 1
  IF ~~ THEN REPLY ~Покончишь с этим существованием? Ты умираешь?~ GOTO 6
  IF ~  Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Расскажи мне о своем видении моего будущего.~ GOTO 11
  IF ~  Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Расскажи мне о своем видении моего будущего.~ GOTO 12
  IF ~  Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY ~Расскажи мне о своем видении моего будущего.~ GOTO 13
  IF ~~ THEN REPLY ~Мне не терпится вернуться в свой мир, Хэдралин.~ GOTO 2
END

