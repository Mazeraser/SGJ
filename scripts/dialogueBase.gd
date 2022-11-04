extends Node

var intro = [
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Далёкое человеческое будущее, в  каком то из многочисленных секторов бескрайней галактики идёт очередная космическая баталия.",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Я - один из миллиардов боевых пилотов, сражающихся под флагом своей империи...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Не понятно зачем. Не понятно, за что.",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Но в данный момент меня интересует лишь то, что мы проигрываем.",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Вполне возможно, это мои последние минуты жизни.",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Однако для таких случаев в системе наших кораблей предусмотрена система катапультирования. Стоит только нажать на кнопку и...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Мою кабину выкинет в бескрайний космос, а я погружусь в криосон",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Я должен буду проснуться от криосна сразу после того, как приземлюсь на какую то планету...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Но кто знает, куда именно я попаду. Может я попаду прямо в руки вражеской империи?",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Или на дикую планету, куда не ступала нога разумного существа?",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://bgs/space.png"),
		"Text": "Не время думать об этом... Больше вариантов у меня нет.",
		"choise": "Катапультироваться."
	},
]

var after_catapult = [
	{
		"Name": "",
		"Background": load("res://bgs/space2.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/ssasas.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/rararara.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/wannacry.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/wannarock1.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/wannarock2.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/wannarock3.png"),
		"Text": "",
		"choise": "Выстрел"
	},
	{
		"Name": "",
		"Background": load("res://sprites/twistedsisters1.png"),
		"Text": "",
		"choise": ""
	},{
		"Name": "",
		"Background": load("res://sprites/twistedsisters2.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/rammstein.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/imtired.png"),
		"Text": "",
		"choise": ""
	},
	{
		"Name": "Незнакомец",
		"Background": load("res://sprites/imtired.png"),
		"Text": "Ого! Неплохой выстрел дружище!",
		"choise": ""
	},
	{
		"Name": "Незнакомец",
		"Background": load("res://sprites/imtired.png"),
		"Text": "Слушай, тебе помощь может нужна? Видок у тебя странный... Да и одежда тоже...",
		"choise": ""
	},
	{
		"Name": "Незнакомец",
		"Background": load("res://sprites/imtired.png"),
		"Text": "Меня Джо звать, кстати! *протягивает руку*",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": load("res://sprites/imtired.png"),
		"Text": "А тебя то как зовут?",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/imtired.png"),
		"Text": "Меня...ээ\n*Чёрт, мы же уже давно используем номера*",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": load("res://sprites/imtired.png"),
		"Text": "...неужели тебя так сильно вдарило, что ты даже имя своё забыл?",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": load("res://sprites/imtired.png"),
		"Text": "Плохи дела у тебя, парень...\nЕсли жить не надоело, пошли в мою общину, там такие как ты пригодятся. В этих пустошах тебя ждёт только смерть.",
		"choise": ""
	},
	{
		"Name": "",
		"Background": load("res://sprites/imtired.png"),
		"Text": "Ну...выбор у меня не очень велик. Веди меня.",
		"choise": ""
	},
]

var in_city = [
	{
		"Name": "",
		"Background": null,
		"Text": "Спустя какое то время мы пришли в маленький городок, типичный для каких нибудь вестернов",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Джо сразу же повёл меня в местный салун, где обитал почти весь местный контингент",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Хей, Уилс, принимай гостей!",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Крупный мужчина высокого роста, завидев Джо, расплылся в улыбке, и сразу же поставил на стол два тумблера, ловко разлив по ним виски",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Ооохо-хо, кто вернулся, и даже не один!\nИ что за несчастного ты к нам сюда приплёл?",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Если честно, я не знаю даже его имени, но если ему верить, он сам то его и не помнит!\nИ ты не поверишь, Уил, этот парниша прямо на моих глазах ОДНИМ выстрелом грохнул ДВУХ койотов.",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Да ладно?!",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Я серьёзно!\nТы бы видел как они потом разбежались, это было нечто!",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Джо ловко опрокинул свою рюмку с виски, а Уилс уважительно окинул меня взглядом\nИ тут я заметил, что ведь налили и мне тоже... Но я ни разу в своей жизни не пил алкоголя...",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "В нашем обществе уже давно уничтожили алкоголизм, и я про него только слышал и читал...\nНо мне необходимо выпить с ними",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Я залпом выпил налитый мне виски\nПо всему телу прошёл разряд, а горло обожгло",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Ну что? У нашего стрелка прояснилась головка, или как?",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "...",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Ай, ладно. Джо, он в курсе зачем ты вообще его сюда привёл?",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Ах да... Парень, нам нужна твоя помощь.\nДело в том, что у нас нет шерифа, и абсолютно некому охранять наш городок от бандитов, которые обосновались рядом с нами, и теперь не дают нам покоя своими набегами",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Сразу, как я тебя увидел, я подумал, что ты сможешь нам помочь... Не за спасибо конечно же...",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Мы дадим и сделаем все, что ты только попросишь.\nВесь город будет твой, только согласись!",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "*..а?*",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "*они что, хотят чтобы я стал их шерифом?*",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "*хм...а ведь это мой шанс возглавить их общество, и привести их к космической эпохе...*",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Я согласен.",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Что, так просто?",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Но в чём же подвох?",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Никакого подвоха",
		"choise": ""
	},
	{
		"Name": "Уилс",
		"Background": null,
		"Text": "Ну что-ж...\nДобро пожаловать В Вайнт Таун!",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "НАРОД!",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "Вскрикнул, вскочил Джо. Тем самым привлекая внимания остальных посетителей салуна.",
		"choise": ""
	},
	{
		"Name": "Джо",
		"Background": null,
		"Text": "Я наконец то нашёл того, кто защитит нас от этих проклятых бандитов!",
		"choise": ""
	},
	{
		"Name": "",
		"Background": null,
		"Text": "После этих слов Джо указывает на меня\nПосетители заметно ожили, кто то встал со своих стульев, кто то изучает меня взглядом, кто то уже требует у бармена выпивки для того, чтобы отпраздновать этот знаменательный момент",
		"choise": ""
	},
	{
		"Name": "Толпа",
		"Background": null,
		"Text": "Ураа!\nНаконец-то!",
		"choise": ""
	},
]
