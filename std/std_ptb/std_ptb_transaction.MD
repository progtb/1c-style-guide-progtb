# Работа с транзакциями

Наиболее корректная работа с транзакциями выглядит следующим образом:

```
НачатьТранзакцию();
 
Попытка
 
    // Делаем что-то. Например: Блокировка + изменение данных
     
    ЗафиксироватьТранзакцию();
     
Исключение
     
    Если ТранзакцияАктивна() Тогда
        ОтменитьТранзакцию();
    КонецЕсли;
     
    ТекстОшибки = СтрШаблон(НСтр("ru='При выполнении [описание действия] произошла ошибка: %1'"),
        КраткоеПредставлениеОшибки(ИнформацияОбОшибке())); // возможно использование полного представления ошибки
    ВызватьИсключение ТекстОшибки;
     
КонецПопытки;
```

При данном использовании мы решаем сразу несколько проблем:

* открываем транзакцию обязательно, чтобы исключить отмену и фиксацию ранее открытых транзакций;
* фиксируем транзакцию внутри попытки, чтобы её ошибки ушли в исключение;
* проверяем наличие активной транзакции перед отменой, чтобы гарантировано не иметь ошибок отмены.

При этом мы заранее страхуемся от сообщения об ошибке в духе "В данной транзакции уже происходили ошибки" со сложно отлавливаемой структурой вызова.