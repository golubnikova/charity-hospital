## Интервью с заказчиком

### Интервью №1
Меня зовут Сергей Иевков, я врач общей практики, АиР, директор некоммерческой организации "Благотворительная больница (https://charityhospital.ru/)", которая занимается оказанием медицинской помощи бездомным людям на улицах и в приютах в Санкт-Петербурге. 

По ссылке (https://drive.google.com/drive/folders/1yF2mErWjmALxy-YuEeZpZMZ0PGovd6Ut?usp=sharing) я подготовил несколько вариантов выгрузки БД, о которых мне написал Евгений: в CSV (с названиями переменных и отдельно с их расшифровкой) и в формате R. (еcли что, БД можно выгрузить для SAS, SPSS, STATA. Если в этом тоже будет необходимость - напишите мне, пожалуйста, сделаю по запросу.) Также по ссылке в формате pdf находится легенда к переменным, которые используются в БД, на русском языке.

### Интервью №2
#### 1. Как считался age_calc?
- `rounddown(datediff([date_bd], 'today', 'y'))`

#### 2. Что есть идентификатор пациента: redcap_, record_id - ?
- `record_id` - идентификатор пациента. Номера идут по порядку.    
Так как были дубли, которые впоследствии удаляли, порядок может быть с выпадением каких-то цифр. 
- `redcap_repeat_instrument` - тип осмотра.
- `redcap_repeat_instance` - номер визита в данном типе осмотра. По этой переменной можно оценить количество повторных визитов.

`redcap_repeat_instrument`
![image](https://user-images.githubusercontent.com/50096463/205260155-8e45052f-7557-407d-8bd6-cd2697e2c617.png)


Пример 1. У `record_id` = 4 - пять основных приемов (пять раз он к нам приходил с БОЛЬШОЙ проблемой), и пять заполненных форм (6135) это фотобаза, пять раз мы туда что-то закгрузили. 

Пример 2. Есть айди, когда нет основного приема (2d89), но есть, например, e65eb4 (вакцинация) - это реже, или 2fcb (оценка зрения), тоже встречается. 
Это значит, что запрос был конкретный/не было времени на заполнение огромной формы основного приема и это опускали. Чаще всего, когда была только вакцинация или только выдача очков/офтальмологический выезд. Но был контакт, значит человек к нам пришел, но без опроса его, где он ночует, к сожалению.

#### 3. Что значит паспорт: заложен/на хранении - ?
-  Это значит, что паспорт (или иной документ) не может показать пациент на приеме. В ряде случаев при такой отметке паспорт может находиться в приютах, государственных и частных, но пациент по ряду причин, например, нарушений режима, выселен, запойный, а вот документы боится потерять и оставляет на хранении у администрации. 
- Заложен - это когда документы оставляют в под процент или в долг за деньги, как залог. Часто за ними нее возвращаются, но не считают их утерянными, а именно заложенными, абсолютно некритично остаются уверенными (пациенты), что вернутся, и выкупят/заберут документы.

#### 4. Что значит NA в СНИЛС и других документах?
- `NA` ставится БД автоматически, когда переменная обязательная, но пользователь "игнорирует" введения значения и сохраняет форму минуя введение данных в данную переменную.
- если в ранжированном списке есть вариант "нет данных", то можно приравнять `NA` = `нет данных`. Точно можно: id_status, ОМС, СНИЛС.
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

### Интервью №3

#### 1. Есть ли ссылки со статистикой бездомности по России? Это требуется для сравнения показателей в Спб с Россией.
- Таких нет.

#### 2. В гипотезах есть запрос на корреляцию между ВИЧ и другими показателями, но в выборке 15 ВИЧ-положительных. Для оценки взаимосвязи нужно хотя бы 30.
- Взять ВИЧ-положительных по анамнезу - 87.

#### 3. Требуется уточнить значения our_action: что значит отказался от госпитализации. И в какую переменную зашита информации о госпитализации?
- Выгрузть по форме 0-57у `place` уникальные.


#### 4. В гипотезах есть запрос на построение предсказательной модели. Для прогноза и машинного обучения требуется информация о летальных исходах и больше информации о заболеваниях.
- Факт смерти в ds словами смерть или летальный исход.
	- Оценка смертности дала 4 события.
- Предложение: рассмотреть вариант для предсказательной модели алкоголь и психиатрия.


#### 5. Интересно ли вам знать, какие показатели заполняются хуже в БД?
То есть иметь срез по NA и not-NA?
Нет.

####  6. Есть ли различия в оснащенности разных точек приема больных?
- Да, есть различия.
- Выгрузить точки локации, где идет прием (`where`)

Пожелания заказчика, которые взяли в проработку:
1. Здорово связать алкоголь, ВИЧ, сифилис, туберкулез.
2. Ввести доп. переменную по месту приема (`where`) и оценить туберкулез в приюте и под открытым небом.
3. Оценить выявляемость ВИЧ-инфекций в приюте и под открытым небом.
4. Сформировать индекс уязвимости здоровья бездомного пациента.
5. Сделать шкалу оценки реабилитационного потенциала.
6. Построить шкалу депрессии.
7. Связать алкоголизм и психиатрию.
8. Уличные бездомные или уличные - у каких больше алкоголизма.
9. Шкала рискованности по алкоголизму (если пациент отрицает).

----
#### Ссылки от заказчика
- https://charityhospital.ru/
- [исходные данные, легенда, формы для опроса ББ](https://drive.google.com/drive/folders/1yF2mErWjmALxy-YuEeZpZMZ0PGovd6Ut?usp=sharing)
- [значения переменных БД](https://docs.google.com/spreadsheets/d/1qG9ja7NBSXTGJCPrd9l4Oc3OV4x3BqeM/edit?usp=drive_web&ouid=103670873570106061960&rtpof=true)
- [дополнительная информация по where и place](https://docs.google.com/spreadsheets/d/1woUARSK8NAdf7WTjH1hKn_9Y0NBNQJPv/edit?usp=drive_web&ouid=103670873570106061960&rtpof=true)

