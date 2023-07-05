// Колодец Беорунна: храм Тира Священник Ньюрик       m3q01a01igla - диалог прокурора  Игланд Быстрый Меч. Я прокурор

BEGIN ~NEURIK2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Приветствую вас, <CHARNAME>. Это я, Ньюрик. Помните меня? Я служил в церкви Тира в Порт-Лласте, до тех пор, пока Аарин Генд не попросил меня приехать и возглавить храм здесь, у Колодца Беорунна.~
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY ~Я помню, Ньюрик. Приятно видеть тебя снова.~ GOTO 1
  IF ~~ THEN REPLY ~Извините, Ньюрик, я не помню вас.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я удивлен, что вы помните меня, <CHARNAME>, учитывая все ваши проблемы. Лусканский культ, предательство Арибет... Этого достаточно для того, чтобы забыть собственное имя, не говоря уже обо всех остальных! Честно говоря, я едва узнал вас, великий герой Невервинтера. У меня возникла проблема, решение которой отнимает у меня все силы.~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Может быть, я помогу вам разобраться с этой проблемой.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Думаю, меня это не должно удивлять. У вас, наверное, много забот, <CHARNAME>, этот культ в Лускане, предательство Арибет и все прочее. Честно говоря, я едва узнал вас, великий герой Невервинтера. У меня возникла проблема, решение которой отнимает у меня все силы.~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Может быть, я помогу вам разобраться с этой проблемой.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Храм Тира никогда не откажет мольбам просящих в нужде. Да пребудет с тобой его божественная милость и его благословение.~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Я предоставлю вам возможность осмотреть все, что  у меня есть.~
  IF ~~ THEN DO ~StartStore("Neurik",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Я не знаю. Дело очень деликатное. Недавно дикарь из племени утгардтов по имени Ролган убил одного из солдат Союза Лордов. Он утверждает, что это была самозащита, и мне пришлось предоставить ему убежище, чтобы спасти от мести друзей солдата. ~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Да пребудет с тобой благословение Тира.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Но Ролган не может оставаться в храме вечно. Я пытаюсь организовать справедливое судебное заседание, но его утгардтские друзья незнакомы с нашей судебной системой... и, конечно же, ни один из наемников Союза Лордов не хочет защищать его во время суда.~
  IF ~~ THEN REPLY ~Может быть, я смогу быть защитником Утгардтского воина.~ GOTO 8
  IF ~~ THEN REPLY ~Я могу представлять интересы Утгардта... но не бесплатно.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Это щедрое предложение. И, как жрец Тира, я прослежу, чтобы тебе выплатили достойную компенсацию, это, конечно, зависит от той защиты, которую ты представишь в суде. Как следует все обдумав, я выбрал присяжных. В суде присяжных будет двое, представляющих интересы Утгардтов, двое, представляющие интересы наемников и мой послушник Эдегар. Мне кажется, это единственный способ обеспечить справедливое решение.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY ~Те, кто служит делу Справедливости, будет вознагражден. Если не самим Тиром, то его жрецами. Если твоя защита будет достойной, я прослежу, чтобы тебе выплатили соответствующую компенсацию. Как следует все обдумав, я выбрал присяжных. В суде присяжных будет двое, представляющих интересы Утгардтов, двое, представляющие интересы наемников и мой послушник Эдегар. Мне кажется, это единственный способ обеспечить справедливое решение.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~Если вы согласитесь заняться этим делом, я расскажу о деталях. Или вам нужно еще что-то?~
  IF ~~ THEN REPLY ~Я сделаю это.~ GOTO 11
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY ~Возьмите этот блокнот. В нем содержится информация о присяжных и свидетелях, а также детали дела и сам иск. Поскольку вы представляете Тира, вам необходимо сохранить этот блокнот и фиксировать в нем все новые аспекты этого дела. Я могу вкратце рассказать вам все, что записано в этом блокноте. Для начала имена присяжных: наемник по имени Аверик, следопыт по имения Дальсия, солдат, которого зовут Джевон, Утгардтская знахарка Палла, и, разумеется, мой прислужник Эдегар.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~Ты можешь поговорить с каждым из присяжных до начала судебного заседания. Это обычная практика в подобных случаях. Следопыта и Паллу ты сможешь найти в Утгардтском лагере. Остальные находятся здесь, в зданиях, предназначенных для членов Союза Лордов.~
  IF ~~ THEN REPLY ~А что насчет свидетелей?~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~Прокурор рассказал мне, что он собирается допрашивать двух наемников, которые были свидетелями этого происшествия - Зеда и Лодара. Он также собирается вызвать Ванду, жену обвиняемого. Я думаю, вам стоит поговорить с этим людьми до начала судебного заседания, чтобы собрать все возможные свидетельства.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~И, разумеется, есть сам Утгардт, его зовут Ролган. Он не обязан давать показания, но если вы вызовете его для этого, прокурор также сможет задать ему вопросы. Он находится в задней части храма, если вы решите поговорить с ним.~
  IF ~~ THEN REPLY ~Я начну расследование прямо сейчас.~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~Ролган рассчитывает, что вам удастся узнать правду. Когда у вас будет вся необходимая информация, возвращайтесь ко мне и тогда мы сможем начать заседание.~
  IF ~~ THEN DO ~SetGlobal("RolgansTrial","GLOBAL",1)GiveItemCreate("Nwbook53",LastTalkedToBy,0,0,0) ~ UNSOLVED_JOURNAL ~Суд над Ролганом

Ньюрику, клерику из храма Тира, нужен кто-то, кто смог бы защищать на суде Ролгана, дикаря-утгардта, обвиняемого в убийстве. В судебной книге описаны все подробности этого дела, включая имена всех свидетелей и присяжных, с которыми нужно переговорить, чтобы как следует подготовиться к защите. Когда вы будете готовы к тому, чтобы начать процесс, поговорите с Ньюриком в храме Тира.~ EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("RolgansTrial","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY ~Ах да... здравствуй еще раз, <CHARNAME>. Добро пожаловать в храм бога справедливости. Простите меня, если я кажусь несколько... расстроенным. Будущий суд над Ролганом слегка выбил меня из колеи.~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Может быть, я помогу вам разобраться с этой проблемой.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",1)!PartyHasItem("Nwbook53")~ THEN BEGIN 17 // from:
  SAY ~А, <CHARNAME> - вижу, вы уже вернулись. Но... где же ваша судебная книга? Вы согласились защищать Ролгана, а без этой книги никто не признает в вас судебного офицера! Пожалуйста, Я знаю, что у вас много других забот. Но если вы хотите принять участие в процессе над Ролганом, вы должны все время держать эту книгу при себе.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~Перед тем, как начнется процесс над Ролганом, не могу ли я что-нибудь сделать для вас, <CHARNAME>?~
  IF ~~ THEN REPLY ~Можно мне получить еще один экземпляр книги?~ GOTO 19
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY ~Конечно, <CHARNAME>. Вот вам еще один экземпляр книги. Помните, вы все время должны держать ее при себе в качестве символа власти Тира. Без нее никто не признает в вас судебного офицера.~
  IF ~~ THEN DO ~GiveItemCreate("Nwbook53",LastTalkedToBy,0,0,0)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",1)PartyHasItem("Nwbook53")~ THEN BEGIN 20 // from:
  SAY ~Ах да... здравствуй еще раз, <CHARNAME>. Добро пожаловать в храм бога справедливости.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~Простите меня, если я кажусь несколько ... расстроенным. Приговор по делу Ролгана создал больше проблем, чем решил.~
  IF ~  Global("RolgansTrial","GLOBAL",5)~ THEN REPLY ~Что за проблемы?~ DO ~SetGlobal("RolgansTrial","GLOBAL",6)~ GOTO 23
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY ~Простите меня, если я кажусь несколько... расстроенным. Будущий суд над Ролганом слегка выбил меня из колеи.~
  IF ~  GlobalGT("MemberDied","GLOBAL",0)~ THEN REPLY ~Расследование завершено, я могу приступать к заседанию по делу Ролгана.~ GOTO 24
  IF ~  Global("MemberDied","GLOBAL",0)~ THEN REPLY ~Расследование завершено, я могу приступать к заседанию по делу Ролгана.~ GOTO 25
  IF ~~ THEN REPLY ~Суд?~ GOTO 26
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY ~Я благодарен вам за помощь в деле Ролгана, <CHARNAME>. Это не та проблема, которую можно решить быстро и безболезненно.~
  IF ~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN GOTO 27
  IF ~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY ~Дело Ролгана было отложено в связи со смертью одного из участников. Однако в этом деле все равно должна восторжествовать справедливость Тира, поэтому я объявил всем, что заседание все равно состоится... хотя, могут пройти месяцы прежде, чем я буду готов возобновить процесс.~
  IF ~~ THEN DO ~SetGlobal("RolgansTrial","GLOBAL",7)EraseJournalEntry(%Суд над Ролганом

Ньюрику, клерику из храма Тира, нужен кто-то, кто смог бы защищать на суде Ролгана, дикаря-утгардта, обвиняемого в убийстве. В судебной книге описаны все подробности этого дела, включая имена всех свидетелей и присяжных, с которыми нужно переговорить, чтобы как следует подготовиться к защите. Когда вы будете готовы к тому, чтобы начать процесс, поговорите с Ньюриком в храме Тира.%)~ SOLVED_JOURNAL ~Суд над Ролганом

Смерть одного из фигурантов вынудила перенести судебный процесс над Ролганом. К тому времени, как Ньюрик возобновит его, могут пройти месяцы. Будет лучше, если все, кто принимал участие в расследовании этого дела, займутся поисками Слов Власти.~ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY ~Это точно, <LADYLORD>? Как только заседание начнется, вы уже ничего не сможете сделать, его нельзя закончить преждевременно, или Ролган будет казнен.~
  IF ~~ THEN REPLY ~Все готово. Можно начинать.~ GOTO 30
  IF ~~ THEN REPLY ~На самом деле, мне все еще нужно время, чтобы подготовиться.~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY ~Не говорите, что не помните, <CHARNAME>! Ведь вы дали обещание защищать Ролгана на суде. Я понимаю, вам много о чем приходится думать, но на кону жизнь человека. Вся информация об этом деле в блокноте, который вы носите с собой. Итак, вам нужно что-нибудь еще?~
  IF ~  GlobalGT("MemberDied","GLOBAL",0)~ THEN REPLY ~Расследование завершено, я могу приступать к заседанию по делу Ролгана.~ GOTO 24
  IF ~  Global("MemberDied","GLOBAL",0)~ THEN REPLY ~Расследование завершено, я могу приступать к заседанию по делу Ролгана.~ GOTO 25
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY ~Даже, несмотря на то, что Ролган был справедливо осужден, среди Утгардтов нашлись те, кто считает, что все было подстроено. После вынесения приговора напряжение в отношениях между солдатами и Утгардтами постоянно растет. Надеюсь только, все не станет еще хуже. Но вряд ли кто-то может хоть что-то сделать с этим. Итак, я могу помочь вам еще чем-нибудь, <CHARNAME>?~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 28 // from: 23.2
  SAY ~Даже несмотря на то, что Ролгана оправдали, среди солдат Союза Лордов нашлись те, кто считает, что он виновен в убийстве и заслуживает смерти. После вынесения приговора напряжение в отношениях между солдатами и Утгардтами постоянно растет. Надеюсь только, все не станет еще хуже. Но вряд ли кто-то может хоть что-то сделать с этим. Итак, я могу помочь вам еще чем-нибудь, <CHARNAME>?~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 29 // from: 24.1
  SAY ~Если хотите, вы можете продолжить свое расследование, но я сомневаюсь, что вы будете здесь, когда мы, наконец, закроем это дело. Я всегда могу найти нового адвоката, когда буду готов продолжать рассмотрение. А вам лучше заняться поиском Слов Власти для Аарина Генда. Я могу сделать для вас что-нибудь еще, <CHARNAME>?~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 25.1
  SAY ~Отлично. Я знаю, что все стороны, участвующие в процессе, заинтересованы в решении этого дела. Я дам слово прокурору и остальным участникам заседания. Правила подобных разбирательств достаточно просты. Присяжные выслушают свидетелей, прокурора и защитника и поднимут мечи и факелы, которые я им дал, чтобы признать подсудимого виновным или невиновным.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY ~Ролган рассчитывает, что вам удастся узнать правду. Когда у вас будет вся необходимая информация, возвращайтесь ко мне и тогда мы сможем начать заседание. Я могу сделать для вас что-нибудь еще, <CHARNAME>?~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY ~Если присяжный решит, что обвиняемый виновен, он возьмет в правую руку меч, это символизирует неотвратимый удар правосудия. Если присяжный решит, что обвиняемый невиновен, он поднимет факел, что символизирует свет правды, который воссиял над этим судебным заседанием. Так же, как колеблется мнение присяжных, их инструменты могут быть применены или нет. Присяжный, который не принял решения, не станет поднимать ни меча, ни факела. Чтобы Ролгана отпустили, трое присяжных должны будут поднять факелы.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~То, что началось, не будет завершено до тех, пор, пока не восторжествует справедливость. Если процесс будет прерван или закончится до вынесения приговора, обвиняемый будет автоматически признан виновным, вне зависимости от решения присяжных. Это понятно?~
  IF ~~ THEN REPLY ~Я понимаю. Трое или больше присяжных должны поднять факел, тогда Ролгана оправдают. И если я закончу разговор до того, как все решится, Ролган пострадает.~ GOTO 35
  IF ~~ THEN REPLY ~Я могу еще раз послушать правила?~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY ~Правила подобных разбирательств достаточно просты. Присяжные выслушают свидетелей, прокурора и защитника и поднимут мечи и факелы, которые я им дал, чтобы признать подсудимого виновным или невиновным.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY ~Теперь, когда мы все в сборе, можно начинать заседание суда. Помни, если вы покинете заседание до вынесения приговора, Ролган погибнет.~
  IF ~~ THEN DO ~SetGlobal("RolgansTrial","GLOBAL",2)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolgansTrial","GLOBAL",5)~ THEN BEGIN 36 // from:
  SAY ~Ах да... здравствуй еще раз, <CHARNAME>. Добро пожаловать в храм бога справедливости.~
  IF ~~ THEN REPLY ~Мне нужно исцеление.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось купить кое-что.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 37 // from: IGLAND2 1.1
  SAY ~Игланд, я очень многое тебе прощал на протяжении этого заседания. Но ты находишься слишком близко к грани дозволенного!~
  IF ~~ THEN EXTERN ~IGLAND2~ 2
END

IF ~~ THEN BEGIN 38 // from: IGLAND2 5.1
  SAY ~Игланд, не вынуждай меня.~
  IF ~~ THEN EXTERN ~IGLAND2~ 6
END

IF ~~ THEN BEGIN 39 // from: IGLAND2 5.1
  SAY ~Игланд! Подобные комментарии неуместны! Верования Утгардтов могут отличаться от наших, но мы сейчас судим не их! Пожалуйста, <CHARNAME>, продолжайте.~
  IF ~~ THEN REPLY ~У меня больше нет вопросов к Ванде.~ EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 40 // from: IGLAND3 6
  SAY ~<CHARNAME>, вы можете произнести свою заключительную речь.~
  IF ~~ THEN REPLY ~Свидетели обвинения не видели, кто начал драку, так что мы должны принять заявление Ролгана о том, что это была самозащита.~ EXTERN ~IGLAND3~ 7
END

IF ~~ THEN BEGIN 41 // from: IGLAND3 7
  SAY ~Игланд! Тихо.~
  IF ~~ THEN REPLY ~Ролган был пьян и, совершенно очевидно, не может отвечать за свои действия.~ EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф подмешал что-то в выпивку Ролгана, и это явилось причиной его неразумных поступков.~ EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф жульничал при игре в карты, он увидел Ролгана и напал на него, испугавшись, что Ролган все понял.~ EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY ~Семейные ценности, которые забрал Грифф, являлись религиозными артефактами для Племени Черного Льва.~ EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY ~Ролган здесь лишь потому, что он житель Утгардта. Не позволяйте своим расистским предрассудкам одержать верх над здравым смыслом.~ EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY ~Защита закончила свое выступление.~ GOTO 47
END

IF ~~ THEN BEGIN 42 // from: IGLAND3 9
  SAY ~Игланд, ты уже все сказал!~
  IF ~~ THEN REPLY ~Мы знаем, что Грифф был жестоким человеком, ненавидящим народ Утгардта. Возможно, он сам начал драку.~ EXTERN ~IGLAND3~ 8
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф подмешал что-то в выпивку Ролгана, и это явилось причиной его неразумных поступков.~ EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф жульничал при игре в карты, он увидел Ролгана и напал на него, испугавшись, что Ролган все понял.~ EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY ~Семейные ценности, которые забрал Грифф, являлись религиозными артефактами для Племени Черного Льва.~ EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY ~Ролган здесь лишь потому, что он житель Утгардта. Не позволяйте своим расистским предрассудкам одержать верх над здравым смыслом.~ EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY ~Защита закончила свое выступление.~ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: IGLAND3 10
  SAY ~Я предупреждаю тебя, Игланд!~
  IF ~~ THEN REPLY ~Мы знаем, что Грифф был жестоким человеком, ненавидящим народ Утгардта. Возможно, он сам начал драку.~ EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY ~Ролган был пьян и, совершенно очевидно, не может отвечать за свои действия.~ EXTERN ~IGLAND3~ 9
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф жульничал при игре в карты, он увидел Ролгана и напал на него, испугавшись, что Ролган все понял.~ EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY ~Семейные ценности, которые забрал Грифф, являлись религиозными артефактами для Племени Черного Льва.~ EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY ~Ролган здесь лишь потому, что он житель Утгардта. Не позволяйте своим расистским предрассудкам одержать верх над здравым смыслом.~ EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY ~Защита закончила свое выступление.~ GOTO 47
END

IF ~~ THEN BEGIN 44 // from: IGLAND3 11
  SAY ~Меня уже тошнит от этих никому не нужных замечаний, Игланд.~
  IF ~~ THEN REPLY ~Мы знаем, что Грифф был жестоким человеком, ненавидящим народ Утгардта. Возможно, он сам начал драку.~ EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY ~Ролган был пьян и, совершенно очевидно, не может отвечать за свои действия.~ EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф подмешал что-то в выпивку Ролгана, и это явилось причиной его неразумных поступков.~ EXTERN ~IGLAND3~ 10
  IF ~~ THEN REPLY ~Семейные ценности, которые забрал Грифф, являлись религиозными артефактами для Племени Черного Льва.~ EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY ~Ролган здесь лишь потому, что он житель Утгардта. Не позволяйте своим расистским предрассудкам одержать верх над здравым смыслом.~ EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY ~Защита закончила свое выступление.~ GOTO 47
END

IF ~~ THEN BEGIN 45 // from: IGLAND3 12
  SAY ~Сейчас не время для подобных комментариев, Игланд!~
  IF ~~ THEN REPLY ~Мы знаем, что Грифф был жестоким человеком, ненавидящим народ Утгардта. Возможно, он сам начал драку.~ EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY ~Ролган был пьян и, совершенно очевидно, не может отвечать за свои действия.~ EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф подмешал что-то в выпивку Ролгана, и это явилось причиной его неразумных поступков.~ EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф жульничал при игре в карты, он увидел Ролгана и напал на него, испугавшись, что Ролган все понял.~ EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY ~Ролган здесь лишь потому, что он житель Утгардта. Не позволяйте своим расистским предрассудкам одержать верх над здравым смыслом.~ EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY ~Защита закончила свое выступление.~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: IGLAND3 13
  SAY ~Умерь свой сарказм, Игланд. <CHARNAME> имеет право произнести свою заключительную речь без твоих ехидных комментариев!~
  IF ~~ THEN REPLY ~Мы знаем, что Грифф был жестоким человеком, ненавидящим народ Утгардта. Возможно, он сам начал драку.~ EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY ~Ролган был пьян и, совершенно очевидно, не может отвечать за свои действия.~ EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф подмешал что-то в выпивку Ролгана, и это явилось причиной его неразумных поступков.~ EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY ~Грифф жульничал при игре в карты, он увидел Ролгана и напал на него, испугавшись, что Ролган все понял.~ EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY ~Семейные ценности, которые забрал Грифф, являлись религиозными артефактами для Племени Черного Льва.~ EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY ~Защита закончила свое выступление.~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: IGLAND3 7.7
  SAY ~Тогда, как представитель Тира, следящего за этим процессом, я приступаю к объявлению вердикта. Да свершится правосудие, во имя света истины Тира!~
  IF ~  GlobalGT("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",2)~ THEN GOTO 49
  IF ~  GlobalGT("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",1)~ THEN GOTO 50
  IF ~  Global("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",2)~ THEN GOTO 50
  IF ~  Global("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",1)~ THEN GOTO 52
  IF ~  GlobalGT("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",0)~ THEN GOTO 52
  IF ~  Global("Justification","GLOBAL",1)Global("ToAcquitted","GLOBAL",2)~ THEN GOTO 52
  IF ~  Global("ToAcquitted","GLOBAL",2)GlobalLT("Justification","GLOBAL",1)~ THEN GOTO 54
  IF ~  Global("ToAcquitted","GLOBAL",1)GlobalLT("Justification","GLOBAL",2)~ THEN GOTO 54
  IF ~  Global("ToAcquitted","GLOBAL",0)GlobalLT("Justification","GLOBAL",3)~ THEN GOTO 54
END

IF ~~ THEN BEGIN 48 // from: VAND 18
  SAY ~Суд не будет просто так терпеть ваши обвинения, юная леди. Ваш муж находится здесь из-за того, что он убил человека! Не забудьте, именно Храм Тира дал Ролгану убежище! <CHARNAME>, в будущем вам стоит посоветовать своему клиенту не называть больше членов суда расистами во время заседания. Это может плохо кончиться. Пожалуйста, продолжайте.~
  IF ~  Global("VandJob","GLOBAL",2)Global("WandaAnswers","LOCALS",0)~ THEN REPLY ~Расскажите мне, почему вы послали своего мужа к Гриффу.~ DO ~SetGlobal("WandaAnswers","LOCALS",1)~ EXTERN ~VAND~ 16
  IF ~  GlobalGT("VandJob","GLOBAL",0)~ THEN REPLY ~Расскажите мне о том, что значили для вас фамильные ценности, которые проиграл ваш муж.~ DO ~SetGlobal("WandaAnswers","LOCALS",1)~ EXTERN ~VAND~ 17
  IF ~~ THEN REPLY ~У меня больше нет вопросов к Ванде.~ EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY ~Приговор понятен, единогласно - пять к нулю за освобождение. Ролган, ты можешь идти, все остальные также свободны. Суд благодарит вас за ваше время. Игланд, ты выполнил свою работу. Предлагаю тебе уйти, пока я не отметил где-нибудь твое отвратительное поведение во время этого заседания. Ты позоришь священные залы этого Храма!~
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",5)SetGlobal("RolganAcquitted","GLOBAL",1)AddexperienceParty(160000)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 47.3
  SAY ~Приговор понятен, четыре против одного за освобождение. Ролган, ты можешь идти, все остальные также свободны. Суд благодарит вас за ваше время.~
  IF ~~ THEN EXTERN ~IGLAND3~ 14
END

IF ~~ THEN BEGIN 51 // from: IGLAND3 14
  SAY ~Игланд, ты выполнил свою работу. Предлагаю тебе уйти, пока я не отметил где-нибудь твое отвратительное поведение во время этого заседания. Ты позоришь священные залы этого Храма! <CHARNAME>, приходи ко мне поговорить, когда захочешь поговорить.~ 
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",5)SetGlobal("RolganAcquitted","GLOBAL",1)AddexperienceParty(130000)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 47.4
  SAY ~Приговор понятен, три против двух за освобождение. Ролган, ты можешь идти, все остальные также свободны. Суд благодарит вас за ваше время.~
  IF ~~ THEN EXTERN ~IGLAND3~ 15
END

IF ~~ THEN BEGIN 53 // from: IGLAND3 15
  SAY ~Игланд, ты выполнил свою работу. Предлагаю тебе уйти, пока я не отметил где-нибудь твое отвратительное поведение во время этого заседания. Ты позоришь священные залы этого Храма! <CHARNAME>, приходи ко мне поговорить, когда захочешь поговорить.~
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",5)SetGlobal("RolganAcquitted","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.5
  SAY ~Я не вижу у присяжных трех факелов, приговор понятен: виновен в предъявленном обвинении. Ролган будет казнен немедленно. Все остальные свободны. Суд благодарит вас за ваше время.~
  IF ~~ THEN EXTERN ~IGLAND3~ 16
END

IF ~~ THEN BEGIN 55 // from: IGLAND3 16
  SAY ~Игланд, ты выполнил свою работу. Предлагаю тебе уйти, пока я не отметил где-нибудь твое отвратительное поведение во время этого заседания. Ты позоришь священные залы этого Храма! <CHARNAME>, приходи ко мне поговорить, когда захочешь поговорить.~
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",7)SetGlobal("RolganConvicted","GLOBAL",1)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",5)~ THEN BEGIN 56 // from:
  SAY ~Ах да... здравствуй еще раз, <CHARNAME>. Добро пожаловать в храм бога справедливости.~
  IF ~~ THEN GOTO 21
END

