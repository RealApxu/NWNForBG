// Доки Поместье Андрода  Андрод Дварф Этот карлик весь трясется. Похоже, он очень боится, что вы причините ему зло.

BEGIN ~ANDROD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Нет! Пожалуйста! За чем бы вы ни пришли, возьмите, и уходите! Скажите госпоже Офале, что я прошу прощения за беспокойство! Простите!~
  IF ~~ THEN REPLY ~Спокойно, я не причиню вам вреда.~ GOTO 1
  IF ~~ THEN REPLY ~Кто сказал, что я здесь ради Офалы? Кто это?~ GOTO 2
  IF ~~ THEN REPLY ~Да, я здесь из-за Офалы, все так.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Вы открыли мои двери, натоптали тут, и наверняка больны чумой! Вы уже причинили мне вред! Все из-за этой проклятой статуэтки! Не притворяйтесь тупицей и не стройте глазки, мне все ясно. Скажите, что мне жаль, и что больше я ее не побеспокою! Возьмите эту проклятую статуэтку и убирайтесь!~
  IF ~~ THEN REPLY ~Ваши ценности!! Отдавайте!!! БЫСТРО!!!~ GOTO 4
  IF ~~ THEN REPLY ~Где статуэтка, которая ей нужна? Почему она так важна?~ GOTO 5
  IF ~~ THEN REPLY ~Клянусь, она меня сюда не посылала.~ GOTO 6
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Не врите мне! Я знаю! Она давно охотится за этой статуэткой, а теперь появились вы, вор, в моем доме! Конечно, вы от нее! Не притворяйтесь тупицей и не стройте глазки, мне все ясно. Скажите, что мне жаль, и что больше я ее не побеспокою! Возьмите эту проклятую статуэтку и убирайтесь!~
  IF ~~ THEN REPLY ~Ваши ценности!! Отдавайте!!! БЫСТРО!!!~ GOTO 4
  IF ~~ THEN REPLY ~Где статуэтка, которая ей нужна? Почему она так важна?~ GOTO 5
  IF ~~ THEN REPLY ~Клянусь, она меня сюда не посылала.~ GOTO 6
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ну конечно! Я бы не поверил, если бы вы стали это отрицать. Она давно охотится за этой статуэткой, а теперь появились вы, разбойник в моем доме! Не притворяйтесь тупицей и не стройте глазки, мне все ясно. Скажите, что мне жаль, и что больше я ее не побеспокою! Возьмите эту проклятую статуэтку и убирайтесь!~
  IF ~~ THEN REPLY ~Ваши ценности!! Отдавайте!!! БЫСТРО!!!~ GOTO 4
  IF ~~ THEN REPLY ~Где статуэтка, которая ей нужна? Почему она так важна?~ GOTO 5
  IF ~~ THEN REPLY ~Клянусь, она меня сюда не посылала.~ GOTO 6
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Везде! Это мой дом! Здесь где-то есть ключ! Он открывает все двери! ТОЛЬКО НЕ ТРОНЬТЕ МЕНЯ!!!~
  IF ~~ THEN REPLY ~Где статуэтка, которая ей нужна? Почему она так важна?~ GOTO 5
  IF ~~ THEN REPLY ~Клянусь, Офала меня сюда не посылала.~ GOTO 6
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Если вы не от нее, я ничего вам не скажу. А если от нее, она сама бы вам сказала, если бы сочла нужным. Достаточно сказать, что если вы пригласите мадам из Маски Лунного Камня на бал, нужно быть очень осторожным, чтобы не уйти оттуда с ее сестрой. Никакие предметы искусства не спасут вашу шкуру от ее гнева. Забирайте. Статуэтка в шкафу, рядом со мной, там же и ключ от большинства замков.~
  IF ~~ THEN REPLY ~Ваши ценности!! Отдавайте!!! БЫСТРО!!!~ GOTO 4
  IF ~~ THEN REPLY ~Клянусь, она меня сюда не посылала.~ GOTO 6
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Неважно. Вы или специально пришли за статуэткой, или вы вор, и все равно ее заберете. В любом случае, для меня все, наконец, закончится.~
  IF ~~ THEN REPLY ~Ваши ценности!! Отдавайте!!! БЫСТРО!!!~ GOTO 4
  IF ~~ THEN REPLY ~Где статуэтка, которая ей нужна? Почему она так важна?~ GOTO 5
  IF ~~ THEN REPLY ~Я ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Берите, что хотите. Только не трогайте меня. Мне никто здесь не нужен, и я не хочу, чтобы Офала и дальше продолжала доставать меня! Где-то здесь был ключ, отпирающий почти все замки... Или просто сломайте все двери, мне плевать. Только меня не трогайте!~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 8 // from:
  SAY ~Что? Кто... ? Негодяй! Убирайтесь!~
  IF ~~ THEN EXIT
END

