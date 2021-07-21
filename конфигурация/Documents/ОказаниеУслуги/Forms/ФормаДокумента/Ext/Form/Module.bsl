﻿
&НаКлиенте
Процедура ПереченьНоменклатурыКоличествоПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.ПереченьНоменклатуры.ТекущиеДанные; 
	РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры

&НаКлиенте
Процедура ПереченьНоменклатурыЦенаПриИзменении(Элемент)
	 СтрокаТабличнойЧасти = Элементы.ПереченьНоменклатуры.ТекущиеДанные; 
	 РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти); 
КонецПроцедуры

&НаКлиенте
Процедура КомментарийОткрытие(Элемент, СтандартнаяОбработка)  
  СтандартнаяОбработка = Ложь;
  Оповещение = Новый ОписаниеОповещения("подкл_ОповещениеИзмененияКомментария", ЭтаФорма); 
  ПараметрыНовойФормы = Новый Структура;
  ПараметрыНовойФормы.Вставить("ЗаполненныйКомментарий", Объект.Комментарий);
  ОткрытьФорму("Документ.ОказаниеУслуги.Форма.ФормаВводаКомментария",ПараметрыНовойФормы, ЭтаФорма,,,,Оповещение);
  
  a = 1;   
КонецПроцедуры

  &НаКлиенте
Процедура подкл_ОповещениеИзмененияКомментария(Результат, ДополнительныеПараметры) Экспорт  
  
  Если НЕ Результат = Неопределено Тогда 
  Объект.Комментарий = Результат; 
  КонецЕсли;
КонецПроцедуры


&НаКлиенте
Процедура ПереченьНоменклатурыНоменклатураПриИзменении(Элемент)
// Получить текущую строку табличной части.
СтрокаТабличнойЧасти = Элементы.ПереченьНоменклатуры.ТекущиеДанные;
// Установить цену.
СтрокаТабличнойЧасти.Цена = РаботаСоСправочниками.РозничнаяЦена(
							
 Объект.Дата, СтрокаТабличнойЧасти.Номенклатура);
// Пересчитать сумму строки
РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти);
	
КонецПроцедуры

