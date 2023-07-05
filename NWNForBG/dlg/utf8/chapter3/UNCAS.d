// Форт Илкард логово орков, Ункас Челвек_Утгарт Метки на одежде этого мужчины говорят о том, что он - шаман племени Лосей из Утгардта.

BEGIN ~UNCAS~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~Я Ункас, шаман племени Лосей Утгардта. Спасибо, что за спасение. Мне подвластны целительные силы, которые теперь в твоем распоряжении. Тебе нужно Исцеление?~
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 1
  IF ~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN REPLY ~Племя Лосей заключило союз с Лусканом и теперь является врагом Невервинтера!~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы исцеления.~ GOTO 3
  IF ~~ THEN REPLY ~Мне ничего не нужно. Ты можешь идти, если хочешь.~ GOTO 4
  IF ~~ THEN REPLY ~Это не спасение, лосеночек! Пора тебе на тот свет!~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Мой народ, племя Лося, гибнет от ужасной эпидемии, охватившей в свое время Невервинтер. Мой вождь, Зокан Громовержец, послал меня попробовать найти лекарство. Но меня схватил Гузуд со своей бандой орков. Возможно, это случилось несколько недель назад, не знаю, я не видел солнечного света с того самого дня. Я могу хоть чем-то тебе отплатить за свое спасение?~
  IF ~~ THEN REPLY ~Зачем Гузуд схватил тебя, если племя Лосей и Лускан союзники?~ GOTO 2
  IF ~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN REPLY ~Племя Лосей заключило союз с Лусканом и теперь является врагом Невервинтера!~ GOTO 2
  IF ~  Dead("Zokan")~ THEN REPLY ~Зокан Громовержец мертв, племя Лосей больше не существует.~ GOTO 7
  IF ~~ THEN REPLY ~Мне хотелось бы исцеления.~ GOTO 3
  IF ~~ THEN REPLY ~Мне ничего не нужно. Ты можешь идти, если хочешь.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Племя Лося не союзник Лускана! По крайней мере, не было, когда я уходил. Но меня не было слишком долго. Но Зокан никогда не пошел бы на союз с Лусканом. Если только... возможно, Лускан предложил лекарство, которое избавит мой народ от эпидемии. Возможно, в отчаянии Зокан объединился с ними, чтобы спасти племя.~
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 1
  IF ~  Dead("Zokan")~ THEN REPLY ~Зокан Громовержец мертв, племя Лосей больше не существует.~ GOTO 7
  IF ~~ THEN REPLY ~Мне хотелось бы исцеления.~ GOTO 3
  IF ~~ THEN REPLY ~Мне ничего не нужно. Ты можешь идти, если хочешь.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я использую все мои медицинские знания, чтобы исцелить тебя как следует.~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Я вернусь к своему племени, людям Лося. Еще раз благодарю за спасение.~
  IF ~~ THEN DO ~AddexperienceParty(30000)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Пусть сила Лося наполнит мои заклинания!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Мой народ, племя Лося, гибнет от ужасной эпидемии, охватившей в свое время Невервинтер. Мой вождь, Зокан Громовержец, послал меня попробовать найти лекарство. Но меня схватил Гузуд со своей бандой орков. Возможно, это случилось несколько недель назад, не знаю, я не видел солнечного света с того самого дня. Я могу хоть чем-то тебе отплатить за свое спасение?~
  IF ~~ THEN REPLY ~Зачем Гузуд схватил тебя, если племя Лосей и Лускан союзники?~ GOTO 6
  IF ~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN REPLY ~Племя Лосей заключило союз с Лусканом и теперь является врагом Невервинтера!~ GOTO 2
  IF ~  Dead("Zokan")~ THEN REPLY ~Зокан Громовержец мертв, племя Лосей больше не существует.~ GOTO 7
  IF ~~ THEN REPLY ~Мне хотелось бы исцеления.~ GOTO 3
  IF ~~ THEN REPLY ~Мне ничего не нужно. Ты можешь идти, если хочешь.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Нет, не может быть! Мое племя, мои люди, они все мертвы? Как такое могло случиться? Прошу, оставь меня. Их души бродят по пустыням другого мира, я должен молить богов, чтобы мое племя обрело, наконец, покой. Прости, но ради моего народа я должен уйти немедленно.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

