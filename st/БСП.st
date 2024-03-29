﻿{1,
{2,
{"БСП",1,0,"",""},
{5,
{"Общего назначения",1,0,"",""},
{6,
{"Сообщить пользователю",1,0,"",""},
{0,
{"Сообщить - клиент (общего назначения)",0,0,"Сообщ[итьПользователю(]","ОбщегоНазначенияКлиент.СообщитьПользователю(НСтр(""ru='<?>'""));"}
},
{0,
{"Сообщить - сервер (общего назначения)",0,0,"Сообщ[итьПользователю(]","ОбщегоНазначения.СообщитьПользователю(НСтр(""ru='<?>'""));"}
},
{0,
{"Сообщить - клиент (с реквизитом объекта)",0,0,"Сообщ[итьПользователю(]","ОбщегоНазначенияКлиент.СообщитьПользователю(
	НСтр(""ru='<?>'""), ,
	""Объект.ПолеВРеквизитеФормыОбъект"");"}
},
{0,
{"Сообщить - сервер (с реквизитом объекта)",0,0,"Сообщ[итьПользователю(]","ОбщегоНазначения.СообщитьПользователю(
	НСтр(""ru='<?>'""), ,
	""Объект.ПолеВРеквизитеФормыОбъект"");"}
},
{0,
{"Сообщить - клиент (с реквизитом формы)",0,0,"Сообщ[итьПользователю(]","ОбщегоНазначенияКлиент.СообщитьПользователю(
	НСтр(""ru='<?>'""), ,
	""ПолеВРеквизитеФормы"");"}
},
{0,
{"Сообщить - сервер (с реквизитом формы)",0,0,"Сообщ[итьПользователю(]","ОбщегоНазначения.СообщитьПользователю(
	НСтр(""ru='<?>'""), ,
	""ПолеВРеквизитеФормы"");"}
}
},
{0,
{"Знач. реквизита объекта",0,0,"ЗначениеР[еквизитаОбъекта]","ОбщегоНазначения.ЗначениеРеквизитаОбъекта(<?>, """");"}
},
{0,
{"Знач. реквизитов объекта",0,0,"ЗначенияР[еквизитовОбъекта]","ОбщегоНазначения.ЗначенияРеквизитовОбъекта(<?>, """");"}
},
{0,
{"Фиксированные данные",0,0,"Фикс[ированныеДанные=]","ФиксированныеДанные = ОбщегоНазначения.ФиксированныеДанные(<?>);"}
},
{8,
{"Копирование коллекций",1,0,"",""},
{0,
{"Копия структуры",0,0,"Копия[Структуры=]","КопияСтруктуры = ОбщегоНазначенияКлиентСервер.СкопироватьСтруктуру(<?>);"}
},
{0,
{"Скопировать структуру",0,0,"Скопиро[ватьСтруктуру(]","ОбщегоНазначенияКлиентСервер.СкопироватьСтруктуру(<?>);"}
},
{0,
{"Копия массива",0,0,"Копия[Массива=]","КопияМассива = ОбщегоНазначенияКлиентСервер.СкопироватьМассив(<?>);"}
},
{0,
{"Скопировать массив",0,0,"Скопиро[ватьМассив(]","ОбщегоНазначенияКлиентСервер.СкопироватьМассив(<?>);"}
},
{0,
{"Копия соответствия",0,0,"Копия[Соответствия=]","КопияСоответствия = ОбщегоНазначенияКлиентСервер.СкопироватьСоответствие(<?>);"}
},
{0,
{"Скопировать соответствие",0,0,"Скопиро[ватьСоответствие(]","ОбщегоНазначенияКлиентСервер.СкопироватьСоответствие(<?>);"}
},
{0,
{"Копия списка значений",0,0,"Копия[СписокЗначений=]","КопияСписокЗначений = ОбщегоНазначенияКлиентСервер.СкопироватьСписокЗначений(<?>);"}
},
{0,
{"Скопировать список значений",0,0,"Скопиро[ватьСписокЗначений=]","ОбщегоНазначенияКлиентСервер.СкопироватьСписокЗначений(<?>);"}
}
}
},
{3,
{"Длительные операции",1,0,"",""},
{0,
{"Выполнить процедуру",0,0,"Длит[ельнаяОперация]","
&НаКлиенте 
Процедура <?""Имя процедуры длительной операции"">ВФонеПриПрогрессе(Результат, ДопПараметры) Экспорт
	
	Если НЕ Результат.Статус = ""Выполняется"" Тогда
		Возврат;
	КонецЕсли;
	
	//Прогресс = ПрочитатьПрогрессНаСервере(Результат.ИдентификаторЗадания);
	//Если Прогресс <> Неопределено Тогда
	//	ЭтотОбъект.ТекстСообщенияЗагрузки = Прогресс.Текст;
	//КонецЕсли;
	
КонецПроцедуры

//&НаСервереБезКонтекста
//Функция ПрочитатьПрогрессНаСервере(знач ИдентификаторЗадания)
//	
//	Возврат ДлительныеОперации.ПрочитатьПрогресс(ИдентификаторЗадания);
//	
//КонецФункции

&НаКлиенте
Процедура <?""Имя процедуры длительной операции"">ВФонеЗавершение(Результат, ДопПараметры) Экспорт	
	Если НЕ ТипЗнч(Результат) = Тип(""Структура"") Тогда
		Возврат;
	КонецЕсли;
	
	Если Результат.Статус = ""Ошибка"" Тогда
		ТекстСообщения = СтрШаблон(НСтр(""ru='При выполнении операции произошла ошибка:
			|%1;
			|%2'""),
			Результат.КраткоеПредставлениеОшибки,
			Результат.ПодробноеПредставлениеОшибки);
			
		ОбщегоНазначенияКлиент.СообщитьПользователю(ТекстСообщения); 
	КонецЕсли;
	
	Если НЕ Результат.Статус = ""Выполнено"" Тогда
		Возврат;
	КонецЕсли;
	
	ПоказатьОповещениеПользователя(НСтр(""ru='Операция завершена'""),,
		НСтр(""ru='Длительная операция выполнена'""),
		БиблиотекаКартинок.Успешно32);
КонецПроцедуры

&НаКлиенте 
Процедура <?""Имя процедуры длительной операции"">ВФонеНаКлиенте()
	ДлительнаяОперация = <?""Имя процедуры длительной операции"">ВФонеНаСервере();
		
	ОписаниеОповещения = Новый ОписаниеОповещения(""<?""Имя процедуры длительной операции"">ВФонеЗавершение"", ЭтотОбъект);
	
	ПараметрыОжидания = ДлительныеОперацииКлиент.ПараметрыОжидания(ЭтотОбъект);
	//ПараметрыОжидания.ОповещениеОПрогрессеВыполнения = Новый ОписаниеОповещения(""<?""Имя процедуры длительной операции"">ВФонеПриПрогрессе"", ЭтотОбъект);
	//ПараметрыОжидания.ТекстСообщения				= НСтр(""ru=''"");
	//ПараметрыОжидания.ВыводитьОкноОжидания			= Истина;
	//ПараметрыОжидания.ВыводитьПрогрессВыполнения	= Истина;
	<?>
	ДлительныеОперацииКлиент.ОжидатьЗавершение(ДлительнаяОперация,
		ОписаниеОповещения,
		ПараметрыОжидания);
КонецПроцедуры

&НаСервереБезКонтекста 
Функция <?""Имя процедуры длительной операции"">ВФонеНаСервере(знач РежимОтладки = Ложь, знач Параметр1 = Неопределено, знач Параметр2 = Неопределено)
	ПараметрыВыполнения = ДлительныеОперации.ПараметрыВыполненияПроцедуры();
	//ПараметрыВыполнения.НаименованиеФоновогоЗадания = НСтр(""ru=''"");
	ПараметрыВыполнения.ЗапуститьВФоне		= НЕ РежимОтладки;
	ПараметрыВыполнения.ЗапуститьНеВФоне	= РежимОтладки;
	
	Возврат ДлительныеОперации.ВыполнитьПроцедуру(ПараметрыВыполнения,
		""ИмяДлительнойОперации"",
		Параметр1,
		Параметр2);
КонецФункции


"}
},
{0,
{"Выполнить функцию",0,0,"Длит[ельнаяОперация]","
&НаКлиенте 
Процедура <?""Имя функции длительной операции"">ВФонеПриПрогрессе(Результат, ДопПараметры) Экспорт
	
	Если НЕ Результат.Статус = ""Выполняется"" Тогда
		Возврат;
	КонецЕсли;
	
	//Прогресс = ПрочитатьПрогрессНаСервере(Результат.ИдентификаторЗадания);
	//Если Прогресс <> Неопределено Тогда
	//	ЭтотОбъект.ТекстСообщенияЗагрузки = Прогресс.Текст;
	//КонецЕсли;
	
КонецПроцедуры

//&НаСервереБезКонтекста
//Функция ПрочитатьПрогрессНаСервере(знач ИдентификаторЗадания)
//	
//	Возврат ДлительныеОперации.ПрочитатьПрогресс(ИдентификаторЗадания);
//	
//КонецФункции

&НаКлиенте
Процедура <?""Имя функции длительной операции"">ВФонеЗавершение(Результат, ДопПараметры) Экспорт	
	Если НЕ ТипЗнч(Результат) = Тип(""Структура"") Тогда
		Возврат;
	КонецЕсли;
	
	Если Результат.Статус = ""Ошибка"" Тогда
		ТекстСообщения = СтрШаблон(НСтр(""ru='При выполнении операции произошла ошибка:
			|%1;
			|%2'""),
			Результат.КраткоеПредставлениеОшибки,
			Результат.ПодробноеПредставлениеОшибки);
			
		ОбщегоНазначенияКлиент.СообщитьПользователю(ТекстСообщения); 
	КонецЕсли;
	
	Если НЕ Результат.Статус = ""Выполнено"" Тогда
		Возврат;
	КонецЕсли;
	
	// ДанныеФункции = ПолучитьИзВременногоХранилища(Результат.АдресРезультата);
	
	ПоказатьОповещениеПользователя(НСтр(""ru='Операция завершена'""),,
		НСтр(""ru='Длительная операция выполнена'""),
		БиблиотекаКартинок.Успешно32);
КонецПроцедуры

&НаКлиенте 
Процедура <?""Имя функции длительной операции"">ВФонеНаКлиенте()
	ДлительнаяОперация = <?""Имя функции длительной операции"">ВФонеНаСервере(ЭтотОбъект.УникальныйИдентификатор);
		
	ОписаниеОповещения = Новый ОписаниеОповещения(""<?""Имя функции длительной операции"">ВФонеЗавершение"", ЭтотОбъект);
	
	ПараметрыОжидания = ДлительныеОперацииКлиент.ПараметрыОжидания(ЭтотОбъект);
	//ПараметрыОжидания.ОповещениеОПрогрессеВыполнения = Новый ОписаниеОповещения(""<?""Имя функции длительной операции"">ВФонеПриПрогрессе"", ЭтотОбъект);
	//ПараметрыОжидания.ТекстСообщения				= НСтр(""ru=''"");
	//ПараметрыОжидания.ВыводитьОкноОжидания			= Истина;
	//ПараметрыОжидания.ВыводитьПрогрессВыполнения	= Истина;
	<?>
	ДлительныеОперацииКлиент.ОжидатьЗавершение(ДлительнаяОперация,
		ОписаниеОповещения,
		ПараметрыОжидания);
КонецПроцедуры

&НаСервереБезКонтекста 
Функция <?""Имя функции длительной операции"">ВФонеНаСервере(знач ИдентификаторФормы, знач РежимОтладки = Ложь, знач Параметр1 = Неопределено, знач Параметр2 = Неопределено)
	ПараметрыВыполнения = ДлительныеОперации.ПараметрыВыполненияФункции(ИдентификаторФормы);
	//ПараметрыВыполнения.НаименованиеФоновогоЗадания = НСтр(""ru=''"");
	ПараметрыВыполнения.ЗапуститьВФоне		= НЕ РежимОтладки;
	ПараметрыВыполнения.ЗапуститьНеВФоне	= РежимОтладки;
	
	Возврат ДлительныеОперации.ВыполнитьФункцию(ПараметрыВыполнения,
		""ИмяДлительнойОперации"",
		Параметр1,
		Параметр2);
КонецФункции


"}
},
{0,
{"Выполнить в фоне (устарело)",0,0,"","&НаКлиенте
Процедура <?""Имя процедуры длительной операции"">ВФонеЗавершение(Результат, ДопПараметры) Экспорт	
	Если НЕ ТипЗнч(Результат) = Тип(""Структура"") Тогда
		Возврат;
	КонецЕсли;
	
	Если Результат.Статус = ""Ошибка"" Тогда
		ТекстСообщения = СтрШаблон(НСтр(""ru='При выполнении операции произошла ошибка:
			|%1;
			|%2'""),
			Результат.КраткоеПредставлениеОшибки,
			Результат.ПодробноеПредставлениеОшибки);
			
		ОбщегоНазначенияКлиент.СообщитьПользователю(ТекстСообщения); 
	КонецЕсли;
	
	Если НЕ Результат.Статус = ""Выполнено"" Тогда
		Возврат;
	КонецЕсли;
	
	//ДанныеРезультата = ПолучитьИзВременногоХранилища(Результат.АдресРезультата);
	
	ПоказатьОповещениеПользователя(НСтр(""ru='Операция завершена'""),,
		НСтр(""ru='Длительная операция выполнена'""),
		БиблиотекаКартинок.Успешно32);
КонецПроцедуры

&НаКлиенте 
Процедура <?""Имя процедуры длительной операции"">ВФонеНаКлиенте()
	ПараметрыПроцедуры = Новый Структура;
	
	ДлительнаяОперация = <?""Имя процедуры длительной операции"">ВФонеНаСервере(ЭтотОбъект.УникальныйИдентификатор,
		ПараметрыПроцедуры);
	
	ОписаниеОповещения = Новый ОписаниеОповещения(""<?""Имя процедуры длительной операции"">ВФонеЗавершение"", ЭтотОбъект);
	
	ПараметрыОжидания = ДлительныеОперацииКлиент.ПараметрыОжидания(ЭтотОбъект);
	ПараметрыОжидания.ТекстСообщения				= НСтр(""ru='Длительная операция...'"");
	ПараметрыОжидания.ВыводитьОкноОжидания			= Истина;
	ПараметрыОжидания.ВыводитьПрогрессВыполнения	= Истина;
		
	ДлительныеОперацииКлиент.ОжидатьЗавершение(ДлительнаяОперация,
		ОписаниеОповещения,
		ПараметрыОжидания);
КонецПроцедуры

&НаСервереБезКонтекста 
Функция <?""Имя процедуры длительной операции"">ВФонеНаСервере(знач ИдентификаторФормы, знач ПараметрыПроцедуры, знач РежимОтладки = Ложь)
	ПараметрыВыполнения = ДлительныеОперации.ПараметрыВыполненияВФоне(ИдентификаторФормы);
	ПараметрыВыполнения.ЗапуститьВФоне		= НЕ РежимОтладки;
	ПараметрыВыполнения.ЗапуститьНеВФоне	= РежимОтладки;
	<?>
	Возврат ДлительныеОперации.ВыполнитьВФоне(""ИмяДлительнойОперации"",
		ПараметрыПроцедуры,
		ПараметрыВыполнения);
КонецФункции


"}
}
}
}
}