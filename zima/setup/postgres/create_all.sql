-- Создаем таблицу со студентами
create table IF NOT EXISTS STUDENTS
(
   code varchar(6) primary key,
   FULLNAME varchar(60)
);

-- Создаем таблицу занятий
CREATE TABLE IF NOT EXISTS Lesson(
id serial primary key,
Title varchar(200)
);

-- Создаем таблицу с Группами
CREATE TABLE IF NOT EXISTS Groups
(
code varchar(10) primary key,
cafedra varchar(4),
spec varchar(8),
EndYear int
);

-- Создаем таблицу с расписанием
CREATE TABLE IF NOT EXISTS Timetable
(
id serial primary key,
date timestamp, 
groupId varchar(10),
lessonId int, 
lessonNum int, 
FOREIGN KEY (groupId) REFERENCES Groups(code), 
FOREIGN KEY (lessonId) REFERENCES Lesson(id)
);

-- Создаем общую таблицу с посещениями
create table IF NOT EXISTS Visit
(
id serial,
studentId varchar(6),
isVisited bool,
tt_id int,
date date,
FOREIGN KEY (studentId) REFERENCES Students(code),
FOREIGN KEY (tt_id) REFERENCES Timetable(id)
);

-- Создаем таблицу Группа-Студент
CREATE TABLE IF NOT EXISTS GroupStudent
(
	id serial primary key,
	code_st varchar(6),
	code_group varchar(10),
	FOREIGN KEY (code_st) REFERENCES Students(code),
	FOREIGN KEY (code_group) REFERENCES Groups(code)
);

----------------------------------STUDENTS--------------------------------
-- БСБО-01-19

INSERT INTO Students(code, fullname) VALUES ('STUD1','Аветисян Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD2','Богатырёв О.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD3','Болотов А.Ю.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD4','Буграев Г.Я.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD5','Булышев А.П') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD6','Гордиенко Е.Ю.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD7','Горобцов А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD8','Долгушина Н.И.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD9','Донецкая А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD10','Иванов С.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD11','Ивашин А.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD12','Казанцев В.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD13','Лагуткин Н.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD14','Лубошников М.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD15','Максимов А.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD16','Мелентьев Д.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD17','Никонова Ю.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD18','Очир-Горяева И.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD19','Приходько Д.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD20','Пуртов Д.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD21','Сулохин Р.Р.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD22','Трушин М.М.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD23','Туминский М.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD24','Шеставина А.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD25','Шкунов А.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD26','Шмитько К.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD27','Шнырёва Е.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD28','Шутикова В.А.') ON CONFLICT DO NOTHING; 

-- Рандомные люди

INSERT INTO Students(code, fullname) VALUES ('STUD29','Анянова М.И.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD30','Байгужина Л.Р.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD31','Богапова А.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD32','Волков М.Ю.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD33','Деткина В.О.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD34','Ерышева А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD35','Ефимов Д.Б.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD36','Жигульская М.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD37','Каканов Е.Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD38','Карпич Ю.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD39','Катерина И.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD40','Клемешов А.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD41','Корсун В.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD42','Лазарева Т.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD43','Маляров С.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD44','Миронов К.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD45','Перевалов В.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD46','Пшеничная Е.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD47','Редькина Е.Ю.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD48','Савельев А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD49','Самсонов А.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD50','Семикова Л.Е.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD51','Серова А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD52','Стасюк А.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD53','Токмакова Ж.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD54','Толкачев Д.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD55','Уварова А.Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD56','Фазлетдинова Э.М.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD57','Фаизова Л.Ф.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD58','Хамицев А.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD59','Шевцова А.В.') ON CONFLICT DO NOTHING;

-- БСБО-02-19

INSERT INTO Students(code, fullname) VALUES ('STUD60','Абдуллин Ф.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD61','Андреев А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD62','Андреев Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD63','Антонов Э.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD64','Аушев А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD65','Вайдич Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD66','Глубоцкий Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD67','Голубев Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD68','Иванов А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD69','Ким А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD70','Коминцев Н.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD71','Корнилов В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD72','Кряжин А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD73','Куликов Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD74','Мишин Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD75','Нефед Н.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD76','Онух С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD77','Сараев Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD78','Свешников Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD79','Семин С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD80','Тихомиров А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD81','Хачатуров Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD82','Чемоданова А.') ON CONFLICT DO NOTHING;

-- БСБО-03-19

