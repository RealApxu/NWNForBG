// Полуостров Капитан-привратник Кипп   Это красиво одетый и аккуратный капитан городской стражи. Он так же устал, как и его подчиненные. Чума высосала силы из всех.

BEGIN ~KIPP~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Если вы отправляетесь на полуостров, будьте осторожны. Из тамошней тюрьмы сбежали заключенные, и там очень неспокойно.~
  IF ~~ THEN REPLY ~Как им удалось бежать?~ GOTO 1
  IF ~~ THEN REPLY ~Где эта тюрьма?~ GOTO 2
  IF ~~ THEN REPLY ~Остались ли еще безопасные районы?~ GOTO 3
  IF ~~ THEN REPLY ~У ополчения есть план атаки?~ GOTO 4
  IF ~~ THEN REPLY ~Спасибо, что предупредили.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ходят слухи, что Капитан Элейфин, главный надзиратель, выпустил их. По мне так полнейшая чушь - он всегда был хорошим человеком и держал всех в строгости...~
  IF ~~ THEN REPLY ~Где эта тюрьма?~ GOTO 2
  IF ~~ THEN REPLY ~Остались ли еще безопасные районы?~ GOTO 3
  IF ~~ THEN REPLY ~У ополчения есть план атаки?~ GOTO 4
  IF ~~ THEN REPLY ~Спасибо, что предупредили.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~На северо-восток отсюда, на вершине холма. Оттуда прекрасный вид на гавань... но заключенным никогда его не увидеть.~
  IF ~~ THEN REPLY ~Как им удалось бежать?~ GOTO 1
  IF ~~ THEN REPLY ~Остались ли еще безопасные районы?~ GOTO 3
  IF ~~ THEN REPLY ~У ополчения есть план атаки?~ GOTO 4
  IF ~~ THEN REPLY ~Спасибо, что предупредили.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Седос Себил стоит во главе операции. Заключенные доставляли ей немало хлопот, но ей удалось отстоять штаб-квартиру. Это в центре района, к северо-востоку отсюда.~
  IF ~~ THEN REPLY ~Как им удалось бежать?~ GOTO 1
  IF ~~ THEN REPLY ~Где эта тюрьма?~ GOTO 2
  IF ~~ THEN REPLY ~У ополчения есть план атаки?~ GOTO 4
  IF ~~ THEN REPLY ~Спасибо, что предупредили.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Сейчас все просто пытаются разузнать, что же происходит. Кого-то точно посадят в эту самую тюрьму, в самую дальнюю камеру.~
  IF ~~ THEN REPLY ~Как им удалось бежать?~ GOTO 1
  IF ~~ THEN REPLY ~Где эта тюрьма?~ GOTO 2
  IF ~~ THEN REPLY ~Остались ли еще безопасные районы?~ GOTO 3
  IF ~~ THEN REPLY ~Спасибо, что предупредили.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Не благодарите меня, а идите и поговорите с Седос Себил в штаб-квартире. Вы можете очень помочь нам разобраться с тем, что заварил главный надзиратель...~
  IF ~  GlobalLT("SedosQuest","GLOBAL",2)~ THEN UNSOLVED_JOURNAL ~Полуостров: Бунт в тюрьме

В городской тюрьме на полуострове разгорелся бунт заключенных. Капитан-привратник Кипп советовал поговорить с Седос Себил, чтобы определить лучший способ проникнуть в здание тюрьмы и помочь подавить бунт. Ее штаб-квартира расположена в юго-восточной части квартала.~ EXIT
  IF ~  GlobalGT("SedosQuest","GLOBAL",1)~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Фффуух, ну и денек! Я очень рад, что в истории с этим побегом, наконец-то, разобрались.~
  IF ~~ THEN REPLY ~Есть тут хорошие магазины?~ GOTO 7
  IF ~~ THEN REPLY ~Где я могу поблизости подлечиться?~ GOTO 8
  IF ~~ THEN REPLY ~Хорошо, страж ворот, я пойду.~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Послушайте, людям не нравится даже жить рядом с этой тюрьмой, не то, что тратить здесь деньги! Нет ужаснее места для торговца, чем это, понимаете?~
  IF ~~ THEN REPLY ~Где я могу поблизости подлечиться?~ GOTO 8
  IF ~~ THEN REPLY ~Хорошо, страж ворот, я пойду.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY ~Один из этих хельмитов раздавал свои благословения где-то на востоке района, но потом начался весь этот кошмар. Может, он все еще там.~
  IF ~~ THEN REPLY ~Есть тут хорошие магазины?~ GOTO 7
  IF ~~ THEN REPLY ~Хорошо, страж ворот, я пойду.~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY ~Ну что же, ладно. Но не попадайте в неприятности.~
  IF ~~ THEN EXIT
END

