// Лускан Кузница Смит Дварф Этот хмурый кузнец смотрит мрачно, будто его совершенно не интересует ничто из происходящего вокруг.

BEGIN ~SMITHNW1~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~Да? У меня осталось мало припасов... и совсем не хватает металла для кузницы. Выкладывайте, что хотели, или уходите.~
  IF ~~ THEN REPLY ~Чем торгуем?~ GOTO 1
  IF ~~ THEN REPLY ~Можно посмотреть, что у вас есть?~ GOTO 2
  IF ~~ THEN REPLY ~Могу я задать вам пару вопросов?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Когда-то у меня был лучший арсенал в Лускане. А вот теперь мне пришлось обустроить здесь магазин со всякой... остатками, в общем. Я продам, что у меня есть, а то придут эти негодяи и все заберут у меня, а то и у моего трупа.~
  IF ~~ THEN REPLY ~Можно посмотреть, что у вас есть?~ GOTO 2
  IF ~~ THEN REPLY ~Могу я задать вам пару вопросов?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Да. Смотрите, но ничего не трогайте... Это все самого лучшего качества.~
  IF ~~ THEN DO ~StartStore("Smithnw1",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Я не в настроении отвечать на ваши вопросы. Надоедайте кому-нибудь еще, раз вы не собираетесь ничего покупать.~
  IF ~~ THEN REPLY ~Чем торгуем?~ GOTO 1
  IF ~~ THEN REPLY ~Можно посмотреть, что у вас есть?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Да, тогда идите и оставьте меня в покое.~
  IF ~~ THEN EXIT
END