INSERT INTO Students(code, fullname) VALUES ('STUD83','Ахмеров А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD84','Базров С.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD85','Бакиных А.Г.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD86','Бурмакин А.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD87','Дьяков М.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD88','Елизарова Е.Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD89','Иванов Д.Э.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD90','Иванов М.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD91','Ишалина А.Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD92','Карягин Д.Д.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD93','Киров О.И.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD94','Коленов В.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD95','Комягин О.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD96','Кузин А.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD97','Кузнецов А.М.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD98','Ломако А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('STUD99','Лукьянов Е.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd10','Осин А.К.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd11','Рязанов А.П.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd12','Семченко А.Е.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd13','Сливинский А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd14','Солодовник Н.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd15','Федотов В.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd16','Фомин Н.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd17','Хабибулин Ф.С.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd18','Шихиев М.Ю.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd19','Штейн А.А.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd20','Баранов Д.В.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd21','Смирнов Н.Н.') ON CONFLICT DO NOTHING;
INSERT INTO Students(code, fullname) VALUES ('dTUd22','Шутов Д.В.') ON CONFLICT DO NOTHING;


----------------------------------GROUPS--------------------------------

INSERT INTO Groups(code, cafedra, spec, endyear) VALUES ('БСБО-01-19','КБ-3','09.03.02', 2023) ON CONFLICT DO NOTHING;
INSERT INTO Groups(code, cafedra, spec, endyear) VALUES ('БСБО-02-19','КБ-3','09.03.02', 2023) ON CONFLICT DO NOTHING;
INSERT INTO Groups(code, cafedra, spec, endyear) VALUES ('БСБО-03-19','КБ-3','09.03.02', 2023) ON CONFLICT DO NOTHING;
INSERT INTO Groups(code, cafedra, spec, endyear) VALUES ('БИСО-01-19','КБ-4','09.03.04', 2023) ON CONFLICT DO NOTHING;


----------------------------------GROUPSTUDENT--------------------------------

INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD1','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD2','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD3','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD4','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD5','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD6','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD7','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD8','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD9','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD10','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD11','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD12','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD13','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD14','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD15','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD16','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD17','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD18','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD19','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD20','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD21','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD22','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD23','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD24','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD25','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD26','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD27','БСБО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD28','БСБО-01-19') ON CONFLICT DO NOTHING;

INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD60','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD61','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD62','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD63','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD64','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD65','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD66','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD67','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD68','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD69','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD70','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD71','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD72','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD73','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD74','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD75','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD76','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD77','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD78','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD79','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD80','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD81','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD82','БСБО-02-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD83','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD84','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD85','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD86','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD87','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD88','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD89','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD90','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD91','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD92','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD93','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD94','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD95','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD96','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD97','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD98','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD99','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd10','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd11','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd12','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd13','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd14','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd15','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd16','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd17','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd18','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd19','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd20','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd21','БСБО-03-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('dTUd22','БСБО-03-19') ON CONFLICT DO NOTHING;

INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD29','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD30','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD31','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD32','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD33','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD34','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD35','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD36','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD37','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD38','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD39','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD40','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD41','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD42','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD43','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD44','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD45','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD46','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD47','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD48','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD49','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD50','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD51','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD52','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD53','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD54','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD55','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD56','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD57','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD58','БИСО-01-19') ON CONFLICT DO NOTHING;
INSERT INTO GroupStudent(code_st, code_group) VALUES ('STUD59','БИСО-01-19') ON CONFLICT DO NOTHING;


----------------------------------LESSON--------------------------------
-- БСБО
INSERT INTO Lesson(title) VALUES ('Алгоритмы компонентов цифровой обработки данных') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Анализ программного кода на наличие вредоносных объектов') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Методы и алгоритмы аутентификации компонент программных систем') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Методы системной инженерии') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Облачные технологии') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Организационно-правовое обеспечение защиты информации') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Проектирование архитектуры программного обеспечения') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Разработка безопасного программного обеспечения') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Технологии обеспечения информационной безопасности') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Управление информационно-технологическими проектами') ON CONFLICT DO NOTHING;

-- БИСО
INSERT INTO Lesson(title) VALUES ('Криптографические методы защиты информации') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Формализованные модели и методы решения аналитических задач') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Информационно-аналитические технологии поиска угроз информационной безопасности') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Принципы построения, проектирования и эксплуатации информационно-аналитических систем') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Компьютерная криминалистика') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Безопасность автоматизированных систем управления технологическим процессом') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Технология обработки и передачи данных') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Основы управленческой деятельности') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Методы анализа данных') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Администрирование инфраструктуры виртуализации сетевых функций') ON CONFLICT DO NOTHING;
INSERT INTO Lesson(title) VALUES ('Безопасность операционных систем') ON CONFLICT DO NOTHING;

----------------------------------VISIT--------------------------------(пример)

INSERT INTO Visit(studentId, date, isVisited) VALUES ('STUD1', '2022-09-01 9:00', true) ON CONFLICT DO NOTHING;
INSERT INTO Visit(studentId, date, isVisited) VALUES ('STUD1', '2022-09-01 10:40', true) ON CONFLICT DO NOTHING;
INSERT INTO Visit(studentId, date, isVisited) VALUES ('STUD1', '2022-09-01 12:40', true) ON CONFLICT DO NOTHING;
INSERT INTO Visit(studentId, date, isVisited) VALUES ('STUD1', '2022-09-01 14:20', true) ON CONFLICT DO NOTHING;



















