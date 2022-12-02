# charity-hospital
This repository for Charity Hospital Project.

## Гипотеза 1. Описательная   
>> Портрет бездомного пациента — его пол, возраст, наличие документов, места ночлега, нозологии ( ответ на вопрос — чем болеет? количество обращений, их характер (первичные, повторные), может быть уточняются данные за 2021 год, они тут), соц.-значимые заболевания, построение инфографики (?), уточнения распространенности в популяции бездомных тех или иных состояний и заболеваний, представленных в БД.

Переменные, используемые в рамках проверки гипотезы:
- Пол (`gender`)
- Возраст (`age_calc`) - использование переменной под вопросом
- Дата рождения (`date_bd`) -> расчет возраста
- Паспорт (любой) (`id_status`)
- Полис ОМС (`oms_status`)
- СНИЛС (`sn_status`)
- Где ночует пациент сегодня? (или где ночевал вчера?) (`where_homless`)
- Диагноз по МКБ-10 #1 (`ds_icd_1`)
- Диагноз по МКБ-10 #2 (`ds_icd_2`)
- Диагноз по МКБ-10 #3 (`ds_icd_3`)

Cоциально-значимые заболевания:
- Результат экспресс-теста на ВИЧ-инфекцию (`etest_hiv`)
- Результат экспресс-теста на вирусный гепатит В (`etest_hbsag`)
- Результат экспресс-теста на вирусный гепатит С (`etest_hcv`)
- Результат экспресс-теста на сифилис (`etest_lues`)
- ВИЧ-инфекция (`hiv_1`)
- Гепатит B (`hb_1`)
- Гепатит C (`hc_1`)
- Сифилис (`lues`)
- Анамнез со слов по ТБ (`tbi`)

---
**Группировка** `where_homless`    
**Уличные/видимая бездомность:**
- в публичных местах или на улице
- подвалы, парадные, чердаки
- вокзал
- временное сооружение (шалаш, навес, гараж) 
- непригодное жилье (заброшка)

**Условные бездомные/скрытая:**
- медицинское учреждение (стационар) <- у них чаще всего `where` = Удаленная консультация
- низкопороговые приюты для бездомных (ночные, пункты обогрева)
- постоянные приюты для бездомных (24/7) 
- транзитное и поддерживаемое проживание (ДНП, менее 1 года)
- рабочий дом
- кризисный центр для женщин
- временное сооружение (шалаш, навес, гараж)
- работа с проживанием (цех, сторожка, охрана)

**Домашний:**
- квартира/дом в собственности
- длительная аренда жилья (более 1 года)
- квартира/дом в собственности
- краткосрочная аренда жилья (общежитие/хостел, менее 1 года)


----
## Интервью с заказчиком

#### 1. Как считался age_calc?
- `rounddown(datediff([date_bd], 'today', 'y'))`

#### 2. Что есть идентификатор пациента: redcap_, record_id - ?
- `record_id` - идентификатор пациента. Номера идут по порядку.    
Так как были дубли, которые впоследствии удаляли, порядок может быть с выпадением каких-то цифр. 
- `redcap_repeat_instrument` - тип осмотра
- `redcap_repeat_instance` - номер визита в данном типе осмотра. По этой переменной можно оценить количество повторных визитов.

