﻿#language: ru

@tree

Функционал: <Создание заявки на закупку, создание заказа>

Переменные:
    Импорт "2.feature"

Контекст:
		
	


	
		

Как <Администратор> я хочу
<создать документ заказ> 
чтобы <использовать созданные документы в других сценариях> 

Сценарий: <Создание заявки на закупку и поледующее создие Заказа на основе нее> 

	И В панели разделов я выбираю "Функциональные подсистемы (мир)"
	И В командном интерфейсе я выбираю "Закупки" "Заявки на закупку (мир)"
	Тогда открылась форма с именем "Документ.мирЗаявкаНаЗакупку.Форма.ФормаСписка"
	И в таблице 'Список' я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылась форма с именем "Документ.мирЗаявкаНаЗакупку.Форма.ФормаДокумента"
	И я нажимаю кнопку выбора у поля с именем 'ВидОперации'
	И я выбираю из списка "$ВидОперации1$"
	И пауза 1
	И я нажимаю кнопку выбора у поля с именем 'Организация'
	И я выбираю из списка "$Организация1$"
	И я нажимаю кнопку выбора у поля с именем 'CostCenter'
    Тогда открылась форма с именем "Справочник.СтруктураПредприятия.Форма.ФормаВыбора"
	И в таблице "Список" я перехожу к строке
        | 'Наименование' |
        | '$CostCentr1$' |
	И в таблице "Список"я выбираю текущую строку
	#И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
	#Тогда открылась форма с именем "Документ.мирИнвестиционнаяЗаявка.Форма.ФормаВыбора"
	#И в таблице "Список" я перехожу к строке
        #| 'Ссылка' |
        #| '$ДокументОснованиеНомер1$' |
    #И в таблице "Список"я выбираю текущую строку
    И я нажимаю кнопку выбора у поля с именем 'АдресПоставки'
	Тогда открылась форма с именем "Справочник.мирЗдания.Форма.ФормаВыбора"
	И в таблице "Список" я перехожу к строке
         | 'Название Facility EN' |
        | '$МестоДоставки1$' |
    И в таблице "Список"я выбираю текущую строку
	И я перехожу к закладке с именем "СтраницаТоварыИУслуги"
	И я нажимаю на кнопку с именем 'ТоварыИУслугиКонтекстноеМенюДобавить'
	И в таблице 'ТоварыИУслуги' я нажимаю кнопку выбора у реквизита с именем 'ТоварыИУслугиНоменклатура'
	Тогда открылась форма с именем "Справочник.Номенклатура.Форма.ФормаВыбора"
	И в таблице 'СписокСтандартныйПоискНоменклатура' я нажимаю на кнопку с именем 'СписокСтандартныйПоискНоменклатураНайти1'
	Тогда открылась форма с именем "UniversalListFindExtForm"
	И в поле с именем 'FieldSelector' я ввожу текст "Наименование"
	И в поле с именем 'Pattern' я ввожу значение переменной "$Номенклатура1$"
	И я нажимаю на кнопку с именем 'Find'
	И в таблице 'СписокСтандартныйПоискНоменклатура' я выбираю текущую строку
	И В таблице "ТоварыИУслуги" я завершаю редактирование строки	
	И в таблице 'ТоварыИУслуги' я выбираю текущую строку
	И в таблице 'ТоварыИУслуги' я нажимаю кнопку выбора у реквизита с именем 'ТоварыИУслугиХарактеристика'
	Тогда открылась форма с именем "Справочник.ХарактеристикиНоменклатуры.Форма.ФормаВыбора"
	И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
	Тогда открылась форма с именем "UniversalListFindExtForm"
	И в поле с именем 'FieldSelector' я ввожу текст "Наименование"
	И в поле с именем 'Pattern' я ввожу значение переменной "$Характеристика1$"
	И я нажимаю на кнопку с именем 'Find'
	И в таблице 'Список' я выбираю текущую строку
 	Если в таблице "ТоварыИУслуги" поле с именем "ТоварыИУслугиФинансоваяОбработка" не заполнено Тогда
	 Тогда я нажимаю кнопку выбора у поля с именем 'ТоварыИУслугиФинансоваяОбработка'
	 И я выбираю из списка "$FinfncialTriatment1$"
	Если в таблице "ТоварыИУслуги" поле с именем "ТоварыИУслугиФинансоваяОбработка" заполнено Тогда
	И в поле с именем "ТоварыИУслугиКоличествоУпаковок" я ввожу значение переменной "$Количество1$"
	И в поле с именем "ТоварыИУслугиЖелаемаяДатаПоступления" я ввожу значение переменной "$ЗДПRDD1$"
	Если в таблице "ТоварыИУслуги" поле с именем "ТоварыИУслугиСклад" не заполнено Тогда
	 Тогда в таблице 'ТоварыИУслуги' я нажимаю кнопку выбора у реквизита с именем 'ТоварыИУслугиСклад'
	 Тогда открылась форма с именем "Справочник.Склады.Форма.ФормаВыбора"
	 И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
	 Тогда открылась форма с именем "UniversalListFindExtForm"
	 И в поле с именем 'FieldSelector' я ввожу текст "Наименование"
	 И в поле с именем 'Pattern' я ввожу значение переменной "$Склад1$"
	 И я нажимаю на кнопку с именем 'Find'
	 И в таблице 'Список' я выбираю текущую строку
	Если в таблице "ТоварыИУслуги" поле с именем "ТоварыИУслугиСклад" заполнено Тогда
	И я нажимаю на кнопку с именем "ФормаПровести"
	И я перехожу к закладке с именем "Основное"	
	И я нажимаю кнопку выбора у поля с именем 'Статус'
	И я выбираю из списка "$Статус1$"
	И пауза 1
	И я нажимаю на кнопку с именем "ФормаПровести"
	И я нажимаю кнопку выбора у поля с именем 'Статус'
	И я выбираю из списка "$Статус2$"	
    И пауза 1
	И я нажимаю на кнопку с именем "ФормаПровести"
	И я нажимаю на кнопку с именем "ФормаПоказатьВСпискемирЗаявкаНаЗакупку"
	Тогда открылась форма с именем "Документ.мирЗаявкаНаЗакупку.Форма.ФормаСписка"
	И в таблице "Список" я активизирую поле с именем 'Номер'	 
	И я запоминаю значение поля "Номер" таблицы "Список" как "НЗ"
	И я закрываю текущее окно
	Тогда открылась форма с именем "Документ.мирЗаявкаНаЗакупку.Форма.ФормаДокумента"
	И пауза 1
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И В командном интерфейсе я выбираю "Закупки" "АРМ Закупки (мир)"
	Тогда открылась форма с именем "Обработка.мирАРМЗакупки.Форма.Форма"
	И я нажимаю на кнопку с именем 'ОчиститьОтборы'
    И я нажимаю кнопку выбора у поля с именем 'Заявка'
	Тогда открылась форма с именем "ValueListForm"
	И я нажимаю на кнопку с именем "Assortment"
	Тогда открылась форма с именем "Документ.мирЗаявкаНаЗакупку.ФормаВыбора"
	И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
	Тогда открылась форма с именем "UniversalListFindExtForm"
	И в поле с именем 'FieldSelector' я ввожу текст "Номер"
	И в поле с именем "Pattern" ввожу значение переменной "НЗ" 
	И я нажимаю на кнопку с именем "Find"
	Тогда открылась форма с именем "Документ.мирЗаявкаНаЗакупку.ФормаВыбора"
	И я нажимаю на кнопку с именем "ФормаВыбрать"
	И я закрываю текущее окно
	Когда открылась форма с именем "ValueListForm"
	И я нажимаю на кнопку 'ОК'
	Когда открылась форма с именем "Обработка.мирАРМЗакупки.Форма.Форма"
	Тогда я нажимаю на кнопку с именем 'ФормаОбновить'
	И я нажимаю на кнопку с именем "ПотребностиНазначитьЗакупщика"
	Тогда открылась форма с именем "Справочник.Пользователи.Форма.ФормаСписка"
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылась форма с именем "UniversalListFindExtForm"
	И в поле с именем 'FieldSelector' я ввожу текст "Полное имя"
	И в поле с именем 'Pattern' я ввожу значение переменной "$Закупщик1$"
	И я нажимаю на кнопку с именем 'Find'
	И в таблице 'ПользователиСписок' я выбираю текущую строку
	И я нажимаю на кнопку с именем "ПотребностиПоискКаталогов"
	И в таблице "Потребности" я активизирую поле "Цена"
	И в таблице  "Потребности" я начинаю редактирование строки	
	И в поле с именем "ПотребностиЦена" я ввожу значение переменной "$ПотребностиЦена1$" 
	И в поле с именем 'ПотребностиПоставщик' я ввожу значение переменной "$Поставщик1$"
    И в таблице 'Потребности' я нажимаю кнопку выбора у реквизита с именем 'ПотребностиДоговор'
	Тогда открылась форма с именем 'Справочник.ДоговорыКонтрагентов.Форма.ФормаВыбора'
	И в таблице 'Список' я перехожу к строке:
		| "Валюта Взаиморасчетов" | "Номер"     | "Рабочее наименование"     | "Статус"    |
		| "$Валюта1$"                   | "$СписокНомер1$" | "$СписокНаименование1$" | "$СписокСтатус1$" |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Потребности' я нажимаю на кнопку с именем 'ПотребностиСоздатьЗаказыПоВыделеным'
	Тогда открылась форма с именем "Обработка.ИнтеграцияС1СДокументооборотБазоваяФункциональность.Форма.АвторизацияВ1СДокументооборот"
	И Я закрываю форму с именем "Обработка.ИнтеграцияС1СДокументооборотБазоваяФункциональность.Форма.АвторизацияВ1СДокументооборот"
	И в таблице  "Потребности" я начинаю редактирование строки		 
	И поле с именем 'ПотребностиЗаказПоставщику' заполнено
	И Я закрываю текущее окно

	


	

