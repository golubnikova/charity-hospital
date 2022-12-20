#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
path = 'CharityHospital_DATA_2022-11-02_1444_raw_data.csv'
data=read.csv(path, na.strings = '')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$age_calc)="Возраст"
label(data$date_bd)="Дата рождения (ДД-ММ-ГГГГ)"
label(data$gender)="Пол"
label(data$citizen)="Гражданство"
label(data$id_status)="Паспорт (любой)"
label(data$oms_status)="Полис ОМС"
label(data$sn_status)="СНИЛС"
label(data$kinonia_id___1)="Восстановление документов через Кинонию (choice=отправили в паспортный стол)"
label(data$kinonia_id___3)="Восстановление документов через Кинонию (choice=вернулся с информацией из паспортного стола)"
label(data$kinonia_id___2)="Восстановление документов через Кинонию (choice=выдана госпошлина)"
label(data$id_com)="Комментарий по документам"
label(data$id_regist)="Регистрация"
label(data$personal_date)="Согласие на обработку персональных данных заполнено?"
label(data$date_info)="Дата обновления информации"
label(data$daae_complete)="Complete?"
label(data$date_soc_inf)="Дата опроса"
label(data$tbi)="Анамнез со слов по ТБ"
label(data$tbi_com)="Комментарий по туберкулезу"
label(data$flg_date)="Дата проведения ФЛГ ОГК"
label(data$hiv_1)="ВИЧ-инфекция"
label(data$hb_1)="Гепатит В"
label(data$hc_1)="Гепатит С"
label(data$lues)="Сифилис"
label(data$artv)="Прием АРВТ"
label(data$cd4)="Количество CD4 клеток"
label(data$count_hiv)="Вирусная нагрузка"
label(data$nicotin)="никотиновая зависимость"
label(data$alcogolic)="алкогольная зависимость"
label(data$narco)="ПАВ инъекционно (вв,вм героин, метадон, соли и пр.)"
label(data$ne_narco)="ПАВ НЕинъекционно (курение, per os)"
label(data$infect_soc)="Комментарий по социально-значимым инфекциям и зависимостям"
label(data$daae_4bf8_complete)="Complete?"
label(data$date_chronic)="Дата опроса"
label(data$ch_ds_1)="Хронические заболевания #1"
label(data$ch_ds_2)="Хронические заболевания #2"
label(data$ch_ds_3)="Хронические заболевания #3"
label(data$ch_ds_4)="Хронические заболевания #4"
label(data$ch_ds_5)="Хронические заболевания #5"
label(data$medic_status)="Постоянный прием лекарственных препаратов"
label(data$an_vitae)="Анамнез жизни"
label(data$allergic)="Аллергия"
label(data$daae_e35c_complete)="Complete?"
label(data$date)="Дата и время приема"
label(data$where)="Место приема"
label(data$outreach_adress)="Адрес аутрича"
label(data$where_homless)="Где ночует пациент сегодня? (или где ночевал вчера?)"
label(data$ass_choice)="Вы ассистент? (то есть не врач; человек, не имеющий возможности в силу своей квалификации принимать медицинские решения о здоровье пациента и нести за них ответственность)?"
label(data$alc_status)="Опьянение (алкогольное, наркотическое)"
label(data$complaint_lite___9)="Жалобы  (choice=дыхательная система)"
label(data$complaint_lite___3)="Жалобы  (choice=желудочно-кишечный тракт (ЖКТ))"
label(data$complaint_lite___12)="Жалобы  (choice=сердечно-сосудистая система (ССС))"
label(data$complaint_lite___2)="Жалобы  (choice=мочеполовая система)"
label(data$complaint_lite___11)="Жалобы  (choice=опорно-двигательная система)"
label(data$complaint_lite___10)="Жалобы  (choice=ЦНС=психиатрия=ментальные нарушения)"
label(data$complaint_lite___6)="Жалобы  (choice=зрение)"
label(data$complaint_lite___13)="Жалобы  (choice=эндокринная система)"
label(data$complaint_lite___1)="Жалобы  (choice=болевой синдром)"
label(data$complaint_lite___8)="Жалобы  (choice=острая травма)"
label(data$complaint_lite___4)="Жалобы  (choice=сыпь)"
label(data$complaint_lite___5)="Жалобы  (choice=рана)"
label(data$complaint_lite___7)="Жалобы  (choice=жалоб не предъявляет/иные жалобы)"
label(data$complaint)="Другая причина обращения в ББ/жалобы развернуто"
label(data$anamnes_morbi)="Анамнез болезни"
label(data$temp)="Температура тела (Т)"
label(data$bp)="Артериальное давление (АД)"
label(data$lung_rate)="Частота дыхательных движений (ЧДД)"
label(data$spo2)="Сатурация (SpO2)"
label(data$cor_rate)="Частота сердечных сокращений (ЧСС)"
label(data$mucosa_status)="Слизистая ротоглотки"
label(data$mucosa_status_2)="Налеты на миндалинах"
label(data$nose_breath)="Дыхание через нос"
label(data$grud_kletka)="Грудная клетка"
label(data$cough___1)="Кашель (choice=сухой, малопродуктивный)"
label(data$cough___2)="Кашель (choice=влажный, продуктивный)"
label(data$cough___3)="Кашель (choice=приступообразный)"
label(data$cough___4)="Кашель (choice=преимущественно утром)"
label(data$cough___5)="Кашель (choice=постоянно в течение дня)"
label(data$cough___6)="Кашель (choice=мучительный, нарушает сон)"
label(data$sputum___1)="Мокрота (choice=слизистая)"
label(data$sputum___2)="Мокрота (choice=гнойная)"
label(data$sputum___3)="Мокрота (choice=слизисто-гнойная)"
label(data$sputum___4)="Мокрота (choice=скудное количество)"
label(data$sputum___5)="Мокрота (choice=умеренное количество)"
label(data$sputum___6)="Мокрота (choice=обильное количество)"
label(data$auskul)="Аускультативно дыхание"
label(data$hrip_ausk)="Хрипы"
label(data$abdomen_status)="Живот"
label(data$vomit___1)="Рвота (choice=неукротимая)"
label(data$vomit___2)="Рвота (choice=однократно)"
label(data$vomit___3)="Рвота (choice=съеденной пищей без пат. примесей)"
label(data$vomit___4)="Рвота (choice=с алой кровью)"
label(data$vomit___5)="Рвота (choice=с измененной кровью)"
label(data$ass___1)="Физиологические отправления (choice=мочеиспускание не нарушено, стул оформленный)"
label(data$ass___2)="Физиологические отправления (choice=признаки дизурии)"
label(data$ass___3)="Физиологические отправления (choice=диарея)"
label(data$ass___4)="Физиологические отправления (choice=мелена)"
label(data$oedema___1)="Отеки (choice=пастозность голеней)"
label(data$oedema___2)="Отеки (choice=отеки ног до паха)"
label(data$oedema___3)="Отеки (choice=отечность выше паха)"
label(data$oedema___4)="Отеки (choice=анасарка)"
label(data$oedema___5)="Отеки (choice=асцит)"
label(data$note)="Объективно"
label(data$ds)="Трактовка диагноза"
label(data$ds_icd_1)="Диагноз по МКБ-10 #1"
label(data$ds_icd_2)="Диагноз по МКБ-10 #2"
label(data$our_action___1)="Наши действия (choice=ведем амбулаторно)"
label(data$our_action___7)="Наши действия (choice=тестируем на инфекции)"
label(data$our_action___9)="Наши действия (choice=вакцинируем)"
label(data$our_action___2)="Наши действия (choice=проводим перевязку)"
label(data$our_action___4)="Наши действия (choice=оцениваем остроту зрения/выдаем очки)"
label(data$our_action___8)="Наши действия (choice=выдаем медикаменты)"
label(data$our_action___5)="Наши действия (choice=вызываем СМП)"
label(data$our_action___6)="Наши действия (choice=пациент отказался от госпитализации)"
label(data$ds_icd_3)="Диагноз по МКБ-10 #3"
label(data$treat)="Лечение"
label(data$place_clinic_id___1)="Пациенту выдано: (choice=согласие на медицинскую тайну)"
label(data$place_clinic_id___2)="Пациенту выдано: (choice=направление ф.057/у)"
label(data$place_clinic_id___15)="Пациенту выдано: (choice=справка ББ с фото)"
label(data$place_clinic_id___3)="Пациенту выдано: (choice=консультативное заключение)"
label(data$place_clinic_id___5)="Пациенту выдано: (choice=жетон на метро)"
label(data$place_clinic_id___6)="Пациенту выдано: (choice=БСК на метро)"
label(data$place_clinic_id___7)="Пациенту выдано: (choice=лайфпак М/Ж)"
label(data$place_clinic_id___9)="Пациенту выдано: (choice=спальник)"
label(data$place_clinic_id___10)="Пациенту выдано: (choice=мобильный телефон)"
label(data$place_clinic_id___12)="Пациенту выдано: (choice=SIM-карта к телефону)"
label(data$place_clinic_id___11)="Пациенту выдано: (choice=трость/костыль)"
label(data$place_clinic_id___13)="Пациенту выдано: (choice=тест на беременность)"
label(data$place_clinic_id___14)="Пациенту выдано: (choice=средства интимной гигиены (прокладки, тампоны) комплект)"
label(data$place)="Куда направили по ф.057/у или место госпитализации?"
label(data$daae_2d89_complete)="Complete?"
label(data$date_visus)="Дата оценки остроты зрения"
label(data$visus)="Характеристики необходимых очков"
label(data$od_vis)="OD"
label(data$od_sph)="sph"
label(data$od_cyl)="cyl"
label(data$od_ax)="ax"
label(data$os_vis)="OS"
label(data$os_sph)="sph"
label(data$os_cyl)="cyl"
label(data$os_ax)="ax"
label(data$od)="OD"
label(data$od_sph_2)="sph"
label(data$od_cyl_2)="cyl"
label(data$od_ax_2)="ax"
label(data$os)="OS"
label(data$os_sph_2)="sph"
label(data$os_ax_2)="ax"
label(data$os_cyl_2)="cyl"
label(data$dp)="Dp ="
label(data$vgd)="Прибор для измерения ВГД"
label(data$vgd_od)="ВГД OD"
label(data$vgd_os)="ВГД OS"
label(data$midriaz)="Мидриаз"
label(data$opht_od)="Офтальмоскопия. OD"
label(data$opht_os)="Офтальмоскопия. OS"
label(data$opht_recomend)="Рекомендации"
label(data$visus_rp)="Рецепт на очки"
label(data$glass_ocheche_store)="Куда направили? "
label(data$glass)="Откуда выдаем очки?"
label(data$od_get)="OD"
label(data$os_get)="OS"
label(data$dp_get)="Dp = "
label(data$glass_box)="Футляр"
label(data$visus_com)="Комментарий к остроте зрения/очкам от медика"
label(data$visus_com_2)="Комментарий к остроте зрения/очкам от координатора"
label(data$oder_glasses)="Статус заказа по очкам (отмечают координаторы по очкам ББ"
label(data$daae_2fcb_complete)="Complete?"
label(data$date_test)="Дата тестирования"
label(data$etest_type___1)="На что тестируем? (choice=ВИЧ-инфекция)"
label(data$etest_type___2)="На что тестируем? (choice=Вирусный гепатит С)"
label(data$etest_type___3)="На что тестируем? (choice=Вирусный гепатит В)"
label(data$etest_type___4)="На что тестируем? (choice=Сифилис)"
label(data$etest_type___5)="На что тестируем? (choice=COVID-19)"
label(data$etest_hiv)="Результат экспресс-теста на ВИЧ-инфекцию"
label(data$etest_hbsag)="Результат экспресс-теста на вирусный гепатит В"
label(data$etest_hcv)="Результат экспресс-теста на вирусный гепатит С"
label(data$etest_lues)="Результат экспресс-теста на сифилис"
label(data$etest_covid19)="Результат экспресс-теста на антигены COVID-19 (номер на бланке - ID пациента + дата, например 876 от 26.07.2022)"
label(data$glu)="Глюкоза крови"
label(data$lues_gorkvd)="Взят расширенный серологический анализ на сифилис (две пробирки венозной крови+направление)"
label(data$ddcd_c1aae9_complete)="Complete?"
label(data$date_vac)="Дата вакцинации"
label(data$vaccination___1)="Вакцинация против (choice=сезонного гриппа)"
label(data$vaccination___2)="Вакцинация против (choice=COVID-19)"
label(data$vaccination___4)="Вакцинация против (choice=пневмококковой инфекции (Превенар 13))"
label(data$vaccination___5)="Вакцинация против (choice=менингококковой инфекции (Менактра))"
label(data$vaccination___6)="Вакцинация против (choice=дифтерии, столбняка (АДС-М))"
label(data$vaccination___3)="Вакцинация против (choice=ничего из перечисленного/отказ)"
label(data$covid_vac)="COVID-19: Вакцина"
label(data$covid_vac_2)="COVID-19: Кратность введения"
label(data$flu_vac)="Грипп: Вакцина"
label(data$vaccination_com)="Комментарий к вакцинации"
label(data$ddcd_e65eb4_complete)="Complete?"
label(data$date_meddoc)="Дата загрузки"
label(data$medical_record)="Фото"
label(data$medical_record_com)="Комментарий"
label(data$daae_6135_complete)="Complete?"
label(data$date_soc)="Дата заполнения"
label(data$dd)="Выпускник детского дома"
label(data$education)="Образование"
label(data$family)="Семейное положение"
label(data$mls)="Был(а) в МЛС"
label(data$mls_data)="Дата освобождения из МЛС"
label(data$homeless_year)="С какого момента живет на улице?"
label(data$homeless_reason___1)="Причины бездомности (choice=Мошенничество/вымогательство (с жильем))"
label(data$homeless_reason___2)="Причины бездомности (choice=Осуждение к лишению свободы)"
label(data$homeless_reason___3)="Причины бездомности (choice=Семейные проблемы)"
label(data$homeless_reason___4)="Причины бездомности (choice=Вынужденный переселенец)"
label(data$homeless_reason___5)="Причины бездомности (choice=Выселение из служебного жилья)"
label(data$homeless_reason___6)="Причины бездомности (choice=Переезд в поисках работы)"
label(data$homeless_reason___7)="Причины бездомности (choice=Желание путешествовать/переезд в другой город)"
label(data$homeless_reason___8)="Причины бездомности (choice=Сгорело/пришло в негодность жилье)"
label(data$homeless_reason___9)="Причины бездомности (choice=Выпускник интерната)"
label(data$homeless_reason___10)="Причины бездомности (choice=Взыскание жилья за долги)"
label(data$homeless_reason___11)="Причины бездомности (choice=Конфликт с соседями)"
label(data$homeless_reason___12)="Причины бездомности (choice=Хим.зависимость)"
label(data$homeless_reason___13)="Причины бездомности (choice=Заболевания/травмы)"
label(data$homeless_reason___14)="Причины бездомности (choice=Потеря работы)"
label(data$homeless_reason___15)="Причины бездомности (choice=Потеря возможности снимать жилье)"
label(data$homeless_reason___16)="Причины бездомности (choice=Продажа жилья)"
label(data$homeless_reason___17)="Причины бездомности (choice=Украли крупную сумму денег)"
label(data$homeless_reason___18)="Причины бездомности (choice=Утрата документов)"
label(data$homeless_reason___19)="Причины бездомности (choice=Обманул работодатель)"
label(data$homeless_reason___20)="Причины бездомности (choice=Отказ от ответа)"
label(data$donate___1)="Источники существования (choice=Постоянная работа)"
label(data$donate___2)="Источники существования (choice=Временная работа)"
label(data$donate___3)="Источники существования (choice=Пенсия, пособие)"
label(data$donate___4)="Источники существования (choice=Подаяние)"
label(data$donate___5)="Источники существования (choice=Помощь близких и друзей)"
label(data$donate___6)="Источники существования (choice=Собирательство)"
label(data$donate___7)="Источники существования (choice=Благотворительность (в т.ч. церковная))"
label(data$donate___8)="Источники существования (choice=Рабочие дома)"
label(data$donate___9)="Источники существования (choice=Отказ от ответа)"
label(data$ddcd_complete)="Complete?"
label(data$date_women)="Дата опроса"
label(data$pregnant)="Беременность"
label(data$pregnant_com)="Комментарий по беременности"
label(data$ddcd_c0856b_complete)="Complete?"
label(data$date_soceffect)="Дата"
label(data$news_soc)="Новости по социальному сопровождению"
label(data$ddcd_1d3e03_complete)="Complete?"
label(data$date_wound)="Дата осмотра раны"
label(data$wound_foto)="Фото описываемой раны"
label(data$links_wound___1)="справа (choice=голова)"
label(data$links_wound___2)="справа (choice=лицо)"
label(data$links_wound___3)="справа (choice=шея)"
label(data$links_wound___4)="справа (choice=плечо)"
label(data$links_wound___5)="справа (choice=предплечье)"
label(data$links_wound___6)="справа (choice=кисть)"
label(data$links_wound___7)="справа (choice=грудь)"
label(data$links_wound___8)="справа (choice=живот)"
label(data$links_wound___9)="справа (choice=спина)"
label(data$links_wound___10)="справа (choice=бедро)"
label(data$links_wound___11)="справа (choice=голени)"
label(data$links_wound___12)="справа (choice=стопа)"
label(data$right_wound___1)="слева (choice=голова)"
label(data$right_wound___2)="слева (choice=лицо)"
label(data$right_wound___3)="слева (choice=шея)"
label(data$right_wound___4)="слева (choice=плечо)"
label(data$right_wound___5)="слева (choice=предплечье)"
label(data$right_wound___6)="слева (choice=кисть)"
label(data$right_wound___7)="слева (choice=грудь)"
label(data$right_wound___8)="слева (choice=живот)"
label(data$right_wound___9)="слева (choice=спина)"
label(data$right_wound___10)="слева (choice=бедро)"
label(data$right_wound___11)="слева (choice=голени)"
label(data$right_wound___12)="слева (choice=стопа)"
label(data$wound_size_l)="1а. Размер раны: длина"
label(data$wound_size_w)="1б. Размер раны: ширина"
label(data$wound_size_com)="Размер раны в см²"
label(data$wound_bottom)="2. Глубина раны"
label(data$wound_krai_2)="3. Края раны"
label(data$wound_krai)="4. Подрытие краев раны"
label(data$wound_type_necr)="5. Вид некротической ткани"
label(data$wound_necr_proc)="6. Количество некротической ткани"
label(data$wound_separate)="7. Тип отделяемого из раны"
label(data$wound_separate_2)="8. Количество отделяемого из раны"
label(data$wound_color)="9. Цвет кожи вокруг раны"
label(data$wound_oedema)="10. Отек вокруг раны"
label(data$wound_indur)="11. Индурация вокруг раны"
label(data$wound_granul)="12. Грануляционная ткань"
label(data$wound_dyn)="13. Эпителизация"
label(data$wound_result)="Сумма баллов по алгоритму оценки ран Бэйтс-Йенсен (в разработке)"
label(data$daae_e3d5_complete)="Complete?"
label(data$date_derma)="Дата"
label(data$rash_links___1)="слева (choice=голова)"
label(data$rash_links___2)="слева (choice=лицо)"
label(data$rash_links___3)="слева (choice=шея)"
label(data$rash_links___4)="слева (choice=плечо)"
label(data$rash_links___5)="слева (choice=предплечье)"
label(data$rash_links___6)="слева (choice=кисть)"
label(data$rash_links___7)="слева (choice=грудь)"
label(data$rash_links___8)="слева (choice=живот)"
label(data$rash_links___9)="слева (choice=спина)"
label(data$rash_links___10)="слева (choice=бедро)"
label(data$rash_links___11)="слева (choice=голени)"
label(data$rash_links___12)="слева (choice=стопа)"
label(data$rash_right___1)="справа (choice=голова)"
label(data$rash_right___2)="справа (choice=лицо)"
label(data$rash_right___3)="справа (choice=шея)"
label(data$rash_right___4)="справа (choice=плечо)"
label(data$rash_right___5)="справа (choice=предплечье)"
label(data$rash_right___6)="справа (choice=кисть)"
label(data$rash_right___7)="справа (choice=грудь)"
label(data$rash_right___8)="справа (choice=живот)"
label(data$rash_right___9)="справа (choice=спина)"
label(data$rash_right___10)="справа (choice=бедро)"
label(data$rash_right___11)="справа (choice=голени)"
label(data$rash_right___12)="справа (choice=стопа)"
label(data$rash_time___1)="Процесс (choice=острый (сыпь появилась резко, в течение нескольких недель))"
label(data$rash_time___2)="Процесс (choice=хронический (сыпь в течении нескольких месяцев, лет))"
label(data$rash_time___3)="Процесс (choice=есть признаки воспаления)"
label(data$rash_time___4)="Процесс (choice=нет признаков воспаления)"
label(data$rash_zud)="Зуд"
label(data$rash_type___1)="Первичные элементы сыпи (choice=пятно)"
label(data$rash_type___2)="Первичные элементы сыпи (choice=волдырь)"
label(data$rash_type___3)="Первичные элементы сыпи (choice=пузырь)"
label(data$rash_type___4)="Первичные элементы сыпи (choice=пузырек)"
label(data$rash_type___5)="Первичные элементы сыпи (choice=гнойничок)"
label(data$rash_type___6)="Первичные элементы сыпи (choice=узелок)"
label(data$rash_type___7)="Первичные элементы сыпи (choice=бугорок)"
label(data$rash_type_2___1)="Вторичные элементы сыпи (choice=нарушения пигментации)"
label(data$rash_type_2___2)="Вторичные элементы сыпи (choice=чешуйка)"
label(data$rash_type_2___3)="Вторичные элементы сыпи (choice=эрозия)"
label(data$rash_type_2___4)="Вторичные элементы сыпи (choice=экскориация)"
label(data$rash_type_2___5)="Вторичные элементы сыпи (choice=язва)"
label(data$rash_type_2___6)="Вторичные элементы сыпи (choice=трещина)"
label(data$rash_type_2___7)="Вторичные элементы сыпи (choice=корка)"
label(data$rash_type_2___8)="Вторичные элементы сыпи (choice=рубец и рубцовая атрофия)"
label(data$rash_type_2___9)="Вторичные элементы сыпи (choice=вегетация)"
label(data$rash_type_2___10)="Вторичные элементы сыпи (choice=лихенизация (лихенификация).)"
label(data$ddcd_db342c_complete)="Complete?"
label(data$date_psy)="Дата оценки"
label(data$coma)="Шкала ком Глазго. Открытие глаз (Eyes)"
label(data$coma_2)="Шкала ком Глазго. Вербальный ответ (Verbal)"
label(data$coma_3)="Шкала ком Глазго. Двигательный ответ (Motor)"
label(data$coma_4)="Оценка по шкале ком Глазго (в разработке)"
label(data$ddcd_213a8c_complete)="Complete?"
label(data$date_phq)="Дата оценки"
label(data$phq_1)="Вам не хотелось ничего делать"
label(data$phq9_complete)="Complete?"
label(data$medical_first_name)="Patient First Name"
label(data$medical_mi)="MI or Nickname"
label(data$medical_last_name)="Patient Last Name"
label(data$medical_sex)="Biological Sex at Birth"
label(data$medical_birthday)="Date of Birth"
label(data$medical_pharmacy)="Pharmacy"
label(data$insurance)=" Insurance From Street Intake:[medical_insurance][medical_pvt_insurance][medical_other_insurance] "
label(data$medical_insurance)="Do you have any kind of health care coverage? Pts Insurance from ID form: [insurance]"
label(data$medical_pvt_insurance)="What is the name of your health insurance provider?"
label(data$medical_other_insurance)="If Other chosen, please state."
label(data$currently_unhoused)="Currently experiencing unsheltered homelessness?"
label(data$below_poverty_line)="200% Below Poverty Line?"
label(data$vhcpp_form_qualified_fille)="VHCPP Form Qualified & Filled Out? "
label(data$upload_vhcpp_files)="Upload VHCPP Files"
label(data$upload_vhcpp_files_2)="Upload VHCPP Files 2"
label(data$medical_phone_number)="Phone Number"
label(data$email)="Email"
label(data$other_contact)="Other Contact"
label(data$preferred_method_of_contac)="Preferred method of contact"
label(data$medical_different_sex___1)="Check if this person identifies as a different gender. (choice=)"
label(data$medical_specify_gender)="Please specify your preferred gender:"
label(data$medical_language_v4___1)="Communicable Languages (choice=English)"
label(data$medical_language_v4___2)="Communicable Languages (choice=Spanish)"
label(data$medical_language_v4___3)="Communicable Languages (choice=Creole)"
label(data$medical_language_v4___5)="Communicable Languages (choice=Portuguese)"
label(data$medical_language_v4___4)="Communicable Languages (choice=Other)"
label(data$medical_language)="Preferred Language"
label(data$medical_other_language)="Other"
label(data$medical_country_origin)="Country of Origin"
label(data$medical_race)="Which one of the following would you say is your race/ethnicity?"
label(data$medical_race_other)="Race (Other)"
label(data$medical_genappearence_v2)="Note the patients general appearance and identifying features (i.e. a specific tattoo): Describe your patients well enough so another team member can recognize them. Include if they have a partner, family member, friend, or pet that they can often be found with."
label(data$otherpt_notes)="Other notes about this person:"
label(data$patient_id_complete)="Complete?"
label(data$social_current_date)="Todays Date"
label(data$medical_living_v3)="How long have you been homeless?"
label(data$medical_housing)="Do you currently have a safe place to stay? "
label(data$medical_local_shelters)="Would you like information/resources on local shelters? "
label(data$medical_housing3years)="In the past 3 years, have you ever NOT had a safe place to stay? "
label(data$social_home___0)="Where are you currently staying the night? (choice=Shelter)"
label(data$social_home___1)="Where are you currently staying the night? (choice=Outside)"
label(data$social_home___2)="Where are you currently staying the night? (choice=Car)"
label(data$social_home___3)="Where are you currently staying the night? (choice=Building)"
label(data$social_home___4)="Where are you currently staying the night? (choice=Other)"
label(data$social_begin_date)="When did you begin staying there?"
label(data$social_calc_length_stay)="Length of time residing at the current location (in days)"
label(data$social_home_explain)="Explain where youre currently staying the night. "
label(data$social_prior_residence)="Where were you staying before?"
label(data$social_other_curr_places)="Have you been staying at other places, as well?"
label(data$social_other_curr_pl_desc)="How would you describe these other places?"
label(data$social_stable_housing_3yr)="Have you had any periods of stable housing over the past three years?"
label(data$social_stable_housing_desc)="Describe the periods of stable housing"
label(data$social_3yr_shelter)="In the past three years, have you been unsheltered at any point?"
label(data$social_begin_unshelter)="When did you first deal with a lack of shelter? (best estimate)"
label(data$social_freq_unshelter)="About how often have you found yourself unsheltered in the past 3 years?"
label(data$social_live_prior_orig)="Before you were sleeping on the streets or in shelters, where were you living?"
label(data$social_live_prior_return)="Do you ever go back there?"
label(data$social_live_orig_left)="How long ago was that? (best estimate)"
label(data$medical_sleep_v2)="Are you able to sleep?"
label(data$medical_sleepnotes_v2)="Tell me more"
label(data$social_accessible_services___0)="Services that come to you outside (select all that apply) (choice=Showers)"
label(data$social_accessible_services___1)="Services that come to you outside (select all that apply) (choice=Food)"
label(data$social_accessible_services___2)="Services that come to you outside (select all that apply) (choice=Laundry)"
label(data$social_accessible_services___3)="Services that come to you outside (select all that apply) (choice=Hygiene)"
label(data$social_accessible_services___4)="Services that come to you outside (select all that apply) (choice=Legal help)"
label(data$social_accessible_services___5)="Services that come to you outside (select all that apply) (choice=Needle Exchange)"
label(data$social_accessible_services___6)="Services that come to you outside (select all that apply) (choice=Medical)"
label(data$social_service_shower)="How often do you use the shower service? (per month)"
label(data$social_service_food)="How often do you use the food service? (per month)"
label(data$social_service_laundry)="How often do you use the laundry service? (per month)"
label(data$social_service_hygiene)="How often do you use the hygiene service? (per month)"
label(data$social_service_legal)="How often do you use the legal help service? (per month)"
label(data$social_service_needle_ex)="How often do you use the needle exchange service? (per month)"
label(data$social_service_medical)="How often do you use the medical service? (per month)"
label(data$social_primary_hc)="Do you have primary healthcare?"
label(data$social_primaryhc2)="Please explain your primary healthcare:"
label(data$social_er_visit)="Have you visited the ER in the past year?"
label(data$social_er_visits_past_yr)="How many times have you visited the ER in the past year?"
label(data$social_er_visit_reasons___2)="In the past year, have you visited the ER for any of the following reasons: (choice=Wound Care)"
label(data$social_er_visit_reasons___1)="In the past year, have you visited the ER for any of the following reasons: (choice=Medications)"
label(data$social_er_visit_reasons___0)="In the past year, have you visited the ER for any of the following reasons: (choice=Other)"
label(data$social_er_visit_explain)="If other reasons was selected, why did you visit the ER?"
label(data$social_past_hosp)="Have you been hospitalized/kept in the hospital outside of the ER in the past year?"
label(data$social_hosp_stay_count)="How many times have you been hospitalized/kept in the hospital the past year?"
label(data$social_hosp_stay_loc)="Where were you hospitalized?"
label(data$social_past_hosp_reason)="Why were you hospitalized?"
label(data$social_past_hosp_dt_st)="Date(s) of admission: (starting from most recent)"
label(data$social_past_hosp_dt_end)="Date(s) of discharge: (starting from most recent)"
label(data$social_er_hct_resp_rating)="In regards to emergency room visits,  Please rate: The healthcare team respects me (1 - yes, very much so, 5 - not at all, I feel judged and/or uncomfortable) "
label(data$social_er_hct_need_rating)="In regards to emergency room visits,  Please rate: My healthcare needs are met by the healthcare team? (1 - yes, definitely, 5 - not at all)"
label(data$social_er_hct_apt_con)="In regards to emergency room visits,  Please rate: After leaving my appointment, I know what to do next in terms of obtaining and taking medications, follow-up appointments, and how to protect my health. (1 - strongly agree, 5 - strongly disagree)"
label(data$social_pcp_care_use)="Have you used any primary care services?"
label(data$social_pcp_apt_timing)="In regards to primary care services, how long does it take to get an appointment?"
label(data$social_pcp_apt_rating)="In regards to primary care services, please rate: How easily are appointments made: ( 1 - very easy, 5 - very difficult)"
label(data$social_pcp_hct_resp_rating)="In regards to primary care services, please rate: The healthcare team respects me: ( 1 - yes very much so, 5 - not at all, I feel judged and/or uncomfortable)"
label(data$social_pcp_hct_need_rating)="In regards to primary care services, please rate: My healthcare needs are met by the healthcare team: ( 1 - strongly agree, 5 - strongly disagree)"
label(data$social_pcp_hct_apt_con)="In regards to primary care services, please rate:   After leaving my appointment, I know what to do next in terms of obtaining and taking medications, follow-up appointments, and how to protect my health. (1 - strongly agree, 5 - strongly disagree)"
label(data$social_rx_location)="If needed, where do you obtain prescription medications?"
label(data$social_rx_explain)="Please explain where you obtain prescription medicines:"
label(data$social_med_specialist)="Have you seen a medical specialist? (surgeon, urologist, etc.)"
label(data$social_soc_serv_util___5)="What social services do you use? (select all that apply) (choice=Soup Kitchens)"
label(data$social_soc_serv_util___4)="What social services do you use? (select all that apply) (choice=Food bank)"
label(data$social_soc_serv_util___3)="What social services do you use? (select all that apply) (choice=Day Shelter)"
label(data$social_soc_serv_util___2)="What social services do you use? (select all that apply) (choice=Clothing Closet)"
label(data$social_soc_serv_util___1)="What social services do you use? (select all that apply) (choice=Job assistance)"
label(data$social_soc_serv_util___0)="What social services do you use? (select all that apply) (choice=Legal assistance)"
label(data$social_soc_serv_wanted)="What social services do you want to have access to?"
label(data$social_judg_sys_involv___2)="Have you had any involvement with the judicial system? (select all that apply) (choice=Tickets)"
label(data$social_judg_sys_involv___1)="Have you had any involvement with the judicial system? (select all that apply) (choice=Imprisonment)"
label(data$social_judg_sys_involv___0)="Have you had any involvement with the judicial system? (select all that apply) (choice=No involvement)"
label(data$social_judg_sys_aid)="Do you have any services that help you deal with judicial problems? (parole, legal paperwork)"
label(data$medical_employed)="Are you employed?"
label(data$medical_occupation)="What do you do for money?"
label(data$medical_unemployed)="What would you like to do?"
label(data$social_income_type___6)="Do you have any of the following forms of income? (select all that apply) (choice=Welfare/state support)"
label(data$social_income_type___5)="Do you have any of the following forms of income? (select all that apply) (choice=SNAP Food Benefits (Food Stamps))"
label(data$social_income_type___4)="Do you have any of the following forms of income? (select all that apply) (choice=Odd Jobs)"
label(data$social_income_type___3)="Do you have any of the following forms of income? (select all that apply) (choice=Asking for money on the street (Panhandling))"
label(data$social_income_type___2)="Do you have any of the following forms of income? (select all that apply) (choice=Selling drugs)"
label(data$social_income_type___1)="Do you have any of the following forms of income? (select all that apply) (choice=Sex Work)"
label(data$social_income_type___0)="Do you have any of the following forms of income? (select all that apply) (choice=Other)"
label(data$social_income_other_desc)="If other selected, could you provide more detail:"
label(data$social_money_storage___2)="How do you store your money? (please select all that apply) (choice=Cash - on person)"
label(data$social_money_storage___1)="How do you store your money? (please select all that apply) (choice=Cash - hidden or with family/friend)"
label(data$social_money_storage___0)="How do you store your money? (please select all that apply) (choice=Bank Account - Debit Card)"
label(data$social_money_safety)="Do you know how you could attain a bank account or store money safely if you wanted to?"
label(data$social_id_forms___0)="What forms of identification do you possess? (choice=Drivers License)"
label(data$social_id_forms___1)="What forms of identification do you possess? (choice=State Identification Card)"
label(data$social_id_forms___2)="What forms of identification do you possess? (choice=Social Security Card)"
label(data$social_id_forms___3)="What forms of identification do you possess? (choice=Birth Certificate)"
label(data$social_id_current)="Are any of these forms of ID current?"
label(data$social_id_obtain)="Do you know how you could obtain identification or find help to obtain identification?"
label(data$medical_diet)="How is your diet?"
label(data$medical_nextmeal)="Are you ever uncertain how you will get your next meal?"
label(data$medical_food)="Where do you get your food?"
label(data$social_food_obtain___0)="Where do you usually get food? (choice=Soup Kitchen)"
label(data$social_food_obtain___1)="Where do you usually get food? (choice=Outreach Group)"
label(data$social_food_obtain___2)="Where do you usually get food? (choice=Shelter)"
label(data$social_food_obtain___3)="Where do you usually get food? (choice=Day Center)"
label(data$social_food_obtain___4)="Where do you usually get food? (choice=Church)"
label(data$social_food_obtain___5)="Where do you usually get food? (choice=Convenience Store)"
label(data$social_food_soup)="What soup kitchen do you get food from?"
label(data$social_food_outreach)="What Outreach Group do you get food from?"
label(data$social_food_shelter)="What shelter do you get food from?"
label(data$social_food_day_center)="What day center do you get food from?"
label(data$social_food_church)="What church do you get food from?"
label(data$social_food_convenience)="What convenience store do you get your food from?"
label(data$social_food_meals)="How many hot meals/full meals do you normally eat in a day?"
label(data$social_food_snacks)="How many snacks do you normally eat in a day?"
label(data$social_food_types___0)="Do you eat any of the following foods? (choice=Carbohydrates (Bread, Rice, Pasta))"
label(data$social_food_types___1)="Do you eat any of the following foods? (choice=Meat)"
label(data$social_food_types___2)="Do you eat any of the following foods? (choice=Vegetables)"
label(data$social_food_types___3)="Do you eat any of the following foods? (choice=Fruit)"
label(data$social_food_types___4)="Do you eat any of the following foods? (choice=Sweets)"
label(data$social_food_types___5)="Do you eat any of the following foods? (choice=Chips/Packaged Snacks)"
label(data$social_food_carbs)="How often do you eat Carbohydrates?"
label(data$social_food_meat)="How often do you eat meat?"
label(data$social_food_veggies)="How often do you eat vegetables?"
label(data$social_food_fruit)="How often do you eat fruit?"
label(data$social_food_sweets)="How often do you eat sweets?"
label(data$social_food_chips)="How often do you eat chips/packaged snacks?"
label(data$social_food_wish)="What foods do you wish you had?"
label(data$medical_exercise)="Do you do any exercise? "
label(data$medical_exercisenotes)="What exercise do you do?"
label(data$social_drink_amount)="How much water do you normally drink in a day?"
label(data$social_drink_source___0)="What is your normal source of water? (choice=New bottles of water)"
label(data$social_drink_source___1)="What is your normal source of water? (choice=Water fountain)"
label(data$social_drink_source___2)="What is your normal source of water? (choice=Bathroom sink)"
label(data$social_drink_source___3)="What is your normal source of water? (choice=Hose)"
label(data$social_drink_source___4)="What is your normal source of water? (choice=Other)"
label(data$social_drink_other)="Describe your other source of water."
label(data$social_drink_purify)="If your water comes from an untreated source (hose, natural source), do you attempt to purify it?"
label(data$social_drink_purify_how)="How do you attempt to purify the water?"
label(data$medical_caffeineyn)="Do you drink caffeine?"
label(data$medical_caffeine)="How many caffeinated drinks do you have a week?"
label(data$social_bathroom_access)="When do you have access to a toilet?"
label(data$social_bathroom_accessibility)="How accessible is the toilet? (1 - Easily Accessible, 5 - Very cumbersome or difficult to access)"
label(data$social_bathroom_why)="Explain why or why not the toilet is accessible."
label(data$social_bathe_freq)="How often do you shower/bathe?"
label(data$social_bathe_location___0)="Where do you shower/bathe? (choice=Day shelter)"
label(data$social_bathe_location___1)="Where do you shower/bathe? (choice=Overnight shelter)"
label(data$social_bathe_location___2)="Where do you shower/bathe? (choice=Beach bathroom/shower)"
label(data$social_bathe_location___3)="Where do you shower/bathe? (choice=Other public bathroom)"
label(data$social_bathe_location___4)="Where do you shower/bathe? (choice=Other private (business) bathroom)"
label(data$social_sleep_location)="What is your exact sleeping location?"
label(data$social_sleep_cover___0)="What type of shelter is used? (choice=Inside a building)"
label(data$social_sleep_cover___1)="What type of shelter is used? (choice=Next to/beside a building with overhang protection)"
label(data$social_sleep_cover___2)="What type of shelter is used? (choice=Overpass)"
label(data$social_sleep_cover___3)="What type of shelter is used? (choice=Tent)"
label(data$social_sleep_cover___4)="What type of shelter is used? (choice=Blanket Fort)"
label(data$social_sleep_cover___5)="What type of shelter is used? (choice=Blanket)"
label(data$social_sleep_cover___6)="What type of shelter is used? (choice=Umbrella)"
label(data$social_sleep_position___0)="What position are you in while sleeping? (choice=Lying down on bench)"
label(data$social_sleep_position___1)="What position are you in while sleeping? (choice=Lying down on ground)"
label(data$social_sleep_position___2)="What position are you in while sleeping? (choice=Sitting up on bench)"
label(data$social_sleep_position___3)="What position are you in while sleeping? (choice=Sitting up on ground)"
label(data$social_sleep_time___0)="What time of day do you sleep? (choice=Night (8pm-5am))"
label(data$social_sleep_time___1)="What time of day do you sleep? (choice=Morning (5am-10am))"
label(data$social_sleep_time___2)="What time of day do you sleep? (choice=During Afternoon (10am-5pm))"
label(data$social_sleep_time___3)="What time of day do you sleep? (choice=During Evening (5pm-8pm))"
label(data$social_sleep_time___4)="What time of day do you sleep? (choice=No pattern - always changes)"
label(data$social_sleep_duration)="How many hours do you sleep at a time?"
label(data$social_sleep_safety)="I feel safe when I sleep every night (1-strongly agree, 5-strongly disagree)"
label(data$social_fears___0)="What fears do you have? (choice=Being robbed)"
label(data$social_fears___1)="What fears do you have? (choice=Being attacked)"
label(data$social_fears___2)="What fears do you have? (choice=Being sexually assaulted)"
label(data$social_fears___3)="What fears do you have? (choice=Police, law enforcement harassment, fines, arrest)"
label(data$social_fears___4)="What fears do you have? (choice=Other)"
label(data$social_fears_other)="Describe your other fears."
label(data$social_sleep_harm)="Have you ever been harmed by someone while sleeping on the streets and/or in a shelter?"
label(data$medical_marital)="What is your marital status?"
label(data$social_other)="Is there anything else you wanted to tell us about your history or living situation? Please describe."
label(data$patient_navigation_full_intake_complete)="Complete?"
label(data$qqqqqq)="й"
label(data$pain)="Визуально-аналоговая шкала боли"
label(data$patient_status)="Состояние"
label(data$psy_status)="Сознание"
label(data$ddcd_f5fa75_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("daae_2d89","daae_2fcb","ddcd_c1aae9","ddcd_e65eb4","daae_6135","ddcd_c0856b","ddcd_1d3e03","daae_e3d5","ddcd_db342c","ddcd_213a8c","phq9"))
data$gender.factor = factor(data$gender,levels=c("1","2"))
data$citizen.factor = factor(data$citizen,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217"))
data$id_status.factor = factor(data$id_status,levels=c("1","2","3","4","5"))
data$oms_status.factor = factor(data$oms_status,levels=c("1","2","3","4","5"))
data$sn_status.factor = factor(data$sn_status,levels=c("1","2","3","4","5"))
data$kinonia_id___1.factor = factor(data$kinonia_id___1,levels=c("0","1"))
data$kinonia_id___3.factor = factor(data$kinonia_id___3,levels=c("0","1"))
data$kinonia_id___2.factor = factor(data$kinonia_id___2,levels=c("0","1"))
data$id_regist.factor = factor(data$id_regist,levels=c("1","2","3","4"))
data$personal_date.factor = factor(data$personal_date,levels=c("1","2"))
data$daae_complete.factor = factor(data$daae_complete,levels=c("0","1","2"))
data$tbi.factor = factor(data$tbi,levels=c("1","2","3","4","5"))
data$hiv_1.factor = factor(data$hiv_1,levels=c("1","2","3"))
data$hb_1.factor = factor(data$hb_1,levels=c("1","2","3"))
data$hc_1.factor = factor(data$hc_1,levels=c("1","2","3"))
data$lues.factor = factor(data$lues,levels=c("1","2"))
data$artv.factor = factor(data$artv,levels=c("1","2"))
data$nicotin.factor = factor(data$nicotin,levels=c("1","2","3"))
data$alcogolic.factor = factor(data$alcogolic,levels=c("1","2","3"))
data$narco.factor = factor(data$narco,levels=c("1","2","3"))
data$ne_narco.factor = factor(data$ne_narco,levels=c("1","2","3"))
data$daae_4bf8_complete.factor = factor(data$daae_4bf8_complete,levels=c("0","1","2"))
data$daae_e35c_complete.factor = factor(data$daae_e35c_complete,levels=c("0","1","2"))
data$where.factor = factor(data$where,levels=c("1","2","3","4","5","6","7","20","21","22","8","9","10","11","12","13","14","15","16","17","18","19","23"))
data$where_homless.factor = factor(data$where_homless,levels=c("1","16","14","17","2","3","4","12","5","6","11","7","8","9","13","15","10"))
data$ass_choice.factor = factor(data$ass_choice,levels=c("1","2"))
data$alc_status.factor = factor(data$alc_status,levels=c("1","2","3"))
data$complaint_lite___9.factor = factor(data$complaint_lite___9,levels=c("0","1"))
data$complaint_lite___3.factor = factor(data$complaint_lite___3,levels=c("0","1"))
data$complaint_lite___12.factor = factor(data$complaint_lite___12,levels=c("0","1"))
data$complaint_lite___2.factor = factor(data$complaint_lite___2,levels=c("0","1"))
data$complaint_lite___11.factor = factor(data$complaint_lite___11,levels=c("0","1"))
data$complaint_lite___10.factor = factor(data$complaint_lite___10,levels=c("0","1"))
data$complaint_lite___6.factor = factor(data$complaint_lite___6,levels=c("0","1"))
data$complaint_lite___13.factor = factor(data$complaint_lite___13,levels=c("0","1"))
data$complaint_lite___1.factor = factor(data$complaint_lite___1,levels=c("0","1"))
data$complaint_lite___8.factor = factor(data$complaint_lite___8,levels=c("0","1"))
data$complaint_lite___4.factor = factor(data$complaint_lite___4,levels=c("0","1"))
data$complaint_lite___5.factor = factor(data$complaint_lite___5,levels=c("0","1"))
data$complaint_lite___7.factor = factor(data$complaint_lite___7,levels=c("0","1"))
data$mucosa_status.factor = factor(data$mucosa_status,levels=c("1","2"))
data$mucosa_status_2.factor = factor(data$mucosa_status_2,levels=c("1","2"))
data$nose_breath.factor = factor(data$nose_breath,levels=c("1","2"))
data$grud_kletka.factor = factor(data$grud_kletka,levels=c("1","2"))
data$cough___1.factor = factor(data$cough___1,levels=c("0","1"))
data$cough___2.factor = factor(data$cough___2,levels=c("0","1"))
data$cough___3.factor = factor(data$cough___3,levels=c("0","1"))
data$cough___4.factor = factor(data$cough___4,levels=c("0","1"))
data$cough___5.factor = factor(data$cough___5,levels=c("0","1"))
data$cough___6.factor = factor(data$cough___6,levels=c("0","1"))
data$sputum___1.factor = factor(data$sputum___1,levels=c("0","1"))
data$sputum___2.factor = factor(data$sputum___2,levels=c("0","1"))
data$sputum___3.factor = factor(data$sputum___3,levels=c("0","1"))
data$sputum___4.factor = factor(data$sputum___4,levels=c("0","1"))
data$sputum___5.factor = factor(data$sputum___5,levels=c("0","1"))
data$sputum___6.factor = factor(data$sputum___6,levels=c("0","1"))
data$auskul.factor = factor(data$auskul,levels=c("1","2","3"))
data$hrip_ausk.factor = factor(data$hrip_ausk,levels=c("1","2","3"))
data$abdomen_status.factor = factor(data$abdomen_status,levels=c("1","2"))
data$vomit___1.factor = factor(data$vomit___1,levels=c("0","1"))
data$vomit___2.factor = factor(data$vomit___2,levels=c("0","1"))
data$vomit___3.factor = factor(data$vomit___3,levels=c("0","1"))
data$vomit___4.factor = factor(data$vomit___4,levels=c("0","1"))
data$vomit___5.factor = factor(data$vomit___5,levels=c("0","1"))
data$ass___1.factor = factor(data$ass___1,levels=c("0","1"))
data$ass___2.factor = factor(data$ass___2,levels=c("0","1"))
data$ass___3.factor = factor(data$ass___3,levels=c("0","1"))
data$ass___4.factor = factor(data$ass___4,levels=c("0","1"))
data$oedema___1.factor = factor(data$oedema___1,levels=c("0","1"))
data$oedema___2.factor = factor(data$oedema___2,levels=c("0","1"))
data$oedema___3.factor = factor(data$oedema___3,levels=c("0","1"))
data$oedema___4.factor = factor(data$oedema___4,levels=c("0","1"))
data$oedema___5.factor = factor(data$oedema___5,levels=c("0","1"))
data$ds_icd_1.factor = factor(data$ds_icd_1,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19"))
data$ds_icd_2.factor = factor(data$ds_icd_2,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18"))
data$our_action___1.factor = factor(data$our_action___1,levels=c("0","1"))
data$our_action___7.factor = factor(data$our_action___7,levels=c("0","1"))
data$our_action___9.factor = factor(data$our_action___9,levels=c("0","1"))
data$our_action___2.factor = factor(data$our_action___2,levels=c("0","1"))
data$our_action___4.factor = factor(data$our_action___4,levels=c("0","1"))
data$our_action___8.factor = factor(data$our_action___8,levels=c("0","1"))
data$our_action___5.factor = factor(data$our_action___5,levels=c("0","1"))
data$our_action___6.factor = factor(data$our_action___6,levels=c("0","1"))
data$ds_icd_3.factor = factor(data$ds_icd_3,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18"))
data$place_clinic_id___1.factor = factor(data$place_clinic_id___1,levels=c("0","1"))
data$place_clinic_id___2.factor = factor(data$place_clinic_id___2,levels=c("0","1"))
data$place_clinic_id___15.factor = factor(data$place_clinic_id___15,levels=c("0","1"))
data$place_clinic_id___3.factor = factor(data$place_clinic_id___3,levels=c("0","1"))
data$place_clinic_id___5.factor = factor(data$place_clinic_id___5,levels=c("0","1"))
data$place_clinic_id___6.factor = factor(data$place_clinic_id___6,levels=c("0","1"))
data$place_clinic_id___7.factor = factor(data$place_clinic_id___7,levels=c("0","1"))
data$place_clinic_id___9.factor = factor(data$place_clinic_id___9,levels=c("0","1"))
data$place_clinic_id___10.factor = factor(data$place_clinic_id___10,levels=c("0","1"))
data$place_clinic_id___12.factor = factor(data$place_clinic_id___12,levels=c("0","1"))
data$place_clinic_id___11.factor = factor(data$place_clinic_id___11,levels=c("0","1"))
data$place_clinic_id___13.factor = factor(data$place_clinic_id___13,levels=c("0","1"))
data$place_clinic_id___14.factor = factor(data$place_clinic_id___14,levels=c("0","1"))
data$daae_2d89_complete.factor = factor(data$daae_2d89_complete,levels=c("0","1","2"))
data$visus.factor = factor(data$visus,levels=c("1","2","3","4"))
data$vgd.factor = factor(data$vgd,levels=c("1","2"))
data$midriaz.factor = factor(data$midriaz,levels=c("1","2"))
data$glass_ocheche_store.factor = factor(data$glass_ocheche_store,levels=c("1","2","3"))
data$glass.factor = factor(data$glass,levels=c("1","2"))
data$glass_box.factor = factor(data$glass_box,levels=c("1","2"))
data$oder_glasses.factor = factor(data$oder_glasses,levels=c("1","2","3","4"))
data$daae_2fcb_complete.factor = factor(data$daae_2fcb_complete,levels=c("0","1","2"))
data$etest_type___1.factor = factor(data$etest_type___1,levels=c("0","1"))
data$etest_type___2.factor = factor(data$etest_type___2,levels=c("0","1"))
data$etest_type___3.factor = factor(data$etest_type___3,levels=c("0","1"))
data$etest_type___4.factor = factor(data$etest_type___4,levels=c("0","1"))
data$etest_type___5.factor = factor(data$etest_type___5,levels=c("0","1"))
data$etest_hiv.factor = factor(data$etest_hiv,levels=c("1","2","3","4"))
data$etest_hbsag.factor = factor(data$etest_hbsag,levels=c("1","2","3","4"))
data$etest_hcv.factor = factor(data$etest_hcv,levels=c("1","2","3","4"))
data$etest_lues.factor = factor(data$etest_lues,levels=c("1","2","3","4"))
data$etest_covid19.factor = factor(data$etest_covid19,levels=c("1","2","3","4"))
data$lues_gorkvd.factor = factor(data$lues_gorkvd,levels=c("1","0"))
data$ddcd_c1aae9_complete.factor = factor(data$ddcd_c1aae9_complete,levels=c("0","1","2"))
data$vaccination___1.factor = factor(data$vaccination___1,levels=c("0","1"))
data$vaccination___2.factor = factor(data$vaccination___2,levels=c("0","1"))
data$vaccination___4.factor = factor(data$vaccination___4,levels=c("0","1"))
data$vaccination___5.factor = factor(data$vaccination___5,levels=c("0","1"))
data$vaccination___6.factor = factor(data$vaccination___6,levels=c("0","1"))
data$vaccination___3.factor = factor(data$vaccination___3,levels=c("0","1"))
data$covid_vac.factor = factor(data$covid_vac,levels=c("1","2"))
data$covid_vac_2.factor = factor(data$covid_vac_2,levels=c("1","2","3"))
data$flu_vac.factor = factor(data$flu_vac,levels=c("1","2","3"))
data$ddcd_e65eb4_complete.factor = factor(data$ddcd_e65eb4_complete,levels=c("0","1","2"))
data$daae_6135_complete.factor = factor(data$daae_6135_complete,levels=c("0","1","2"))
data$dd.factor = factor(data$dd,levels=c("1","3","2"))
data$education.factor = factor(data$education,levels=c("1","2","3","4","5","6","7"))
data$family.factor = factor(data$family,levels=c("1","2","3","4"))
data$mls.factor = factor(data$mls,levels=c("1","2","3"))
data$homeless_reason___1.factor = factor(data$homeless_reason___1,levels=c("0","1"))
data$homeless_reason___2.factor = factor(data$homeless_reason___2,levels=c("0","1"))
data$homeless_reason___3.factor = factor(data$homeless_reason___3,levels=c("0","1"))
data$homeless_reason___4.factor = factor(data$homeless_reason___4,levels=c("0","1"))
data$homeless_reason___5.factor = factor(data$homeless_reason___5,levels=c("0","1"))
data$homeless_reason___6.factor = factor(data$homeless_reason___6,levels=c("0","1"))
data$homeless_reason___7.factor = factor(data$homeless_reason___7,levels=c("0","1"))
data$homeless_reason___8.factor = factor(data$homeless_reason___8,levels=c("0","1"))
data$homeless_reason___9.factor = factor(data$homeless_reason___9,levels=c("0","1"))
data$homeless_reason___10.factor = factor(data$homeless_reason___10,levels=c("0","1"))
data$homeless_reason___11.factor = factor(data$homeless_reason___11,levels=c("0","1"))
data$homeless_reason___12.factor = factor(data$homeless_reason___12,levels=c("0","1"))
data$homeless_reason___13.factor = factor(data$homeless_reason___13,levels=c("0","1"))
data$homeless_reason___14.factor = factor(data$homeless_reason___14,levels=c("0","1"))
data$homeless_reason___15.factor = factor(data$homeless_reason___15,levels=c("0","1"))
data$homeless_reason___16.factor = factor(data$homeless_reason___16,levels=c("0","1"))
data$homeless_reason___17.factor = factor(data$homeless_reason___17,levels=c("0","1"))
data$homeless_reason___18.factor = factor(data$homeless_reason___18,levels=c("0","1"))
data$homeless_reason___19.factor = factor(data$homeless_reason___19,levels=c("0","1"))
data$homeless_reason___20.factor = factor(data$homeless_reason___20,levels=c("0","1"))
data$donate___1.factor = factor(data$donate___1,levels=c("0","1"))
data$donate___2.factor = factor(data$donate___2,levels=c("0","1"))
data$donate___3.factor = factor(data$donate___3,levels=c("0","1"))
data$donate___4.factor = factor(data$donate___4,levels=c("0","1"))
data$donate___5.factor = factor(data$donate___5,levels=c("0","1"))
data$donate___6.factor = factor(data$donate___6,levels=c("0","1"))
data$donate___7.factor = factor(data$donate___7,levels=c("0","1"))
data$donate___8.factor = factor(data$donate___8,levels=c("0","1"))
data$donate___9.factor = factor(data$donate___9,levels=c("0","1"))
data$ddcd_complete.factor = factor(data$ddcd_complete,levels=c("0","1","2"))
data$pregnant.factor = factor(data$pregnant,levels=c("1","2","3","4","5","6"))
data$ddcd_c0856b_complete.factor = factor(data$ddcd_c0856b_complete,levels=c("0","1","2"))
data$ddcd_1d3e03_complete.factor = factor(data$ddcd_1d3e03_complete,levels=c("0","1","2"))
data$links_wound___1.factor = factor(data$links_wound___1,levels=c("0","1"))
data$links_wound___2.factor = factor(data$links_wound___2,levels=c("0","1"))
data$links_wound___3.factor = factor(data$links_wound___3,levels=c("0","1"))
data$links_wound___4.factor = factor(data$links_wound___4,levels=c("0","1"))
data$links_wound___5.factor = factor(data$links_wound___5,levels=c("0","1"))
data$links_wound___6.factor = factor(data$links_wound___6,levels=c("0","1"))
data$links_wound___7.factor = factor(data$links_wound___7,levels=c("0","1"))
data$links_wound___8.factor = factor(data$links_wound___8,levels=c("0","1"))
data$links_wound___9.factor = factor(data$links_wound___9,levels=c("0","1"))
data$links_wound___10.factor = factor(data$links_wound___10,levels=c("0","1"))
data$links_wound___11.factor = factor(data$links_wound___11,levels=c("0","1"))
data$links_wound___12.factor = factor(data$links_wound___12,levels=c("0","1"))
data$right_wound___1.factor = factor(data$right_wound___1,levels=c("0","1"))
data$right_wound___2.factor = factor(data$right_wound___2,levels=c("0","1"))
data$right_wound___3.factor = factor(data$right_wound___3,levels=c("0","1"))
data$right_wound___4.factor = factor(data$right_wound___4,levels=c("0","1"))
data$right_wound___5.factor = factor(data$right_wound___5,levels=c("0","1"))
data$right_wound___6.factor = factor(data$right_wound___6,levels=c("0","1"))
data$right_wound___7.factor = factor(data$right_wound___7,levels=c("0","1"))
data$right_wound___8.factor = factor(data$right_wound___8,levels=c("0","1"))
data$right_wound___9.factor = factor(data$right_wound___9,levels=c("0","1"))
data$right_wound___10.factor = factor(data$right_wound___10,levels=c("0","1"))
data$right_wound___11.factor = factor(data$right_wound___11,levels=c("0","1"))
data$right_wound___12.factor = factor(data$right_wound___12,levels=c("0","1"))
data$wound_bottom.factor = factor(data$wound_bottom,levels=c("1","2","3","4","5"))
data$wound_krai_2.factor = factor(data$wound_krai_2,levels=c("1","2","3","4","5"))
data$wound_krai.factor = factor(data$wound_krai,levels=c("1","2","3","4","5"))
data$wound_type_necr.factor = factor(data$wound_type_necr,levels=c("1","2","3","4","5"))
data$wound_necr_proc.factor = factor(data$wound_necr_proc,levels=c("1","2","3","4","5"))
data$wound_separate.factor = factor(data$wound_separate,levels=c("1","2","3","4","5"))
data$wound_separate_2.factor = factor(data$wound_separate_2,levels=c("1","2","3","4","5"))
data$wound_color.factor = factor(data$wound_color,levels=c("1","2","3","4","5"))
data$wound_oedema.factor = factor(data$wound_oedema,levels=c("1","2","3","4","5"))
data$wound_indur.factor = factor(data$wound_indur,levels=c("1","2","3","4","5"))
data$wound_granul.factor = factor(data$wound_granul,levels=c("1","2","3","4","5"))
data$wound_dyn.factor = factor(data$wound_dyn,levels=c("1","2","3","4","5"))
data$daae_e3d5_complete.factor = factor(data$daae_e3d5_complete,levels=c("0","1","2"))
data$rash_links___1.factor = factor(data$rash_links___1,levels=c("0","1"))
data$rash_links___2.factor = factor(data$rash_links___2,levels=c("0","1"))
data$rash_links___3.factor = factor(data$rash_links___3,levels=c("0","1"))
data$rash_links___4.factor = factor(data$rash_links___4,levels=c("0","1"))
data$rash_links___5.factor = factor(data$rash_links___5,levels=c("0","1"))
data$rash_links___6.factor = factor(data$rash_links___6,levels=c("0","1"))
data$rash_links___7.factor = factor(data$rash_links___7,levels=c("0","1"))
data$rash_links___8.factor = factor(data$rash_links___8,levels=c("0","1"))
data$rash_links___9.factor = factor(data$rash_links___9,levels=c("0","1"))
data$rash_links___10.factor = factor(data$rash_links___10,levels=c("0","1"))
data$rash_links___11.factor = factor(data$rash_links___11,levels=c("0","1"))
data$rash_links___12.factor = factor(data$rash_links___12,levels=c("0","1"))
data$rash_right___1.factor = factor(data$rash_right___1,levels=c("0","1"))
data$rash_right___2.factor = factor(data$rash_right___2,levels=c("0","1"))
data$rash_right___3.factor = factor(data$rash_right___3,levels=c("0","1"))
data$rash_right___4.factor = factor(data$rash_right___4,levels=c("0","1"))
data$rash_right___5.factor = factor(data$rash_right___5,levels=c("0","1"))
data$rash_right___6.factor = factor(data$rash_right___6,levels=c("0","1"))
data$rash_right___7.factor = factor(data$rash_right___7,levels=c("0","1"))
data$rash_right___8.factor = factor(data$rash_right___8,levels=c("0","1"))
data$rash_right___9.factor = factor(data$rash_right___9,levels=c("0","1"))
data$rash_right___10.factor = factor(data$rash_right___10,levels=c("0","1"))
data$rash_right___11.factor = factor(data$rash_right___11,levels=c("0","1"))
data$rash_right___12.factor = factor(data$rash_right___12,levels=c("0","1"))
data$rash_time___1.factor = factor(data$rash_time___1,levels=c("0","1"))
data$rash_time___2.factor = factor(data$rash_time___2,levels=c("0","1"))
data$rash_time___3.factor = factor(data$rash_time___3,levels=c("0","1"))
data$rash_time___4.factor = factor(data$rash_time___4,levels=c("0","1"))
data$rash_zud.factor = factor(data$rash_zud,levels=c("1","2"))
data$rash_type___1.factor = factor(data$rash_type___1,levels=c("0","1"))
data$rash_type___2.factor = factor(data$rash_type___2,levels=c("0","1"))
data$rash_type___3.factor = factor(data$rash_type___3,levels=c("0","1"))
data$rash_type___4.factor = factor(data$rash_type___4,levels=c("0","1"))
data$rash_type___5.factor = factor(data$rash_type___5,levels=c("0","1"))
data$rash_type___6.factor = factor(data$rash_type___6,levels=c("0","1"))
data$rash_type___7.factor = factor(data$rash_type___7,levels=c("0","1"))
data$rash_type_2___1.factor = factor(data$rash_type_2___1,levels=c("0","1"))
data$rash_type_2___2.factor = factor(data$rash_type_2___2,levels=c("0","1"))
data$rash_type_2___3.factor = factor(data$rash_type_2___3,levels=c("0","1"))
data$rash_type_2___4.factor = factor(data$rash_type_2___4,levels=c("0","1"))
data$rash_type_2___5.factor = factor(data$rash_type_2___5,levels=c("0","1"))
data$rash_type_2___6.factor = factor(data$rash_type_2___6,levels=c("0","1"))
data$rash_type_2___7.factor = factor(data$rash_type_2___7,levels=c("0","1"))
data$rash_type_2___8.factor = factor(data$rash_type_2___8,levels=c("0","1"))
data$rash_type_2___9.factor = factor(data$rash_type_2___9,levels=c("0","1"))
data$rash_type_2___10.factor = factor(data$rash_type_2___10,levels=c("0","1"))
data$ddcd_db342c_complete.factor = factor(data$ddcd_db342c_complete,levels=c("0","1","2"))
data$coma.factor = factor(data$coma,levels=c("1","2","3","4","5"))
data$coma_2.factor = factor(data$coma_2,levels=c("6","7","8","9","10","11"))
data$coma_3.factor = factor(data$coma_3,levels=c("12","13","14","15","16","17","18"))
data$ddcd_213a8c_complete.factor = factor(data$ddcd_213a8c_complete,levels=c("0","1","2"))
data$phq_1.factor = factor(data$phq_1,levels=c("1","2","3","4"))
data$phq9_complete.factor = factor(data$phq9_complete,levels=c("0","1","2"))
data$medical_sex.factor = factor(data$medical_sex,levels=c("1","2"))
data$medical_insurance.factor = factor(data$medical_insurance,levels=c("0","1","2","3","4","5","6","7"))
data$currently_unhoused.factor = factor(data$currently_unhoused,levels=c("1","0"))
data$below_poverty_line.factor = factor(data$below_poverty_line,levels=c("1","0"))
data$vhcpp_form_qualified_fille.factor = factor(data$vhcpp_form_qualified_fille,levels=c("1","0"))
data$medical_different_sex___1.factor = factor(data$medical_different_sex___1,levels=c("0","1"))
data$medical_language_v4___1.factor = factor(data$medical_language_v4___1,levels=c("0","1"))
data$medical_language_v4___2.factor = factor(data$medical_language_v4___2,levels=c("0","1"))
data$medical_language_v4___3.factor = factor(data$medical_language_v4___3,levels=c("0","1"))
data$medical_language_v4___5.factor = factor(data$medical_language_v4___5,levels=c("0","1"))
data$medical_language_v4___4.factor = factor(data$medical_language_v4___4,levels=c("0","1"))
data$medical_language.factor = factor(data$medical_language,levels=c("1","2","3","5","4"))
data$medical_race.factor = factor(data$medical_race,levels=c("1","2","3","4","5","6","7","8","9"))
data$patient_id_complete.factor = factor(data$patient_id_complete,levels=c("0","1","2"))
data$medical_living_v3.factor = factor(data$medical_living_v3,levels=c("1","2","3","4","5"))
data$medical_housing.factor = factor(data$medical_housing,levels=c("1","0"))
data$medical_local_shelters.factor = factor(data$medical_local_shelters,levels=c("1","0"))
data$medical_housing3years.factor = factor(data$medical_housing3years,levels=c("1","0"))
data$social_home___0.factor = factor(data$social_home___0,levels=c("0","1"))
data$social_home___1.factor = factor(data$social_home___1,levels=c("0","1"))
data$social_home___2.factor = factor(data$social_home___2,levels=c("0","1"))
data$social_home___3.factor = factor(data$social_home___3,levels=c("0","1"))
data$social_home___4.factor = factor(data$social_home___4,levels=c("0","1"))
data$social_other_curr_places.factor = factor(data$social_other_curr_places,levels=c("1","0"))
data$social_other_curr_pl_desc.factor = factor(data$social_other_curr_pl_desc,levels=c("2","1","0"))
data$social_stable_housing_3yr.factor = factor(data$social_stable_housing_3yr,levels=c("1","0"))
data$social_3yr_shelter.factor = factor(data$social_3yr_shelter,levels=c("2","1","0"))
data$social_freq_unshelter.factor = factor(data$social_freq_unshelter,levels=c("5","4","3","2","1","0"))
data$social_live_prior_return.factor = factor(data$social_live_prior_return,levels=c("2","1","0"))
data$medical_sleep_v2.factor = factor(data$medical_sleep_v2,levels=c("1","2","3","4"))
data$social_accessible_services___0.factor = factor(data$social_accessible_services___0,levels=c("0","1"))
data$social_accessible_services___1.factor = factor(data$social_accessible_services___1,levels=c("0","1"))
data$social_accessible_services___2.factor = factor(data$social_accessible_services___2,levels=c("0","1"))
data$social_accessible_services___3.factor = factor(data$social_accessible_services___3,levels=c("0","1"))
data$social_accessible_services___4.factor = factor(data$social_accessible_services___4,levels=c("0","1"))
data$social_accessible_services___5.factor = factor(data$social_accessible_services___5,levels=c("0","1"))
data$social_accessible_services___6.factor = factor(data$social_accessible_services___6,levels=c("0","1"))
data$social_primary_hc.factor = factor(data$social_primary_hc,levels=c("2","1","0"))
data$social_er_visit.factor = factor(data$social_er_visit,levels=c("2","1","0"))
data$social_er_visit_reasons___2.factor = factor(data$social_er_visit_reasons___2,levels=c("0","1"))
data$social_er_visit_reasons___1.factor = factor(data$social_er_visit_reasons___1,levels=c("0","1"))
data$social_er_visit_reasons___0.factor = factor(data$social_er_visit_reasons___0,levels=c("0","1"))
data$social_past_hosp.factor = factor(data$social_past_hosp,levels=c("2","1","0"))
data$social_er_hct_resp_rating.factor = factor(data$social_er_hct_resp_rating,levels=c("4","3","2","1","0"))
data$social_er_hct_need_rating.factor = factor(data$social_er_hct_need_rating,levels=c("4","3","2","1","0"))
data$social_er_hct_apt_con.factor = factor(data$social_er_hct_apt_con,levels=c("4","3","2","1","0"))
data$social_pcp_care_use.factor = factor(data$social_pcp_care_use,levels=c("2","1","0"))
data$social_pcp_apt_timing.factor = factor(data$social_pcp_apt_timing,levels=c("3","2","1","0"))
data$social_pcp_apt_rating.factor = factor(data$social_pcp_apt_rating,levels=c("4","3","2","1","0"))
data$social_pcp_hct_resp_rating.factor = factor(data$social_pcp_hct_resp_rating,levels=c("4","3","2","1","0"))
data$social_pcp_hct_need_rating.factor = factor(data$social_pcp_hct_need_rating,levels=c("4","3","2","1","0"))
data$social_pcp_hct_apt_con.factor = factor(data$social_pcp_hct_apt_con,levels=c("4","3","2","1","0"))
data$social_rx_location.factor = factor(data$social_rx_location,levels=c("4","3","2","1","0"))
data$social_med_specialist.factor = factor(data$social_med_specialist,levels=c("2","1"))
data$social_soc_serv_util___5.factor = factor(data$social_soc_serv_util___5,levels=c("0","1"))
data$social_soc_serv_util___4.factor = factor(data$social_soc_serv_util___4,levels=c("0","1"))
data$social_soc_serv_util___3.factor = factor(data$social_soc_serv_util___3,levels=c("0","1"))
data$social_soc_serv_util___2.factor = factor(data$social_soc_serv_util___2,levels=c("0","1"))
data$social_soc_serv_util___1.factor = factor(data$social_soc_serv_util___1,levels=c("0","1"))
data$social_soc_serv_util___0.factor = factor(data$social_soc_serv_util___0,levels=c("0","1"))
data$social_judg_sys_involv___2.factor = factor(data$social_judg_sys_involv___2,levels=c("0","1"))
data$social_judg_sys_involv___1.factor = factor(data$social_judg_sys_involv___1,levels=c("0","1"))
data$social_judg_sys_involv___0.factor = factor(data$social_judg_sys_involv___0,levels=c("0","1"))
data$social_judg_sys_aid.factor = factor(data$social_judg_sys_aid,levels=c("1","0"))
data$medical_employed.factor = factor(data$medical_employed,levels=c("1","0"))
data$social_income_type___6.factor = factor(data$social_income_type___6,levels=c("0","1"))
data$social_income_type___5.factor = factor(data$social_income_type___5,levels=c("0","1"))
data$social_income_type___4.factor = factor(data$social_income_type___4,levels=c("0","1"))
data$social_income_type___3.factor = factor(data$social_income_type___3,levels=c("0","1"))
data$social_income_type___2.factor = factor(data$social_income_type___2,levels=c("0","1"))
data$social_income_type___1.factor = factor(data$social_income_type___1,levels=c("0","1"))
data$social_income_type___0.factor = factor(data$social_income_type___0,levels=c("0","1"))
data$social_money_storage___2.factor = factor(data$social_money_storage___2,levels=c("0","1"))
data$social_money_storage___1.factor = factor(data$social_money_storage___1,levels=c("0","1"))
data$social_money_storage___0.factor = factor(data$social_money_storage___0,levels=c("0","1"))
data$social_money_safety.factor = factor(data$social_money_safety,levels=c("1","0"))
data$social_id_forms___0.factor = factor(data$social_id_forms___0,levels=c("0","1"))
data$social_id_forms___1.factor = factor(data$social_id_forms___1,levels=c("0","1"))
data$social_id_forms___2.factor = factor(data$social_id_forms___2,levels=c("0","1"))
data$social_id_forms___3.factor = factor(data$social_id_forms___3,levels=c("0","1"))
data$social_id_current.factor = factor(data$social_id_current,levels=c("1","0"))
data$social_id_obtain.factor = factor(data$social_id_obtain,levels=c("1","0"))
data$medical_diet.factor = factor(data$medical_diet,levels=c("1","0"))
data$medical_nextmeal.factor = factor(data$medical_nextmeal,levels=c("1","0"))
data$social_food_obtain___0.factor = factor(data$social_food_obtain___0,levels=c("0","1"))
data$social_food_obtain___1.factor = factor(data$social_food_obtain___1,levels=c("0","1"))
data$social_food_obtain___2.factor = factor(data$social_food_obtain___2,levels=c("0","1"))
data$social_food_obtain___3.factor = factor(data$social_food_obtain___3,levels=c("0","1"))
data$social_food_obtain___4.factor = factor(data$social_food_obtain___4,levels=c("0","1"))
data$social_food_obtain___5.factor = factor(data$social_food_obtain___5,levels=c("0","1"))
data$social_food_types___0.factor = factor(data$social_food_types___0,levels=c("0","1"))
data$social_food_types___1.factor = factor(data$social_food_types___1,levels=c("0","1"))
data$social_food_types___2.factor = factor(data$social_food_types___2,levels=c("0","1"))
data$social_food_types___3.factor = factor(data$social_food_types___3,levels=c("0","1"))
data$social_food_types___4.factor = factor(data$social_food_types___4,levels=c("0","1"))
data$social_food_types___5.factor = factor(data$social_food_types___5,levels=c("0","1"))
data$social_food_carbs.factor = factor(data$social_food_carbs,levels=c("0","1","2","3"))
data$social_food_meat.factor = factor(data$social_food_meat,levels=c("0","1","2","3"))
data$social_food_veggies.factor = factor(data$social_food_veggies,levels=c("0","1","2","3"))
data$social_food_fruit.factor = factor(data$social_food_fruit,levels=c("0","1","2","3"))
data$social_food_sweets.factor = factor(data$social_food_sweets,levels=c("0","1","2","3"))
data$social_food_chips.factor = factor(data$social_food_chips,levels=c("0","1","2","3"))
data$medical_exercise.factor = factor(data$medical_exercise,levels=c("1","0"))
data$social_drink_amount.factor = factor(data$social_drink_amount,levels=c("0","1","2"))
data$social_drink_source___0.factor = factor(data$social_drink_source___0,levels=c("0","1"))
data$social_drink_source___1.factor = factor(data$social_drink_source___1,levels=c("0","1"))
data$social_drink_source___2.factor = factor(data$social_drink_source___2,levels=c("0","1"))
data$social_drink_source___3.factor = factor(data$social_drink_source___3,levels=c("0","1"))
data$social_drink_source___4.factor = factor(data$social_drink_source___4,levels=c("0","1"))
data$social_drink_purify.factor = factor(data$social_drink_purify,levels=c("1","0"))
data$medical_caffeineyn.factor = factor(data$medical_caffeineyn,levels=c("1","0"))
data$social_bathroom_access.factor = factor(data$social_bathroom_access,levels=c("0","1","2","3"))
data$social_bathroom_accessibility.factor = factor(data$social_bathroom_accessibility,levels=c("0","1","2","3","4"))
data$social_bathe_freq.factor = factor(data$social_bathe_freq,levels=c("0","1","2","3"))
data$social_bathe_location___0.factor = factor(data$social_bathe_location___0,levels=c("0","1"))
data$social_bathe_location___1.factor = factor(data$social_bathe_location___1,levels=c("0","1"))
data$social_bathe_location___2.factor = factor(data$social_bathe_location___2,levels=c("0","1"))
data$social_bathe_location___3.factor = factor(data$social_bathe_location___3,levels=c("0","1"))
data$social_bathe_location___4.factor = factor(data$social_bathe_location___4,levels=c("0","1"))
data$social_sleep_cover___0.factor = factor(data$social_sleep_cover___0,levels=c("0","1"))
data$social_sleep_cover___1.factor = factor(data$social_sleep_cover___1,levels=c("0","1"))
data$social_sleep_cover___2.factor = factor(data$social_sleep_cover___2,levels=c("0","1"))
data$social_sleep_cover___3.factor = factor(data$social_sleep_cover___3,levels=c("0","1"))
data$social_sleep_cover___4.factor = factor(data$social_sleep_cover___4,levels=c("0","1"))
data$social_sleep_cover___5.factor = factor(data$social_sleep_cover___5,levels=c("0","1"))
data$social_sleep_cover___6.factor = factor(data$social_sleep_cover___6,levels=c("0","1"))
data$social_sleep_position___0.factor = factor(data$social_sleep_position___0,levels=c("0","1"))
data$social_sleep_position___1.factor = factor(data$social_sleep_position___1,levels=c("0","1"))
data$social_sleep_position___2.factor = factor(data$social_sleep_position___2,levels=c("0","1"))
data$social_sleep_position___3.factor = factor(data$social_sleep_position___3,levels=c("0","1"))
data$social_sleep_time___0.factor = factor(data$social_sleep_time___0,levels=c("0","1"))
data$social_sleep_time___1.factor = factor(data$social_sleep_time___1,levels=c("0","1"))
data$social_sleep_time___2.factor = factor(data$social_sleep_time___2,levels=c("0","1"))
data$social_sleep_time___3.factor = factor(data$social_sleep_time___3,levels=c("0","1"))
data$social_sleep_time___4.factor = factor(data$social_sleep_time___4,levels=c("0","1"))
data$social_sleep_duration.factor = factor(data$social_sleep_duration,levels=c("0","1","2","3"))
data$social_sleep_safety.factor = factor(data$social_sleep_safety,levels=c("0","1","2","3","4"))
data$social_fears___0.factor = factor(data$social_fears___0,levels=c("0","1"))
data$social_fears___1.factor = factor(data$social_fears___1,levels=c("0","1"))
data$social_fears___2.factor = factor(data$social_fears___2,levels=c("0","1"))
data$social_fears___3.factor = factor(data$social_fears___3,levels=c("0","1"))
data$social_fears___4.factor = factor(data$social_fears___4,levels=c("0","1"))
data$social_sleep_harm.factor = factor(data$social_sleep_harm,levels=c("1","0"))
data$medical_marital.factor = factor(data$medical_marital,levels=c("0","1","2","3","4"))
data$patient_navigation_full_intake_complete.factor = factor(data$patient_navigation_full_intake_complete,levels=c("0","1","2"))
data$patient_status.factor = factor(data$patient_status,levels=c("1","2","3"))
data$psy_status.factor = factor(data$psy_status,levels=c("1","2","3","4"))
data$ddcd_f5fa75_complete.factor = factor(data$ddcd_f5fa75_complete,levels=c("0","1","2"))

levels(data$redcap_repeat_instrument.factor)=c("ОСНОВНОЙ прием","Оценка зрения","Экспресс-тестирование","Вакцинация","Фотобаза (раны, сыпи, выписки, документы)","Для бездомных женщин","Социальное сопровождение","Оценка ран по Бейтс-Йенсен","Дерматология","Нарушение сознания","Оценка уровня депрессии пациентов (PHQ-9)")
levels(data$gender.factor)=c("мужской","женский")
levels(data$citizen.factor)=c("без гражданства","отказ от ответа","Россия","Украина","Белоруссия","Казахстан","СССР","Абхазия","Таджикистан","Узбекистан","Азербайджан","ДНР","ЛНР","Австралия","Австрия","Азад-Кашмир","Албания","Алжир","Ангилья","Ангола","Андорра","Антигуа и Барбуда","Аргентина","Армения","Аруба","Афганистан","Багамские Острова","Бангладеш","Барбадос","Бахрейн","Белиз","Бельгия","Бенин","Болгария","Боливия","Босния и Герцеговина","Ботсвана","Бразилия","Бруней","Буркина-Фасо","Бурунди","Бутан","Вануату","Ватикан","Великобритания","Венгрия","Венесуэла","Восточный Тимор","Вьетнам","Габон","Гаити","Гайана","Гамбия","Гана","Гватемала","Гвинея","Гвинея-Бисау","Германия","Гондурас","Гонконг","Государство Палестина","Гренада","Гренландия","Греция","Грузия","Дания","Демократическая Республика Конго","Джибути","Доминика","Доминиканская Республика","Египет","Замбия","Зимбабве","Израиль","Индия","Индонезия","Иордания","Ирак","Иран","Ирландия","Исландия","Испания","Италия","Йемен","Кабо-Верде","Камбоджа","Камерун","Канада","Катар","Кения","Кипр","Киргизия","Кирибати","Китай","КНДР (Северная Корея)","Колумбия","Коморские Острова","Косово","Коста-Рика","Кот-дИвуар","Куба","Кувейт","Кюрасао","Лаос","Латвия","Лесото","Либерия","Ливан","Ливия","Литва","Лихтенштейн","Люксембург","Маврикий","Мавритания","Мадагаскар","Македония","Малави","Малайзия","Мали","Мальдивы","Мальта","Марокко","Маршалловы Острова","Мексика","Микронезия","Мозамбик","Молдавия","Монако","Монголия","Мьянма","Нагорно-Карабахская Республика","Намибия","Науру","Непал","Нигер","Нигерия","Нидерланды","Никарагуа","Ниуэ","Новая Зеландия","Норвегия","Объединённые Арабские Эмираты","Оман","Острова Кука","Пакистан","Палау","Панама","Папуа - Новая Гвинея","Парагвай","Перу","Польша","Португалия","Пуэрто-Рико","Республика Конго","Руанда","Румыния","Сальвадор","Самоа","Сан-Марино","Сан-Томе и Принсипи","Саудовская Аравия","Сахарская Арабская Демократическая Республика","Свазиленд","Северный Кипр","Сейшельские Острова","Сенегал","Сент-Винсент и Гренадины","Сент-Китс и Невис","Сент-Люсия","Сербия","Сингапур","Синт-Мартен","Сирия","Словакия","Словения","Соединённые Штаты Америки","Соломоновы Острова","Сомали","Судан","Суринам","Сьерра-Леоне","Таиланд","Танзания","Того","Тонга","Тринидад и Тобаго","Тувалу","Тунис","Туркмения","Турция","Уганда","Уругвай","Фареры","Фиджи","Филиппины","Финляндия","Франция","Хорватия","Центральноафриканская Республика","Чад","Черногория","Чехия","Чили","Швейцария","Швеция","Шри-Ланка","Эквадор","Экваториальная Гвинея","Эритрея","Эстония","Эфиопия","Южная Корея","Южная Осетия","Южно-Африканская Республика","Южный Судан","Ямайка","Япония")
levels(data$id_status.factor)=c("есть/может показать","нет/утерян","заложен/на хранении","восстанавливает","нет данных/отказ от ответа")
levels(data$oms_status.factor)=c("есть/может показать","нет/утерян","заложен/на хранении","восстанавливает","нет данных/отказ от ответа")
levels(data$sn_status.factor)=c("есть/может показать","нет/утерян","заложен/на хранении","восстанавливает","нет данных/отказ от ответа")
levels(data$kinonia_id___1.factor)=c("Unchecked","Checked")
levels(data$kinonia_id___3.factor)=c("Unchecked","Checked")
levels(data$kinonia_id___2.factor)=c("Unchecked","Checked")
levels(data$id_regist.factor)=c("отказ от ответа","временная","постоянная","без регистрации")
levels(data$personal_date.factor)=c("да","нет")
levels(data$daae_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$tbi.factor)=c("на диспансерном учете ± прием ПТХТ","снят с диспансерного учета","прервал прием ПТХТ","отрицает","нет данных")
levels(data$hiv_1.factor)=c("диспансерный учет в ЦС","есть, со слов","отрицает")
levels(data$hb_1.factor)=c("диспансерный учет в ЦС","есть, со слов","отрицает")
levels(data$hc_1.factor)=c("диспансерный учет в ЦС","есть, со слов","отрицает")
levels(data$lues.factor)=c("болел/лечился в диспансере/стационаре","отрицает")
levels(data$artv.factor)=c("да","нет")
levels(data$nicotin.factor)=c("есть в настоящее время","избавился/был зависим","отрицает/отказ от ответа")
levels(data$alcogolic.factor)=c("есть в настоящее время","избавился/был зависим","отрицает/отказ от ответа")
levels(data$narco.factor)=c("есть в настоящее время","избавился/был зависим","отрицает/отказ от ответа")
levels(data$ne_narco.factor)=c("есть в настоящее время","избавился/был зависим","отрицает/отказ от ответа")
levels(data$daae_4bf8_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$daae_e35c_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$where.factor)=c("НП","МС","Атаманская, 6","ПХК","АМ Тухачевского","АМ/НА Лесная","НА - 1-Сортировка","Ропша","Удельная","Татьянино","НА - 2-Лигово","НА - 3-Васька","ПО Гавань","ПО Кушелевка","ПО Витебская","Удаленная консультация","Аутрич","МЦ ГД","Боровая 112","Столовая Обв.177","Тимуровская","Ковчег","Владимирский собор")
levels(data$where_homless.factor)=c("в публичных местах (ТЦ, переходы метро, остановки) или на улице","вокзал","подвалы, парадные, чердаки","медицинское учреждение (стационар)","низкопороговые приюты для бездомных (ночные, пункты обогрева)","постоянные приюты для бездомных (24/7)","транзитное и поддерживаемое проживание (ДНП, менее 1 года)","рабочий дом","кризисный центр для женщин","временное сооружение (шалаш, навес, гараж)","непригодное жилье (заброшка)","временно с семьей, друзьями, знакомыми","квартира/дом в собственности","длительная аренда жилья (более 1 года)","краткосрочная аренда жилья (общежитие/хостел, менее 1 года)","работа с проживанием (цех, сторожка, охрана)","отказ от ответа")
levels(data$ass_choice.factor)=c("да","нет")
levels(data$alc_status.factor)=c("отсутствует, трезвый","на приеме чувствуется запах алкоголя","состояние измененного сознания (запаха алкоголя нет, признаки опьянения есть)")
levels(data$complaint_lite___9.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___3.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___12.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___2.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___11.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___10.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___6.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___13.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___1.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___8.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___4.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___5.factor)=c("Unchecked","Checked")
levels(data$complaint_lite___7.factor)=c("Unchecked","Checked")
levels(data$mucosa_status.factor)=c("гиперемирована","не гиперемирована")
levels(data$mucosa_status_2.factor)=c("есть","нет")
levels(data$nose_breath.factor)=c("свободное","затруднено")
levels(data$grud_kletka.factor)=c("равномерно участвует в акте дыхания","не равномерно участвует в акте дыхания")
levels(data$cough___1.factor)=c("Unchecked","Checked")
levels(data$cough___2.factor)=c("Unchecked","Checked")
levels(data$cough___3.factor)=c("Unchecked","Checked")
levels(data$cough___4.factor)=c("Unchecked","Checked")
levels(data$cough___5.factor)=c("Unchecked","Checked")
levels(data$cough___6.factor)=c("Unchecked","Checked")
levels(data$sputum___1.factor)=c("Unchecked","Checked")
levels(data$sputum___2.factor)=c("Unchecked","Checked")
levels(data$sputum___3.factor)=c("Unchecked","Checked")
levels(data$sputum___4.factor)=c("Unchecked","Checked")
levels(data$sputum___5.factor)=c("Unchecked","Checked")
levels(data$sputum___6.factor)=c("Unchecked","Checked")
levels(data$auskul.factor)=c("везикулярное, проводится во все отделы","жесткое","ослаблено")
levels(data$hrip_ausk.factor)=c("отсутствуют","влажные разнокалиберные","свистящие, больше на выдохе")
levels(data$abdomen_status.factor)=c("доступен глубокой пальпации, мягкий, безболезненный во всех отделах","ограничено болезненный")
levels(data$vomit___1.factor)=c("Unchecked","Checked")
levels(data$vomit___2.factor)=c("Unchecked","Checked")
levels(data$vomit___3.factor)=c("Unchecked","Checked")
levels(data$vomit___4.factor)=c("Unchecked","Checked")
levels(data$vomit___5.factor)=c("Unchecked","Checked")
levels(data$ass___1.factor)=c("Unchecked","Checked")
levels(data$ass___2.factor)=c("Unchecked","Checked")
levels(data$ass___3.factor)=c("Unchecked","Checked")
levels(data$ass___4.factor)=c("Unchecked","Checked")
levels(data$oedema___1.factor)=c("Unchecked","Checked")
levels(data$oedema___2.factor)=c("Unchecked","Checked")
levels(data$oedema___3.factor)=c("Unchecked","Checked")
levels(data$oedema___4.factor)=c("Unchecked","Checked")
levels(data$oedema___5.factor)=c("Unchecked","Checked")
levels(data$ds_icd_1.factor)=c("Некоторые инфекционные и паразитарные болезни","Новообразования","Болезни крови, кроветворных органов и отдельные нарушения, вовлекающие иммунный механизм","Болезни эндокринной системы, расстройства питания и нарушения обмена веществ","Психические расстройства и расстройства поведения","Болезни нервной системы","Болезни глаза и его придаточного аппарата","Болезни уха и сосцевидного отростка","Болезни системы кровообращения","Болезни органов дыхания","Болезни органов пищеварения","Болезни кожи и подкожной клетчатки","Болезни костно-мышечной системы и соединительной ткани","Болезни мочеполовой системы","Беременность, роды и послеродовой период","Врожденные аномалии [пороки развития], деформации и хромосомные нарушения","Травмы, отравления и некоторые другие последствия воздействия внешних причин","Внешние причины заболеваемости и смертности","Общий осмотр и обследование лиц, не имеющих жалоб или установленного диагноза")
levels(data$ds_icd_2.factor)=c("Некоторые инфекционные и паразитарные болезни","Новообразования","Болезни крови, кроветворных органов и отдельные нарушения, вовлекающие иммунный механизм","Болезни эндокринной системы, расстройства питания и нарушения обмена веществ","Психические расстройства и расстройства поведения","Болезни нервной системы","Болезни глаза и его придаточного аппарата","Болезни уха и сосцевидного отростка","Болезни системы кровообращения","Болезни органов дыхания","Болезни органов пищеварения","Болезни кожи и подкожной клетчатки","Болезни костно-мышечной системы и соединительной ткани","Болезни мочеполовой системы","Беременность, роды и послеродовой период","Врожденные аномалии [пороки развития], деформации и хромосомные нарушения","Травмы, отравления и некоторые другие последствия воздействия внешних причин","Внешние причины заболеваемости и смертности")
levels(data$our_action___1.factor)=c("Unchecked","Checked")
levels(data$our_action___7.factor)=c("Unchecked","Checked")
levels(data$our_action___9.factor)=c("Unchecked","Checked")
levels(data$our_action___2.factor)=c("Unchecked","Checked")
levels(data$our_action___4.factor)=c("Unchecked","Checked")
levels(data$our_action___8.factor)=c("Unchecked","Checked")
levels(data$our_action___5.factor)=c("Unchecked","Checked")
levels(data$our_action___6.factor)=c("Unchecked","Checked")
levels(data$ds_icd_3.factor)=c("Некоторые инфекционные и паразитарные болезни","Новообразования","Болезни крови, кроветворных органов и отдельные нарушения, вовлекающие иммунный механизм","Болезни эндокринной системы, расстройства питания и нарушения обмена веществ","Психические расстройства и расстройства поведения","Болезни нервной системы","Болезни глаза и его придаточного аппарата","Болезни уха и сосцевидного отростка","Болезни системы кровообращения","Болезни органов дыхания","Болезни органов пищеварения","Болезни кожи и подкожной клетчатки","Болезни костно-мышечной системы и соединительной ткани","Болезни мочеполовой системы","Беременность, роды и послеродовой период","Врожденные аномалии [пороки развития], деформации и хромосомные нарушения","Травмы, отравления и некоторые другие последствия воздействия внешних причин","Внешние причины заболеваемости и смертности")
levels(data$place_clinic_id___1.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___2.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___15.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___3.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___5.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___6.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___7.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___9.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___10.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___12.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___11.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___13.factor)=c("Unchecked","Checked")
levels(data$place_clinic_id___14.factor)=c("Unchecked","Checked")
levels(data$daae_2d89_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$visus.factor)=c("записаны со слов","есть рецепт на очки","не знает","скрининг")
levels(data$vgd.factor)=c("ICare","ТВГД-02")
levels(data$midriaz.factor)=c("да","нет")
levels(data$glass_ocheche_store.factor)=c("в поликлинику","в МЦ ГД","в Ocheche Store + направление")
levels(data$glass.factor)=c("из ящика Запасы","из ящика Заказы")
levels(data$glass_box.factor)=c("выдан","не выдан")
levels(data$oder_glasses.factor)=c("заказан в оптике","передан на площадку","отказано","вопрос")
levels(data$daae_2fcb_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$etest_type___1.factor)=c("Unchecked","Checked")
levels(data$etest_type___2.factor)=c("Unchecked","Checked")
levels(data$etest_type___3.factor)=c("Unchecked","Checked")
levels(data$etest_type___4.factor)=c("Unchecked","Checked")
levels(data$etest_type___5.factor)=c("Unchecked","Checked")
levels(data$etest_hiv.factor)=c("положительный","отрицательный","неопределенный","не тестировался")
levels(data$etest_hbsag.factor)=c("положительный","отрицательный","неопределенный","не тестировался")
levels(data$etest_hcv.factor)=c("положительный","отрицательный","неопределенный","не тестировался")
levels(data$etest_lues.factor)=c("положительный","отрицательный","неопределенный","не тестировался")
levels(data$etest_covid19.factor)=c("положительный","отрицательный","неопределенный","не тестировался")
levels(data$lues_gorkvd.factor)=c("Yes","No")
levels(data$ddcd_c1aae9_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$vaccination___1.factor)=c("Unchecked","Checked")
levels(data$vaccination___2.factor)=c("Unchecked","Checked")
levels(data$vaccination___4.factor)=c("Unchecked","Checked")
levels(data$vaccination___5.factor)=c("Unchecked","Checked")
levels(data$vaccination___6.factor)=c("Unchecked","Checked")
levels(data$vaccination___3.factor)=c("Unchecked","Checked")
levels(data$covid_vac.factor)=c("Спутник Лайт","Спутник V")
levels(data$covid_vac_2.factor)=c("V1","V2 (только для Спутник V)","RV")
levels(data$flu_vac.factor)=c("Ультрикс Квадри","ФЛЮ-М","Совигрипп")
levels(data$ddcd_e65eb4_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$daae_6135_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$dd.factor)=c("да","нет","отказ от ответа")
levels(data$education.factor)=c("нет образования","начальное","незаконченное среднее","среднее","средне-специальное","высшее, н/высшее","отказ от ответа")
levels(data$family.factor)=c("отказ от ответа","состоит в браке","не состоит в браке","сожительство")
levels(data$mls.factor)=c("да","нет","отказ от ответа")
levels(data$homeless_reason___1.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___2.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___3.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___4.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___5.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___6.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___7.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___8.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___9.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___10.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___11.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___12.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___13.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___14.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___15.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___16.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___17.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___18.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___19.factor)=c("Unchecked","Checked")
levels(data$homeless_reason___20.factor)=c("Unchecked","Checked")
levels(data$donate___1.factor)=c("Unchecked","Checked")
levels(data$donate___2.factor)=c("Unchecked","Checked")
levels(data$donate___3.factor)=c("Unchecked","Checked")
levels(data$donate___4.factor)=c("Unchecked","Checked")
levels(data$donate___5.factor)=c("Unchecked","Checked")
levels(data$donate___6.factor)=c("Unchecked","Checked")
levels(data$donate___7.factor)=c("Unchecked","Checked")
levels(data$donate___8.factor)=c("Unchecked","Checked")
levels(data$donate___9.factor)=c("Unchecked","Checked")
levels(data$ddcd_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pregnant.factor)=c("да, со слов","нет, со слов","положительный экспресс-тест","отрицательный экспресс-тест","отказ от ответа","нет данных")
levels(data$ddcd_c0856b_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ddcd_1d3e03_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$links_wound___1.factor)=c("Unchecked","Checked")
levels(data$links_wound___2.factor)=c("Unchecked","Checked")
levels(data$links_wound___3.factor)=c("Unchecked","Checked")
levels(data$links_wound___4.factor)=c("Unchecked","Checked")
levels(data$links_wound___5.factor)=c("Unchecked","Checked")
levels(data$links_wound___6.factor)=c("Unchecked","Checked")
levels(data$links_wound___7.factor)=c("Unchecked","Checked")
levels(data$links_wound___8.factor)=c("Unchecked","Checked")
levels(data$links_wound___9.factor)=c("Unchecked","Checked")
levels(data$links_wound___10.factor)=c("Unchecked","Checked")
levels(data$links_wound___11.factor)=c("Unchecked","Checked")
levels(data$links_wound___12.factor)=c("Unchecked","Checked")
levels(data$right_wound___1.factor)=c("Unchecked","Checked")
levels(data$right_wound___2.factor)=c("Unchecked","Checked")
levels(data$right_wound___3.factor)=c("Unchecked","Checked")
levels(data$right_wound___4.factor)=c("Unchecked","Checked")
levels(data$right_wound___5.factor)=c("Unchecked","Checked")
levels(data$right_wound___6.factor)=c("Unchecked","Checked")
levels(data$right_wound___7.factor)=c("Unchecked","Checked")
levels(data$right_wound___8.factor)=c("Unchecked","Checked")
levels(data$right_wound___9.factor)=c("Unchecked","Checked")
levels(data$right_wound___10.factor)=c("Unchecked","Checked")
levels(data$right_wound___11.factor)=c("Unchecked","Checked")
levels(data$right_wound___12.factor)=c("Unchecked","Checked")
levels(data$wound_bottom.factor)=c("ткани повреждены, но целостность кожи не нарушена","поверхностная рана, пузырь, ссадина, мелкая язва","глубокая язва с подрытием краев или без","скрыта под некротическими массами","в дно раны входят мышцы, сухожилия, кости")
levels(data$wound_krai_2.factor)=c("Нечеткие, точно не определяются","Четкие, граница раны определяется точно, плоские, на одном уровне с дном раны","Четко отграничены, возвышающиеся над дном раны","Четко отграничены, возвышающиеся над дном раны, валикообразные, утолщенные","Четко ограниченные, фиброзные, рубцовые или гиперкератоз")
levels(data$wound_krai.factor)=c("Отсутствует","Глубина < 2 см в любой точке","Глубина 2-4 см, < 50% периметра раны","Глубина 2-4 см, < 50% периметра раны","Глубина >4 см в любой точке или наличие туннеля")
levels(data$wound_type_necr.factor)=c("не определяется","свободные мягкие желтые некр. массы","слабо прикрепленные мягкие желтые некр. массы","мягкий черный струп","плотный сухой струп")
levels(data$wound_necr_proc.factor)=c("отсутствует","< 25%","25-50%","50-75%","75-100%")
levels(data$wound_separate.factor)=c("отсутствует","геморрагическое","серозно-геморрагическое: жидкое, водянистое, розовое","серозное: жидкое, водянистое, прозрачное","гнойное: коричнево-желтое с запахом или без него")
levels(data$wound_separate_2.factor)=c("отсутствует","скудное, рана влажная, но экссудат не определяется","небольшое","умеренное","обильное")
levels(data$wound_color.factor)=c("Розовый или нормальный для данной этнич. группы","Ярко-красный и/или белеет при надавливании","Белый, бледно-серый либо гипопигментация","Темно-красный, фиолетовый и/или не белеет при надавливании","Черный или гиперпигментация")
levels(data$wound_oedema.factor)=c("Отсутствует","Отек < 4 см вокруг раны, ямка при надавливании не образуется","Отек  ≥4 см вокруг раны, ямка при надавливании не образуется","Отек < 4 см вокруг раны, при надавливании образуется ямка","Крепитация и/или отек ≥4 см вокруг раны, при надавливании образуется ямка")
levels(data$wound_indur.factor)=c("Отсутствует","Уплотнение < 2 см вокруг раны","Уплотнение 2-4 см вокруг раны, < 50% периметра","Уплотнение 2-4 см вокруг раны, ≥50% периметра","Уплотнение >4 см вокруг раны")
levels(data$wound_granul.factor)=c("кожа не повреждена","ярко-красная, 75-100% раны","ярко-красная, 25-75% раны","розовая, бледная < 25% раны","не определяется")
levels(data$wound_dyn.factor)=c("покрыто 100%, кожа не повреждена","покрыто 75-100% раны или эпителизация внутрь на >0,5 см от краев раны","покрыто 50-75% раны   или эпителизация внутрь на < 0,5 см от краев раны","покрыто 25-50% раны","покрыто < 25% раны")
levels(data$daae_e3d5_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$rash_links___1.factor)=c("Unchecked","Checked")
levels(data$rash_links___2.factor)=c("Unchecked","Checked")
levels(data$rash_links___3.factor)=c("Unchecked","Checked")
levels(data$rash_links___4.factor)=c("Unchecked","Checked")
levels(data$rash_links___5.factor)=c("Unchecked","Checked")
levels(data$rash_links___6.factor)=c("Unchecked","Checked")
levels(data$rash_links___7.factor)=c("Unchecked","Checked")
levels(data$rash_links___8.factor)=c("Unchecked","Checked")
levels(data$rash_links___9.factor)=c("Unchecked","Checked")
levels(data$rash_links___10.factor)=c("Unchecked","Checked")
levels(data$rash_links___11.factor)=c("Unchecked","Checked")
levels(data$rash_links___12.factor)=c("Unchecked","Checked")
levels(data$rash_right___1.factor)=c("Unchecked","Checked")
levels(data$rash_right___2.factor)=c("Unchecked","Checked")
levels(data$rash_right___3.factor)=c("Unchecked","Checked")
levels(data$rash_right___4.factor)=c("Unchecked","Checked")
levels(data$rash_right___5.factor)=c("Unchecked","Checked")
levels(data$rash_right___6.factor)=c("Unchecked","Checked")
levels(data$rash_right___7.factor)=c("Unchecked","Checked")
levels(data$rash_right___8.factor)=c("Unchecked","Checked")
levels(data$rash_right___9.factor)=c("Unchecked","Checked")
levels(data$rash_right___10.factor)=c("Unchecked","Checked")
levels(data$rash_right___11.factor)=c("Unchecked","Checked")
levels(data$rash_right___12.factor)=c("Unchecked","Checked")
levels(data$rash_time___1.factor)=c("Unchecked","Checked")
levels(data$rash_time___2.factor)=c("Unchecked","Checked")
levels(data$rash_time___3.factor)=c("Unchecked","Checked")
levels(data$rash_time___4.factor)=c("Unchecked","Checked")
levels(data$rash_zud.factor)=c("есть","нет")
levels(data$rash_type___1.factor)=c("Unchecked","Checked")
levels(data$rash_type___2.factor)=c("Unchecked","Checked")
levels(data$rash_type___3.factor)=c("Unchecked","Checked")
levels(data$rash_type___4.factor)=c("Unchecked","Checked")
levels(data$rash_type___5.factor)=c("Unchecked","Checked")
levels(data$rash_type___6.factor)=c("Unchecked","Checked")
levels(data$rash_type___7.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___1.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___2.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___3.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___4.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___5.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___6.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___7.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___8.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___9.factor)=c("Unchecked","Checked")
levels(data$rash_type_2___10.factor)=c("Unchecked","Checked")
levels(data$ddcd_db342c_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$coma.factor)=c("произвольное","в ответ на обычный или громкий голос","в ответ на надавливание на кончик ногтя","нет открытия,  при отсутствии препятствующего фактора","присутствует фактор, мешающий открыванию глаз")
levels(data$coma_2.factor)=c("правильно называет имя, место и дату","дезориентирован, но речь связная","произносит отдельные понятные слова","издает стоны или нечленораздельные звуки","нет ответа, при отсутствии препятствующего фактора","наличие препятствующего общению фактора")
levels(data$coma_3.factor)=c("выполняет сложные команды  (состоящие из двух частей)","поднимает руку над ключицей при стимуляции головы и шеи","отдергивает руку при болевом раздражении","сгибание руки в ответ на боль","разгибает руку в локте","нет движения в плечах / ногах, нет мешающего фактора","паралич или другие ограничивающие факторы")
levels(data$ddcd_213a8c_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$phq_1.factor)=c("ни разу","несколько дней","более недели","почти каждый день")
levels(data$phq9_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$medical_sex.factor)=c("Male","Female")
levels(data$medical_insurance.factor)=c("Medicaid","Medicare","Private Insurance","Jackson Card","Uninsured","Other","Refused","Dont Know")
levels(data$currently_unhoused.factor)=c("Yes","No")
levels(data$below_poverty_line.factor)=c("Yes","No")
levels(data$vhcpp_form_qualified_fille.factor)=c("Yes","No")
levels(data$medical_different_sex___1.factor)=c("Unchecked","Checked")
levels(data$medical_language_v4___1.factor)=c("Unchecked","Checked")
levels(data$medical_language_v4___2.factor)=c("Unchecked","Checked")
levels(data$medical_language_v4___3.factor)=c("Unchecked","Checked")
levels(data$medical_language_v4___5.factor)=c("Unchecked","Checked")
levels(data$medical_language_v4___4.factor)=c("Unchecked","Checked")
levels(data$medical_language.factor)=c("English","Spanish","Creole","Portuguese","Other")
levels(data$medical_race.factor)=c("White (Non-Hispanic)","White (Hispanic)","Black (African American)","Black (Caribbean/Haitian)","Black (Hispanic)","Asian/Pacific Islander","Native American","Other","Prefer not to answer")
levels(data$patient_id_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$medical_living_v3.factor)=c("< 6 months","Between 6 months & 1 year","1-3 years","3-5 years","> 5 years")
levels(data$medical_housing.factor)=c("Yes","No")
levels(data$medical_local_shelters.factor)=c("Yes","No")
levels(data$medical_housing3years.factor)=c("Yes","No")
levels(data$social_home___0.factor)=c("Unchecked","Checked")
levels(data$social_home___1.factor)=c("Unchecked","Checked")
levels(data$social_home___2.factor)=c("Unchecked","Checked")
levels(data$social_home___3.factor)=c("Unchecked","Checked")
levels(data$social_home___4.factor)=c("Unchecked","Checked")
levels(data$social_other_curr_places.factor)=c("Yes","No")
levels(data$social_other_curr_pl_desc.factor)=c("Sheltered","Unsheltered","Prefer not to answer")
levels(data$social_stable_housing_3yr.factor)=c("Yes","No")
levels(data$social_3yr_shelter.factor)=c("Yes","No","Prefer not to answer")
levels(data$social_freq_unshelter.factor)=c("1 year or more","9-12 months","6-9 months","3-6 months","1-3 months","less than one month")
levels(data$social_live_prior_return.factor)=c("Yes","No","Prefer not to answer")
levels(data$medical_sleep_v2.factor)=c("Fine","Moderate Difficulty","Fine but only with medication or substances","Sleep deprived")
levels(data$social_accessible_services___0.factor)=c("Unchecked","Checked")
levels(data$social_accessible_services___1.factor)=c("Unchecked","Checked")
levels(data$social_accessible_services___2.factor)=c("Unchecked","Checked")
levels(data$social_accessible_services___3.factor)=c("Unchecked","Checked")
levels(data$social_accessible_services___4.factor)=c("Unchecked","Checked")
levels(data$social_accessible_services___5.factor)=c("Unchecked","Checked")
levels(data$social_accessible_services___6.factor)=c("Unchecked","Checked")
levels(data$social_primary_hc.factor)=c("Yes","No","Prefer not to answer")
levels(data$social_er_visit.factor)=c("Yes","No","Prefer not to answer")
levels(data$social_er_visit_reasons___2.factor)=c("Unchecked","Checked")
levels(data$social_er_visit_reasons___1.factor)=c("Unchecked","Checked")
levels(data$social_er_visit_reasons___0.factor)=c("Unchecked","Checked")
levels(data$social_past_hosp.factor)=c("Yes","No","Prefer not to answer")
levels(data$social_er_hct_resp_rating.factor)=c("1","2","3","4","5")
levels(data$social_er_hct_need_rating.factor)=c("1","2","3","4","5")
levels(data$social_er_hct_apt_con.factor)=c("1","2","3","4","5")
levels(data$social_pcp_care_use.factor)=c("Yes","No","Prefer not to answer")
levels(data$social_pcp_apt_timing.factor)=c("Within a week","Within two weeks","Within a month","Longer than a month")
levels(data$social_pcp_apt_rating.factor)=c("1","2","3","4","5")
levels(data$social_pcp_hct_resp_rating.factor)=c("1","2","3","4","5")
levels(data$social_pcp_hct_need_rating.factor)=c("1","2","3","4","5")
levels(data$social_pcp_hct_apt_con.factor)=c("1","2","3","4","5")
levels(data$social_rx_location.factor)=c("Provided by the clinic on-site","Pharmacy","Emergency Room","Other","Not needed (N/A)")
levels(data$social_med_specialist.factor)=c("Yes","No")
levels(data$social_soc_serv_util___5.factor)=c("Unchecked","Checked")
levels(data$social_soc_serv_util___4.factor)=c("Unchecked","Checked")
levels(data$social_soc_serv_util___3.factor)=c("Unchecked","Checked")
levels(data$social_soc_serv_util___2.factor)=c("Unchecked","Checked")
levels(data$social_soc_serv_util___1.factor)=c("Unchecked","Checked")
levels(data$social_soc_serv_util___0.factor)=c("Unchecked","Checked")
levels(data$social_judg_sys_involv___2.factor)=c("Unchecked","Checked")
levels(data$social_judg_sys_involv___1.factor)=c("Unchecked","Checked")
levels(data$social_judg_sys_involv___0.factor)=c("Unchecked","Checked")
levels(data$social_judg_sys_aid.factor)=c("Yes","No")
levels(data$medical_employed.factor)=c("Yes","No")
levels(data$social_income_type___6.factor)=c("Unchecked","Checked")
levels(data$social_income_type___5.factor)=c("Unchecked","Checked")
levels(data$social_income_type___4.factor)=c("Unchecked","Checked")
levels(data$social_income_type___3.factor)=c("Unchecked","Checked")
levels(data$social_income_type___2.factor)=c("Unchecked","Checked")
levels(data$social_income_type___1.factor)=c("Unchecked","Checked")
levels(data$social_income_type___0.factor)=c("Unchecked","Checked")
levels(data$social_money_storage___2.factor)=c("Unchecked","Checked")
levels(data$social_money_storage___1.factor)=c("Unchecked","Checked")
levels(data$social_money_storage___0.factor)=c("Unchecked","Checked")
levels(data$social_money_safety.factor)=c("Yes","No")
levels(data$social_id_forms___0.factor)=c("Unchecked","Checked")
levels(data$social_id_forms___1.factor)=c("Unchecked","Checked")
levels(data$social_id_forms___2.factor)=c("Unchecked","Checked")
levels(data$social_id_forms___3.factor)=c("Unchecked","Checked")
levels(data$social_id_current.factor)=c("Yes","No")
levels(data$social_id_obtain.factor)=c("Yes","No")
levels(data$medical_diet.factor)=c("Good","Needs improvement")
levels(data$medical_nextmeal.factor)=c("Yes","No")
levels(data$social_food_obtain___0.factor)=c("Unchecked","Checked")
levels(data$social_food_obtain___1.factor)=c("Unchecked","Checked")
levels(data$social_food_obtain___2.factor)=c("Unchecked","Checked")
levels(data$social_food_obtain___3.factor)=c("Unchecked","Checked")
levels(data$social_food_obtain___4.factor)=c("Unchecked","Checked")
levels(data$social_food_obtain___5.factor)=c("Unchecked","Checked")
levels(data$social_food_types___0.factor)=c("Unchecked","Checked")
levels(data$social_food_types___1.factor)=c("Unchecked","Checked")
levels(data$social_food_types___2.factor)=c("Unchecked","Checked")
levels(data$social_food_types___3.factor)=c("Unchecked","Checked")
levels(data$social_food_types___4.factor)=c("Unchecked","Checked")
levels(data$social_food_types___5.factor)=c("Unchecked","Checked")
levels(data$social_food_carbs.factor)=c("Daily","A few times a week","Once a week","Less than once a week")
levels(data$social_food_meat.factor)=c("Daily","A few times a week","Once a week","Less than once a week")
levels(data$social_food_veggies.factor)=c("Daily","A few times a week","Once a week","Less than once a week")
levels(data$social_food_fruit.factor)=c("Daily","A few times a week","Once a week","Less than once a week")
levels(data$social_food_sweets.factor)=c("Daily","A few times a week","Once a week","Less than once a week")
levels(data$social_food_chips.factor)=c("Daily","A few times a week","Once a week","Less than once a week")
levels(data$medical_exercise.factor)=c("Yes","No")
levels(data$social_drink_amount.factor)=c("Less than 1 bottle (16 oz)","1-2 bottles (16-32 oz)","2-5 bottles (32-80 oz)")
levels(data$social_drink_source___0.factor)=c("Unchecked","Checked")
levels(data$social_drink_source___1.factor)=c("Unchecked","Checked")
levels(data$social_drink_source___2.factor)=c("Unchecked","Checked")
levels(data$social_drink_source___3.factor)=c("Unchecked","Checked")
levels(data$social_drink_source___4.factor)=c("Unchecked","Checked")
levels(data$social_drink_purify.factor)=c("Yes","No")
levels(data$medical_caffeineyn.factor)=c("Yes","No")
levels(data$social_bathroom_access.factor)=c("24 hours/day","Only during the day (7am-7pm)","Only during the night (7pm-7am)","Never")
levels(data$social_bathroom_accessibility.factor)=c("1","2","3","4","5")
levels(data$social_bathe_freq.factor)=c("5-7x per week","2-4x per week","1x per week","Less than 1x per week")
levels(data$social_bathe_location___0.factor)=c("Unchecked","Checked")
levels(data$social_bathe_location___1.factor)=c("Unchecked","Checked")
levels(data$social_bathe_location___2.factor)=c("Unchecked","Checked")
levels(data$social_bathe_location___3.factor)=c("Unchecked","Checked")
levels(data$social_bathe_location___4.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___0.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___1.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___2.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___3.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___4.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___5.factor)=c("Unchecked","Checked")
levels(data$social_sleep_cover___6.factor)=c("Unchecked","Checked")
levels(data$social_sleep_position___0.factor)=c("Unchecked","Checked")
levels(data$social_sleep_position___1.factor)=c("Unchecked","Checked")
levels(data$social_sleep_position___2.factor)=c("Unchecked","Checked")
levels(data$social_sleep_position___3.factor)=c("Unchecked","Checked")
levels(data$social_sleep_time___0.factor)=c("Unchecked","Checked")
levels(data$social_sleep_time___1.factor)=c("Unchecked","Checked")
levels(data$social_sleep_time___2.factor)=c("Unchecked","Checked")
levels(data$social_sleep_time___3.factor)=c("Unchecked","Checked")
levels(data$social_sleep_time___4.factor)=c("Unchecked","Checked")
levels(data$social_sleep_duration.factor)=c("1-4 hours","4-6 hours","6-8 hours","Over 8 hours")
levels(data$social_sleep_safety.factor)=c("1","2","3","4","5")
levels(data$social_fears___0.factor)=c("Unchecked","Checked")
levels(data$social_fears___1.factor)=c("Unchecked","Checked")
levels(data$social_fears___2.factor)=c("Unchecked","Checked")
levels(data$social_fears___3.factor)=c("Unchecked","Checked")
levels(data$social_fears___4.factor)=c("Unchecked","Checked")
levels(data$social_sleep_harm.factor)=c("Yes","No")
levels(data$medical_marital.factor)=c("Single","In a relationship","Married","Separated","Divorced")
levels(data$patient_navigation_full_intake_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$patient_status.factor)=c("удовлетворительное","средней степени тяжести","тяжелое")
levels(data$psy_status.factor)=c("ясное","оглушение","сопор","кома")
levels(data$ddcd_f5fa75_complete.factor)=c("Incomplete","Unverified","Complete")
