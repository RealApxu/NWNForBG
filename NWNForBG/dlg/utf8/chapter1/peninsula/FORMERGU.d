// Полуостров Первый этаж тюрьмы Бывший стражник   Этого стражника захватили заключенные, которых он когда-то охранял. Кажется, они его еще и избили.

BEGIN ~FORMERGU~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Вы ведь не из моих палачей, верно? Нет, тогда бы мне запомнилось ваше лицо.~
  IF ~~ THEN REPLY ~Вы кто - заключенный или стражник?~ GOTO 1
  IF ~~ THEN REPLY ~Стоять! Откуда я знаю, что вам можно доверять?~ GOTO 2
  IF ~~ THEN REPLY ~Расслабьтесь - ведь я вас на свободу выпустил, а?~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ну, вообще-то я *бывший* стражник... так было, пока главный надзиратель не перевернул все с ног на голову. Видите, я на стороне хороших парней, ясно?~
  IF ~~ THEN REPLY ~Тогда мне может пригодиться информация.~ GOTO 4
  IF ~~ THEN REPLY ~Думаете, сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Посмотрите на меня, у меня нет оружия. А умей я пользоваться магией, меня бы здесь не было давным-давно... Зовут меня командир Ральстон, понятно?~
  IF ~~ THEN REPLY ~Тогда мне может пригодиться информация.~ GOTO 4
  IF ~~ THEN REPLY ~Думаете, сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я ж не знаю, может вы из них и пришли забрать меня вниз... Кстати, я  - командир Ральстон. Бывший начальник этого этажа.~
  IF ~~ THEN REPLY ~Тогда мне может пригодиться информация.~ GOTO 4
  IF ~~ THEN REPLY ~Думаете, сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Ладно, но чем скорее я попаду домой к семье, тем счастливее я буду.~
  IF ~~ THEN REPLY ~Во-первых, как вы оказались в этой камере?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы знаете о заключенных?~ GOTO 8
  IF ~~ THEN REPLY ~Есть предложения относительно того, что нам теперь делать?~ GOTO 9
  IF ~~ THEN REPLY ~Ладно, хватит вопросов. Сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Не знаю, но попытаюсь. Думаю, если бы можно было до нее быстро добраться, проще всего было бы выйти через главную дверь. Я думаю, сейчас, наверное, тюрьма окружена ополчением.~
  IF ~~ THEN REPLY ~Пока вы не ушли, не могли бы вы поделиться со мной кое-какой информацией.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Да, <SIRMAAM>! Пожелайте мне удачи.~
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~Трудно сказать. Как-то вечером, главный надзиратель просто спустился вниз и открыл дверь в казематы. Он вошел туда, а все заключенные сразу же вышли оттуда. Бой продолжался несколько дней, а теперь все стражники захвачены в плен... или еще хуже.~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 10
  IF ~~ THEN REPLY ~А главный надзиратель?~ GOTO 11
  IF ~~ THEN REPLY ~Что вы знаете о заключенных?~ GOTO 8
  IF ~~ THEN REPLY ~Есть предложения относительно того, что нам теперь делать?~ GOTO 9
  IF ~~ THEN REPLY ~Ладно, хватит вопросов. Сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~Вы имеете в виду бывших заключенных? Они жестоки и мстительны. Когда они пришли, мы совершенно не были готовы к этому. На моих глазах погибли десятки друзей. Это было ужасно, <SIRMAAM>! Нескольких стражей они бросили в казематы. Сказали, что главному надзирателю... как будто он собирается съесть их, или что-то вроде того!~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 10
  IF ~~ THEN REPLY ~Есть предложения относительно того, что нам теперь делать?~ GOTO 9
  IF ~~ THEN REPLY ~Ладно, хватит вопросов. Сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY ~Не знаю, как вы, но я направляюсь домой, к жене и детям. А это жуткое место хорошо бы сжечь, вот что я скажу.~
  IF ~~ THEN REPLY ~Как вы оказались в этой камере?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы знаете о заключенных?~ GOTO 8
  IF ~~ THEN REPLY ~Ладно, хватит вопросов. Сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~Туда мы бросаем заключенных, с которыми не можем справиться. Там, внизу, каждый за себя.~
  IF ~~ THEN REPLY ~А главный надзиратель?~ GOTO 11
  IF ~~ THEN REPLY ~Что вы знаете о заключенных?~ GOTO 8
  IF ~~ THEN REPLY ~Есть предложения относительно того, что нам теперь делать?~ GOTO 9
  IF ~~ THEN REPLY ~Ладно, хватит вопросов. Сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~Собственно, он до сих пор там, внизу. Заключенные называют его своим королем. Если вы спросите меня, я скажу, что Воющая Смерть просто свела его с ума...~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 10
  IF ~~ THEN REPLY ~Что вы знаете о заключенных?~ GOTO 8
  IF ~~ THEN REPLY ~Есть предложения относительно того, что нам теперь делать?~ GOTO 9
  IF ~~ THEN REPLY ~Ладно, хватит вопросов. Сможете уйти отсюда в одиночку?~ GOTO 5
  IF ~~ THEN REPLY ~Ладно, тогда давайте выбираться отсюда. Дорога расчищена.~ GOTO 6
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",0)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Похоже, всех остальных заключенных испугала битва. Что бы вы ни сделали, спасибо вам. Вы спасли нескольких оставшихся стражей. Теперь меня здесь ничто не держит. Я иду домой, к моей семье. Если бы вы не вычистили это место, мне бы захотелось его поджечь.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~Удачи вам, больше мне нечего сказать.~
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

