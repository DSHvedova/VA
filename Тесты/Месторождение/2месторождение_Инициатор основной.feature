﻿#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я подключаю клиент тестирования "Инициатор" из таблицы клиентов тестирования
	Когда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'



Сценарий: <описание сценария>
    И В командном интерфейсе я выбираю 'Дополнительные сущности' 'Месторождения'
	Тогда открылась форма с именем "Справочник.мирМесторождения.Форма.ФормаСписка"
	И в таблице "Список" я перехожу к последней строке
	И в таблице "Список" я выбираю текущую строку
	И я активизирую поле с именем "СистемныйКлюч"
	И я запоминаю значение поля с именем "СистемныйКлюч" как "Ключ"
	#И Я удаляю переменную "НовыйКлючГ"
	И     я запоминаю значение выражения 'Формат(Число($Ключ$)+1,"ЧГ=")' в переменную "НовыйКлючГ" глобально
	И     Я закрываю текущее окно
	И я нажимаю на кнопку с именем "ЗаявкаСоздание0"
	И я активизирую поле с именем "СистемныйКлюч"
	И в поле с именем "СистемныйКлюч" ввожу значение глобальной переменной "НовыйКлючГ"
	И в поле с именем "НаименованиеМесторожденияРус" я ввожу текст "Верхоянское"
	И в поле с именем "НаименованиеМесторождения" я ввожу текст "Verkhoyanskoe"
	И в поле с именем "Округ" я ввожу текст "1"
	И я нажимаю кнопку выбора у поля с именем "Страна"
	Тогда открылась форма с именем 'Справочник.СтраныМира.Форма.нсиФормаСписка'
	И в таблице "Список" я перехожу к строке:
		| Код | Код альфа-2 | Код альфа-3 | Наименование | Полное наименование  | Участник ЕАЭС |
		| 643 | RU          | RUS         | РОССИЯ       | Российская Федерация | Да            |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "Регион"
	Тогда открылась форма с именем 'Справочник.нсиБизнесРегионы.Форма.ФормаСписка'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Russia       |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "География"
	Тогда открылась форма с именем 'Справочник.мирГеография.Форма.ФормаВыбора'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| BT_Type   | Code BT | Description             | HFM_Geo |
		| Corporate | SL_OPS  | Schlumberger Operations | Geo1    |
	И в таблице "Список" я перехожу к строке:
		| BT_Type | Code BT | Description     | HFM_Geo |
		| Basin   | B_GHQ   | Geographical HQ | Geo2    |
	И в таблице "Список" я выбираю текущую строку
	И в поле с именем "Описание" я ввожу текст "1"
	И в поле с именем "ГлубинаВоды" я ввожу текст "4"
	И я нажимаю кнопку выбора у поля с именем "ЕИ_Глубины" 
	Тогда открылась форма с именем 'Справочник.нсиУпаковкиЕдиницыИзмерения.Форма.ФормаВыбораЕдиницыИзмерения'
	И в таблице "Список" я перехожу к строке:
		| Код    | Международное сокращение | Наименование |
		| '006 ' | м                        | м            |
	И в таблице "Список" я выбираю текущую строку
	#И я нажимаю кнопку выбора у поля с именем "ГодОткрытия"
	#И у поля с именем "ГодОткрытия" я выбираю текущую дату
	И из выпадающего списка с именем "ВидБурения" я выбираю точное значение 'LAND'
	И я нажимаю на кнопку с именем "БП_ЗаписатьИЗакрыть"
	И     Я закрываю текущее окно
	И я закрываю сеанс TESTCLIENT
	