![image](https://user-images.githubusercontent.com/50096463/204623686-6efa317d-2c8c-4b84-860f-e7fa783edb08.png)

Пример 1. У `record_id` = 4 - пять основных приемов (пять раз он к нам приходил с БОЛЬШОЙ проблемой), и пять заполненных форм (6135) это фотобаза, пять раз мы туда что-то закгрузили. 

Пример 2. Есть айди, когда нет основного приема (2d89), но есть, например, e65eb4 (вакцинация) - это реже, или 2fcb (оценка зрения), тоже встречается. 
Это значит, что запрос был конкретный/не было времени на заполнение огромной формы основного приема и это опускали. Чаще всего, когда была только вакцинация или только выдача очков/офтальмологический выезд. Но был контакт, значит человек к нам пришел, но без опроса его, где он ночует, к сожалению.

#### 3. Что значит паспорт: заложен/на хранении - ?
-  Это значит, что паспорт (или иной документ) не может показать пациент на приеме. В ряде случаев при такой отметке паспорт может находиться в приютах, государственных и частных, но пациент по ряду причин, например, нарушений режима, выселен, запойный, а вот документы боится потерять и оставляет на хранении у администрации. 
- Заложен - это когда документы оставляют в под процент или в долг за деньги, как залог. Часто за ними нее возвращаются, но не считают их утерянными, а именно заложенными, абсолютно некритично остаются уверенными (пациенты), что вернутся, и выкупят/заберут документы.

#### 4. Что значит NA в СНИЛС и других документах?
- `NA` ставится БД автоматически, когда переменная обязательная, но пользователь "игнорирует" введения значения и сохраняет форму минуя введение данных в данную переменную.
- если в ранжированном списке есть вариант "нет данных", то можно приравнять `NA` = `нет данных`.
- Данные по СНИЛС в 2021 году - не вносились. Это поле за 2021 год должно быть `NA`.
В 2021 году спрашивали ФИО, год рождения (с припиской 01-01-YYYY), данные по наличию паспорта и полиса. 


#### 5. Что значит несколько значений по МКБ-10 №1,2,3? Почему повторяются? 
- Это классы МКБ-10. 
- диагноз по МКБ-10 #1 (`ds_icd_1`) - обязательное поле.
- диагноз по МКБ-10 #2 (`ds_icd_2`), диагноз по МКБ-10 #3 (`ds_icd_3`) - не обязательные поля.
- полная информация о диагнозе в переменной `ds` (трактовка диагноза). Полученная в этом поле информация впоследствии кодируется по МКБ. Однако, далеко не все, что написано в поле `ds` - закодировано.   

#### 6. Трактовка диагноза не всегда совпадает с выбранной нозологической группой по МКБ. Например, в record_id 43 на первом приеме стоит диагноз АГ, ГЭРБ, а в кодах - только болезни системы кровообращения (ГЭРБ из пищеварительной). У record_id 4 один и тот же по факту диагноз кодируется в разные нозологические группы. И еще: у некоторых пациентов есть два диагноза из одной группы (например, состояние после ожога и онихомикоз стоп). Группа одна, но нозологии разные. Мне кажется, что в таком случае нужно заполнять два окошка с диагнозами по МКБ, пусть они и будут одинаковые. Но зато мы не потеряем из виду целый диагноз. (Катя)
- К сожалению, это так. Нет иной идеи, как  мне "руками" на все записи приемов закодировать дз, выставив классы. Если вы не придумаете иной способ, более автоматический, чем ручной. Но похоже тут нужна человеческая аналитика и ручной труд.

#### 7. Как идентифицировать повторный прием? Повторный с точки зрения букварской - это в течение нескольких месяцев по поводу одной и той же патологии, с целью уточнения диагноза и коррекции лечения.
- `redcap_repeat_instance` - номер визита в данном типе осмотра.
- однако, "повторный прием" означает просто второе посещение, а не "законченный клинический случай". 

#### 8. Как связаны `complaint_lite` и `complaint` 
- `complaint_lite` - попытка стандартизовать `complaint`

#### 9. Интересна ли вам оценка ассоциаций по инфекционным заболевнаиям и местом ночлега или с другими показателями? Нужно ли вам понимать, кого тестировать на инфекции, а кого нет? Нужно ли понимать, насколько информированы пациенты?
- Интересно связь всего, что возможно, с местом ночлега. Место ночлега (`where_homless`) - хорошо зафиксированная информация.  
-  Это современный показатель по классификации ETHOS (https://www.feantsa.org/en/toolkit/2005/04/01/ethos-typology-on-homelessness-and-housing-exclusion) с небольшой нашей корректировкой от Больнички локальной, определения, человек бездомный, условно бездомный или домашний.  Как меняется место ночлега, если есть повторные обращения, есть ли связь с болезнями (каких больше? каких меньше? каких вообще нет?). Буквально все (место ночлега и алкоголь (alc_status в моменте, alcogolic анамнестически, со слов), документы, демография, пол, может привязка к локации, где ведется прием (ну например, если рядом с приютом, то вероятно все ответы будут, что ночуют в приюте), а вот стоянка Атаманская - это на пустыре, а кто туда приходит? больше уличных, больше домашних из соседних домов?). Ну как-то так отвечу\прокомментирую пока.

#### 10. Интересно ли сравнить эпидемиологическую ситуацию в нашей выборке с таковой по популяции (СПб? России?) Топ-5 нозологических категорий там, и топ-5 нозологических категорий там, например, в наших данных явный перекос в сторону инфекционных заболеваний.
- Мы тоже думали (точнее мечтали) бы это сделать, но не хватило ресурса стандартизировать сравниваемые величины: диагноз пишется текстом, МКБ разделы не все врачи грамотно и корректно выставляли в формах, а значит данные в базе нужно дополнять в ручном режиме и стандартизировать.

#### Дополнительная информация
- Отказ от тестрвоания на социально-значимые заболевания плохо фиксируется.   





