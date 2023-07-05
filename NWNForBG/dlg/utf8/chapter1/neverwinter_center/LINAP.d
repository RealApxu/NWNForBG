BEGIN ~LINAP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~Ты проявил себя совершенно аморальной личностью. Какое счастье, что я ухожу.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("LinaEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~О, друг мой, неужели это правда? Но я не могу отдать тебе назад деньги. Ты точно хочешь чтобы мы расстались?~
  IF ~~ THEN REPLY ~Да. Иди.~ GOTO 1
  IF ~~ THEN REPLY ~Нет. Останься.~ DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Тогда мне стоит подождать тебя, пока я тебе опять не понадоблюсь. Пожалуйста, не уходи надолго. Будь поосторожнее, <CHARNAME>. Где мы можем встретиться, если ты передумаешь?~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~Возвращайся на ярмарку мечей.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Lina",[603.220])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Я найду тебя в казармах Кендрака.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Lina",[668.390])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("LinaOut","GLOBAL",1)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("LinaEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Я надеялась, что ты вернешься, так что ждала тут. Мне удалось почти ничего не повредить, так что я думаю, тебе можно мной гордиться. Могу ли я присоединиться к тебе вновь, друг мой?~ [LINA060]
  IF ~~ THEN REPLY ~Да.~ GOTO 3
  IF ~~ THEN REPLY ~Нет.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Я попробую вновь вдохнуть жизнь в тебя и твой поход.~
  IF ~~ THEN DO ~SetGlobal("LinaOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~(Вздыхает) Тогда я буду ждать здесь твоего возвращения.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY ~O! Я надеялась, что ты объявишься здесь, друг мой. Я слышала, что Арибет призвала тебя, чтобы покарать тот злобный культ, который ответственен за чуму.~ [LINA053]
  IF ~~ THEN REPLY ~Лину, вот приятный сюрприз.~ GOTO 39
  IF ~~ THEN REPLY ~Мне казалось, мы разошлись. Зачем ты ходишь за мной?~ GOTO 40
  IF ~~ THEN REPLY ~До свидания.~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~Я думала, что мы разделились насовсем, но у богини есть собственные планы, которым мне должно следовать. Я вернулась на Ярмарку Мечей, чтобы приготовиться к путешествию домой. Я побыла там всего несколько часов, как вдруг ко мне подошла леди Арибет по поручению самого лорда Нашера. ~
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY ~Ты, безусловно, знаешь, как польстить себе, но я к тебе не присоединюсь. У меня есть собственные причины и цели для присутствия здесь. Я вернулась на Ярмарку Мечей, чтобы приготовиться к путешествию домой. Я побыла там всего несколько часов, как вдруг ко мне подошла леди Арибет по поручению самого лорда Нашера. ~
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY ~Если ты вдруг обнаружишь, что слишком много времени уходит на лечение в храмах, можешь вернуться и нанять меня. Удачи тебе.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY ~Она сказала мне, что лорд Нашер намерен выяснить, где находится культ, который принес столько страданий городу. Он приказал всем наемникам прибыть в Порт-Лласт и присоединиться к поискам. Я боялась, что мы с тобой разминулись, когда я переодевалась.~
  IF ~~ THEN REPLY ~Переодевалась?~ GOTO 43
  IF ~~ THEN REPLY ~Я хочу, чтобы ты опять ко мне присоединилась.~ GOTO 44
  IF ~~ THEN REPLY ~До свидания.~ GOTO 41
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY ~О, как только я пришла в местную таверну, официантка пролила какие-то напитки.~
  IF ~~ THEN REPLY ~Она промочила твою одежду?~ GOTO 45
  IF ~~ THEN REPLY ~Ты разозлилась на нее?~ GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY ~О, я так взволнована шансом выступить с тобой в очередной поход. Я последую за тобой и сделаю все возможное, подчиняясь приказом, отданным тобой.~
  IF ~~ THEN DO ~SetGlobal("LinaEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("LinaReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY ~Ну... нет. Я налетела на нее, а когда посыпались кружки, я отскочила назад, налетела на гнома и сбила эль и прочее спиртное с его стола.~
  IF ~~ THEN REPLY ~Таким образом, твой костюм был испорчен?~ GOTO 46
  IF ~~ THEN REPLY ~Мне кажется, ситуация ясна.~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY ~Ээээ, нет, еда и выпивка упали на пол, а вот гном налетел на полуорка, и его ножик, которым тот ел, пропорол гному щеку. Вот тогда и началась драка.~
  IF ~~ THEN REPLY ~Ты порвала свою одежду в драке?~ GOTO 47
  IF ~~ THEN REPLY ~Несчастья преследуют тебя, не так ли?~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY ~Нет, мне удалось остаться в стороне от драки, я спряталась под столом и мне было ужасно стыдно. Когда драка закончилась, я помогла прибраться.~
  IF ~~ THEN REPLY ~Так значит, ты запачкалась при уборке?~ GOTO 48
  IF ~~ THEN REPLY ~Пожалуйста, расскажи мне, как ты так запачкалась.~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY ~Я надела передник и в общем-то осталась довольно чистой. Но вот потом я пошла на улицу подышать воздухом и поскользнулась в луже. Вот тогда и пришлось переодеваться.~
  IF ~~ THEN REPLY ~Почему ты просто не сказала мне, что поскользнулась в луже, с самого начала?~ GOTO 49
  IF ~~ THEN REPLY ~Думаю, надо отправиться куда-нибудь еще. Может быть, в логово дракона, там точно безопаснее.~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY ~Я... Я не хотела, чтобы создалось впечатление, что я неуклюжая. Я жду здесь приказов леди Арибет.~
  IF ~~ THEN REPLY ~Так ты работаешь на Арибет?~ GOTO 51
  IF ~~ THEN REPLY ~Мне часто бывает нужен кто-нибудь с умением исцеления. Присоединяйся.~ GOTO 52
  IF ~~ THEN REPLY ~Извини, но меня это не интересует. До свидания.~ GOTO 41
END

IF ~~ THEN BEGIN 50 // from: 48.2
  SAY ~О, пожалуйста, не уходи прямо сейчас. Я не хотела отпугнуть тебя.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY ~Лорд Нашер приказал всем наемникам собраться в Порт-Лласте, чтобы помочь обнаружить местонахождение культа, который почти уничтожил город.~
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 53
  IF ~~ THEN REPLY ~Если ты и правда хочешь привлечь их к ответственности, чего ты здесь ждешь?~ GOTO 54
  IF ~~ THEN REPLY ~Мне часто бывает нужен кто-нибудь с умением исцеления. Присоединяйся.~ GOTO 52
  IF ~~ THEN REPLY ~Извини, но меня это не интересует. До свидания.~ GOTO 41
END

IF ~~ THEN BEGIN 52 // from: 49.2
  SAY ~С моим великим удовольствием. Я с нетерпением ожидаю наших совместных приключений. Я последую за тобой и сделаю все возможное, подчиняясь приказом, отданным тобой.~
  IF ~~ THEN DO ~SetGlobal("LinaEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("LinaReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY ~Я не слышала ничего особенного про этот культ, но до меня дошел слух, что началась какая-то суматоха в лесу Невервинтер. Я многого не знаю, но, кажется, в городе появился следопыт, который говорит, что в этом лесу животные начали свирепо атаковать всех, кто заходит в чащобу или даже путешествует рядом с лесом.~
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 51.2
  SAY ~Я вообще-то не такой уж и следователь. Мне приказано отправиться в путешествие с теми, кто будет нуждаться в целителе. Это у тебя получается разрешать загадки. Хотя я бы с радостью помогла тебе. У меня большие способности в искусстве исцеления, и кроме того, я могу постоять за себя в бою. Я буду ценным спутником в твоем походе.~
  IF ~~ THEN REPLY ~Мне часто бывает нужен кто-нибудь с умением исцеления. Присоединяйся.~ GOTO 52
  IF ~~ THEN REPLY ~Извини, но меня это не интересует. До свидания.~ GOTO 41
END

IF ~~ THEN BEGIN 55 // from: 53.1
  SAY ~Поскольку им не удалось уничтожить нас, наслав эту ужасную болезнь, я бы не удивилась, узнав, что культ заразил чумой диких животных. Чем еще я могу помочь тебе?~
  IF ~~ THEN REPLY ~Ты планируешь добраться туда?~ GOTO 54
  IF ~~ THEN REPLY ~А чего ты ждешь здесь? Тебе вроде бы надо заниматься расследованием?~ GOTO 54
  IF ~~ THEN REPLY ~До свидания.~ GOTO 41
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",1)~ THEN BEGIN 59 // from:
  SAY ~Привет еще раз, <CHARNAME>. Надеюсь, ты меня помнишь. Я Лину Ла'нерал, клерик Сеханин Мунбоу. Я просто жду, пока не появится кто-нибудь, кому я могла бы помочь привлечь к ответственности этих распространителей чумы.~ [LINA055]
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 53
  IF ~~ THEN REPLY ~Если ты и правда хочешь привлечь их к ответственности, чего ты здесь ждешь?~ GOTO 54
  IF ~~ THEN REPLY ~Мне часто бывает нужен кто-нибудь с умением исцеления. Присоединяйся.~ GOTO 52
  IF ~~ THEN REPLY ~Извини, но меня это не интересует. До свидания.~ GOTO 41
END

