// Порт Акведуки Харон   Один из тех немногих, кого чума не коснулась. Во всяком случае, не коснулась физически. Этот человек выглядит несколько... неуравновешенным.
// Стринг над головой - Лодка готова, как всегда. Новая - аж блестит. Готова ко всему... (вздыхает) Эххх, я спустил свою жизнь в канализацию.

BEGIN ~CHARON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~В наши дни в канализации больше людей, чем отбросов. Э-э-э... но это же не канализация. Нет, <SIRMAAM>! Акведуки! Чистые и аккуратные! Пожалуйста, прости мое смятение. Я все никак не привыкну к этой новой программе украшения города, которую начал городской совет. Ее лучшие стороны, похоже, заключаются в том, чтобы давать всему новые красивые имена.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Знаешь, канализация стала акведуками, отходы стали избыточными ресурсами, а моя чудная работа в замке теперь называется "гид-экскурсовод" по этой ЧЕРТОВОЙ КАНАЛИЗАЦИИ! Я, МАТЬ ИХ, БОЛЬШЕ НЕ ЗОЛОТАРЬ!~
  IF ~~ THEN REPLY ~Тут еще кто-нибудь проходил недавно?~ GOTO 2
  IF ~~ THEN REPLY ~Куда ведут эти акведуки?~ GOTO 3
  IF ~~ THEN REPLY ~Ты можешь отвезти меня вниз по течению?~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5

END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Ну что ж, я видел несколько групп людей, которые отправились вниз по течению. Мне это показалось немного странным, но они меня не побеспокоили. Сначала прошел один мужик, вроде как сам по себе. Старикан такой, и платье у него богатое. Мне показалось, он знал, куда идет. Потом тут прошла целая толпа громил, было похоже на то, что они задумали - кровавое дело. Впрочем, они не были так уж уверены, куда идти.~
  IF ~~ THEN REPLY ~Куда ведут эти акведуки?~ GOTO 3
  IF ~~ THEN REPLY ~Ты можешь отвезти меня вниз по течению?~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Ну, они там внизу соединяются со старой канализацией. Там раньше были склады, но город их не использует уже много-много лет. Район разросся, и проход к этим старым подземельям застроили. Мало кто знает расположение старых тоннелей. Впрочем, временами я слышу там внизу голоса.~
  IF ~~ THEN REPLY ~Тут еще кто-нибудь проходил недавно?~ GOTO 2
  IF ~~ THEN REPLY ~Ты можешь отвезти меня вниз по течению?~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Нет, я не могу оставить свой пост. В любой момент может возникнуть непредвиденная ситуация и тогда понадобится моя квалификация. ТАКОЕ МОЖЕТ СЛУЧИТЬСЯ! Я могу тебя отправить в одиночку. Это не опасно. Во всяком случае, мне так кажется. Скажи только слово - и можешь плыть.~
  IF ~~ THEN REPLY ~Отправь меня вниз по течению.~ GOTO 6
  IF ~~ THEN REPLY ~Тут еще кто-нибудь проходил недавно?~ GOTO 2
  IF ~~ THEN REPLY ~Куда ведут эти акведуки?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Ты точно не хочешь задержаться? Я тут нашел кое-что на закусь. Они похожи на маленькие сосисочки. А... ладно, до встречи.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Да, <SIRMAAM>, с удовольствием! Поехали.~
  IF ~~ THEN DO ~ClearAllActions()SaveGame(2)SmallWait(5)StartCutSceneMode()StartCutScene("Sewerage")~ EXIT
END

// ------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~О, да ты опять тут? Есть такие люди, их хлебом не корми, дай только влезть в канализацию. Акведуки! Я имел в виду акведуки! Ничего похожего на канализацию! Нет, <SIRMAAM>!~
  IF ~~ THEN REPLY ~Тут еще кто-нибудь проходил недавно?~ GOTO 2
  IF ~~ THEN REPLY ~Куда ведут эти акведуки?~ GOTO 3
  IF ~~ THEN REPLY ~Ты можешь отвезти меня вниз по течению?~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

// ------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Ну, думаю, теперь все войдет в обычную колею. Только я и канализация. Акведуки! Я хотел сказать акведуки! Чистые и аккуратные! Именно так!~
  IF ~~ THEN EXIT
END

