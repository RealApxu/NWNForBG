// Снежная сфера  Ходд     Дварф     Этот дварф вооружен и готов к битве.     Строки:
// Я те черепушку-то проломлю! [HODD050]  
// Дварфы за дварфов! [HODD051]     
// Смерть листолюбкам! [HODD052]      
// Эти древожительницы совсем с ума посходили! Они никаких доводов не слушают! [HODD053]  

BEGIN ~HODD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Race(LastTalkedToBy,DWARF)~ THEN BEGIN 0 // from:
  SAY ~А! вы, может, и не из моего клана, но тож дварф, все-таки я думаю, с вами все в порядке. Меня зовут Ходд, я вождь своего клана.~ [HODD055]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я чем-то помочь могу?~
  IF ~~ THEN REPLY ~Почему дриады воюют с вами?~ GOTO 2
  IF ~  OR(3)PartyHasItem("DRACAMU1")PartyHasItem("DRACAMU2")PartyHasItem("DRACAMU3")~ THEN REPLY ~Что вы думаете об этом амулете?~ GOTO 3
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, дварф. Настал твой черед умереть.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Этих листолюбок не урезонишь ведь! Спятили они, это я вам говорю! Нападают, как только видят, магией своей крошат меня и моих ребят! Ну, где-то внутри сердца мне кажется, не стоит на одних дриад все валить. Я своим ребятам этого не говорю, но иногда тут все... странно. Как будто это сон... или ночной кошмар.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Да, хорошенькая вещичка. И вроде бы... знаком он мне. Как будто я его уже когда-то видел. Надпись видите, вон, сзади? Древний язык... хотя я вроде бы слова разбираю: "Дерево и кузница объединились, чтобы сбросить Повелителя."~
  IF ~  PartyHasItem("DRACAMU1")~ THEN GOTO 8
  IF ~  PartyHasItem("DRACAMU2")~ THEN GOTO 9
  IF ~  PartyHasItem("DRACAMU3")~ THEN GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Пусть так. К вашим услугам вся мудрость моего клана, только не знаю я ничего, кроме того, что мы бесконечно воюем с этими распроклятыми древожительницами!~
  IF ~~ THEN REPLY ~Бессмертные? О чем вы говорите?~ GOTO 11
  IF ~~ THEN REPLY ~Почему дриады воюют с вами?~ GOTO 2
  IF ~  OR(3)PartyHasItem("DRACAMU1")PartyHasItem("DRACAMU2")PartyHasItem("DRACAMU3")~ THEN REPLY ~Что вы думаете об этом амулете?~ GOTO 3
  IF ~~ THEN REPLY ~Что это за место? Как этот мир может существовать внутри снежного шара?~ GOTO 12
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Вы отведаете моего боевого молота, прежде чем прикончите меня!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~Да, и удачи вам. Поосторожнее, вы ведь и знать не знаете, где могут сидеть в засаде эти дриады!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~Ну, мерещится мне, как мои ребята дриад убивают и деревья их рубят. Ну вот я и думаю, может мои парни тоже слегка не в себе, как и дриады эти.~
  IF ~~ THEN REPLY ~Вы всегда воевали с дриадами?~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~Этот амулет был выкован для древней магии, только видите, он треснул? Если и была там магия, теперь ее давно уже нет.~
  IF ~~ THEN REPLY ~Вы можете что-нибудь сделать, чтобы исправить это?~ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Амулет починен, с ним все в порядке. Но магии в нем нет, кроме магии великих ремесленников. Его первоначальной силы больше нет.~
  IF ~~ THEN REPLY ~Вы можете вернуть амулету магию?~ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~От этого амулета странные мысли в голову приходят. Это... вызывает сны из далекого прошлого. Ой, теперь я вижу: это время, когда дриады и дварфы заключили союз против жестокого Повелителя.~
  IF ~~ THEN REPLY ~Расскажите мне побольше об этих видениях.~ GOTO 16
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY ~И никогда война не закончится, пока мертвые будут возвращаться обратно. Дриады возрождаются после каждой смерти, и мой народ тоже раз за разом возвращается. Уж и не сосчитать, сколько раз я помирал от заклинаний этих поганых дриад, и каждый раз снова тут появлялся, весь из себя здоровый, к бою готовый. И так раз за разом.~
  IF ~~ THEN REPLY ~Это ужасно!~ GOTO 17
  IF ~~ THEN REPLY ~Вы бессмертны! Вы будете жить вечно.~ GOTO 17
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY ~Снежный шар? Что еще за чушь! Мир - это мир, какой есть, такой есть. С этим уж ничего не поделаешь. А в мире в этом война идет. Бесконечная война с древожительницами и их дурацкой магией!~
  IF ~~ THEN REPLY ~Вы всегда воевали с дриадами?~ GOTO 13
  IF ~  OR(3)PartyHasItem("DRACAMU1")PartyHasItem("DRACAMU2")PartyHasItem("DRACAMU3")~ THEN REPLY ~Что вы думаете об этом амулете?~ GOTO 3
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY ~Нет, я... Думаю, когда-то было по-другому, давным-давно... хотя сейчас уже в памяти одна резня осталась. Но мне иногда странная штука снится: что якобы когда-то дварфы и дриады прям плечом к плечу сражались. Какое-то было время, когда мой клан и листолюбки служили одному Хозяину, вроде как в рабстве были у него.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY ~Ну да, думаю, трещинку залатать мне по силам. Делать нечего, заклинанием его скрепить. Отойдите в сторонку, сейчас магию призывать будем... Ну вот, амулет вроде бы снова цел, только магии в нем не хватает, для полной силы-то.~
  IF ~~ THEN REPLY ~Вы можете вернуть амулету магию?~ DO ~TakePartyItem("Dracamu1")DestroyItem("Dracamu2")GiveItemCreate("Dracamu2",LastTalkedToBy,0,0,0)~GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY ~Ну да, мой клан секреты магии знает, но только ведь это магия огня, кузницы, молота и наковальни. Этот амулет был выкован, чтобы удерживать силу земли и дерева. У дриад такая сила есть, это уж точно. Они могли бы сделать для вас такую штуку. Но ведь они спятили. С ними и говорить-то не стоит, набросятся на вас. Как увидят, так сразу и набросятся. Боюсь, больше я ничего про этот амулет не скажу.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, дварф. Настал твой черед умереть.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY ~Я вижу... тварь. Холодная, прям как зимняя стужа. Повелитель. И еще я вижу... ой, туманно это все... вижу... амулет. Да, Амулет Веков! Выкованный, чтобы убить Повелителя и освободить нас от этого существования. Да, теперь я вспомнил! Дварфы и дриады объединились против общего врага и... не, все исчезает... Повелитель был слишком силен... амулет треснул, магия была потеряна и... и...~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY ~В моем роду трусов нет, только бесконечная война тоже мало кому понравится. Уж так мы от этой магии дриад мучаемся каждый раз, помирая, души наши совсем истерзаны. Да не знаю я, как мы до такого дошли. Жизнь эта какая-то неправильная и.. неестественная, но мы другой не знаем. Война, смерть, возрождение... Нам не спастись от этого.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY ~Но воспоминания эти темные, как тень у меня на сердце. Может и не было ничего такого. Да, правда, кажется, мы всю жизнь с дриадами воевали.~
  IF ~  OR(3)PartyHasItem("DRACAMU1")PartyHasItem("DRACAMU2")PartyHasItem("DRACAMU3")~ THEN REPLY ~Что вы думаете об этом амулете?~ GOTO 3
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY ~Ох, пропало видение. Как будто чья-то грязная магия украла его прямо у меня из головы. Даже лицо Повелителя вспомнить не могу.~
  IF ~~ THEN REPLY ~Может быть я смогу освободить вас от этого Повелителя.~ GOTO 20
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~Мы никакого освобождения не ищем, кроме смерти. Может, если вы убьете Повелителя, мой клан найдет мир... а может этот Повелитель уже помер давно. Я уже забывать начинаю... Не-е, магия слишком сильная. Воспоминания, которые амулет разбудил, пропали: Повелитель, амулет... нет, больше мне сказать нечего.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я пойду. До встречи.~ GOTO 6
END

// -----------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Race(LastTalkedToBy,DWARF)~ THEN BEGIN 21 // from:
  SAY ~Меня Ходд зовут, я в нашем клане главный. Тут у нас такие как вы редко бывают. Но, по крайней мере, вы не нападаете на нас сразу, как видите, как эти сумасшедшие дриады!.~ [HODD056]
  IF ~~ THEN GOTO 1
END

// -----------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 22 // from:
  SAY ~Дык, я и мой клан приветствуем вас.~ [HODD054]
  IF ~  !Dead("NWDraco1")~ THEN GOTO 1
  IF ~  Dead("NWDraco1")~ THEN EXIT
END

