-- pragma foreign_keys = 1;

DROP TABLE IF EXISTS students;
CREATE TABLE students(
		id INTEGER PRIMARY KEY, 
		surname VARCHAR(30), 
		name VARCHAR(30),
		patronymic VARCHAR(3)
);

INSERT INTO students VALUES
(1, 'Alekseev', 'Aleksey', null),
(2, 'Ашрятова', 'Римма', null),
(3, 'Борисов', 'Александр', null ),
(4, 'Гарин', 'Максим', null),
(5, 'Головатюк', 'Анастасия', 'Михайловна'),
(6, 'Горбунов', 'Андрей', 'Александрович'),
(7, 'Гуськов', 'Артем', 'Сергеевич'),
(8, 'Дворянинова', 'Дарья', 'Алексеевна'),
(9, 'Еделева', 'Юлия', 'Павловна'),
(10, 'Зевайкин', 'Андрей', 'Евгеньевич'),
(11, 'Исоков', 'Асадбек', 'Анваржонович'),
(12, 'Казакова', 'Ирина', 'Сергеевна'),
(13, 'Квашнин', 'Кирилл', 'Алексеевич'),
(14, 'Кирдюшкин', 'Данила', 'Владимирович'),
(15, 'Козина', 'Светлана', 'Александровна'),
(16, 'Козлова', 'Екатерина', 'Сергеевна'),
(17, 'Котков', 'Сергей', 'Николаевич'),
(18, 'Ландышев', 'Александр', 'Викторович'),
(19, 'Логинов', 'Виталий', 'Викторович'),
(20, 'Малов', 'Кирилл', 'Игоревич'),
(21, 'Манин', 'Данила', 'Игоревич'),
(22, 'Маслова', 'Елена', 'Сергеевна'),
(23, 'Паршин', 'Артем', 'Дмитриевич'),
(24, 'Пузин', 'Владислав', 'Алексеевич'),
(25, 'Сайфетдинов', 'Салават', 'Фаильевич'),
(26, 'Симатов', 'Вадим', 'Витальевич'),
(27,'Александров','К','В'),
(28,'Антонов','К','Ю'),
(29,'Арянов','В','А'),
(30,'Ахунзада','Г','А'),
(31,'Балашов','В','В'),
(32,'Бикмаев','Р','Р'),
(33,'Булатова','Г','Р'),
(34,'Гераськин','В','М'),
(35,'Гурьков','Н','Д'),
(36,'Дурнаев','Н','С'),
(37,'Егоров','О','А'),
(38,'Кокулов','А','Ф'),
(39,'Кудашкин','А','Е'),
(40,'Лихорадов','И','И'),
(41,'Логинов','А','Д'),
(42,'Ломайкин','А','С'),
(43,'Макушев','В','А'),
(44,'Макшев','Н','И'),
(45,'Матвеев','М','Д'),
(46,'Парамонов','О','Н'),
(47,'Плаксин','Д','В'),
(48,'Сазонов','А','В'),
(49,'Седики','Х','Ю'),
(50,'Сюсин','А','В'),
(51,'Тростин','С','А'),
(52,'Шабарин','И','А');

DROP TABLE IF EXISTS groups;
CREATE TABLE groups(
		id INTEGER PRIMARY KEY
);
INSERT INTO groups VALUES
(303),
(402);


DROP TABLE IF EXISTS labs;
CREATE TABLE labs(
		id INTEGER PRIMARY KEY, 
		num_lab Integer not null,
		group_id Integer,
		max_point DOUBLE NOT NULL,
		dead_line TEXT NOT NULL,
		FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE
);

INSERT INTO labs VALUES
(1, 1, 402, 8, '06.02.2021'),
(2, 2, 402, 8, '13.02.2021'),
(3, 3, 402, 9, '27.02.2021'),
(4, 4, 402, 12, '13.03.2021'),
(5, 5, 402, 12, '27.03.2021'),
(6, 6, 402, 12, '10.04.2021'),
(7, 7, 402, 9, '17.04.2021');

DROP TABLE IF EXISTS academic_performance;
CREATE TABLE academic_performance(
		student_id integer NOT NULL,
		id_lab integer NOT NULL,
		student_date TEXT,
		student_point DOUBLE,
		FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
		FOREIGN KEY (id_lab) REFERENCES labs(num_lab) ON DELETE CASCADE
);


DROP TABLE IF EXISTS group_student;
CREATE TABLE group_student(
		group_id INTEGER,
		student_id INTEGER,
		FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
		FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE
);

INSERT INTO group_student VALUES
(1,303),
(2,303),
(3,303),
(4,303),
(5,303),
(6,303),
(7,303),
(8,303),
(9,303),
(10,303),
(11,303),
(12,303),
(13,303),
(14,303),
(15,303),
(16,303),
(17,303),
(18,303),
(19,303),
(20,303),
(21,303),
(22,303),
(23,303),
(24,303),
(25,303),
(26,303),
(27,402),
(28,402),
(29,402),
(30,402),
(31,402),
(32,402),
(33,402),
(34,402),
(35,402),
(36,402),
(37,402),
(38,402),
(39,402),
(40,402),
(41,402),
(42,402),
(43,402),
(44,402),
(45,402),
(46,402),
(47,402),
(48,402),
(49,402),
(50,402),
(51,402),
(52,402);