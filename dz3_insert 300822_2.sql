INSERT INTO singers (s_id,singer_name)
VALUES
(1,'Аквариум'),
(2,'Майк:Науменко'),
(3,'Андрей:Макаревич'),
(4,'КИНО'),
(5,'БРАВО'),
(6,'БИ:2'),
(7,'Вячеслав:Бутусов'),
(8,'Воскресенье');
INSERT INTO styles(st_id,style_name)
VALUES
(1,'поп рок');
INSERT INTO styles
VALUES
(2,'панк рок');
INSERT INTO styles
VALUES
(3,'БИТ');
INSERT INTO styles
VALUES
(4,'русский рок');
INSERT INTO styles
VALUES
(5,'пост панк');
INSERT INTO albums(a_id,album_name,year_of_release)
VALUES
(1,'Десять стрел',1985);
INSERT INTO albums
VALUES
(2,'Акустика',1982);
INSERT INTO albums
VALUES
(3,'Равноденствие',1988);
INSERT INTO albums
VALUES
(4,'Радио Африка',1983);
INSERT INTO albums
VALUES
(5,'LV',1982);
INSERT INTO albums
VALUES
(6,'Последний герой',1989);
INSERT INTO albums
VALUES
(7,'Это не любовь',1985);
INSERT INTO albums
VALUES
(8,'2 магнитоальбом',1985);
INSERT INTO albums
VALUES
(9,'Дорога в облаках',1994);
INSERT INTO albums
VALUES
(10,'Отрываясь',1997);
INSERT INTO albums
VALUES
(11,'Воскресенье 1',1979);
INSERT INTO albums
VALUES
(12,'У Ламбарда',1991);
INSERT INTO albums
VALUES
(13,'БИ 2',2018);
INSERT INTO albums
VALUES
(14,'Невидимка',2018);
INSERT INTO records(r_id,record_name,record_time,album_id)
VALUES
(1,'мой Город золотой',100,1);
INSERT INTO records
VALUES
(2,'Хочу перемен',200,6);
INSERT INTO records
VALUES
(3,'Чудесная страна',300,8);
INSERT INTO records
VALUES
(4,'Золото на голубом',400,3);
INSERT INTO records
VALUES
(5,'У Ломбарда',100,12);
INSERT INTO records
VALUES
(6,'Моей звезде',200,2);
INSERT INTO records
VALUES
(7,'Прощай детка',300,5);
INSERT INTO records
VALUES
(8,'my Рок-н-ролл мёртв',500,4);
INSERT INTO records
VALUES
(9,'Иванов',100,2);
INSERT INTO records
VALUES
(10,'Лето',200,5);
INSERT INTO records
VALUES
(11,'Весна',300,7);
INSERT INTO records
VALUES
(12,'Дорога в облаках',400,9);
INSERT INTO records
VALUES
(13,'Однажды мир прогнётся под нас',100,10);
INSERT INTO records
VALUES
(14,'Кто виноват',200,11);
INSERT INTO records
VALUES
(15,'мой Полковник',300,13);
INSERT INTO records
VALUES
(16,'Прощальное письмо',400,14);
INSERT INTO records
values
(17,'Песня не из сборника',400,13);
INSERT INTO collections(c_id,collection_name,year_of_release)
VALUES
(1,'Асса',1987); 
INSERT INTO collections
VALUES 
(2,'20 лет спустя',1996);
INSERT INTO collections
VALUES
(3,'Все братья-сёстры',1978);
INSERT INTO collections
VALUES
(4,'Аквариум.10 лет.',1982);
INSERT INTO collections
VALUES
(5,'Брат 2',2000);
INSERT INTO collections
VALUES
(6,'Лето',1985);
INSERT INTO collections
VALUES
(7,'The Best of',2018);
INSERT INTO collections
VALUES
(8,'50 лет на двоих',2019);
INSERT INTO record_collection (rc_id,record_id,collection_id)
VALUES
(1,1,1);
INSERT INTO record_collection
VALUES
(2,2,1);
INSERT INTO record_collection
VALUES
(3,3,1);
INSERT INTO record_collection
VALUES
(4,3,7);
INSERT INTO record_collection
VALUES
(5,4,2);
INSERT INTO record_collection
VALUES
(6,5,2);
INSERT INTO record_collection
VALUES
(7,6,3);
INSERT INTO record_collection
VALUES
(8,7,3);
INSERT INTO record_collection
VALUES
(9,8,4);
INSERT INTO record_collection
VALUES
(10,9,4);
INSERT INTO record_collection
VALUES
(11,10,6);
INSERT INTO record_collection
VALUES
(12,11,6);
INSERT INTO record_collection
VALUES
(13,12,7);
INSERT INTO record_collection
VALUES
(14,13,8);
INSERT INTO record_collection
VALUES
(15,14,8);
INSERT INTO record_collection
VALUES
(16,15,5);
INSERT INTO record_collection
VALUES
(17,16,5);
INSERT INTO singer_album (sa_id,singer_id,album_id)
VALUES
(1,1,1);
INSERT INTO singer_album
VALUES
(2,4,6);
INSERT INTO singer_album
VALUES
(3,5,8);
INSERT INTO singer_album
VALUES
(4,1,3);
INSERT INTO singer_album
VALUES
(5,3,12);
INSERT INTO singer_album
VALUES
(6,6,13);
INSERT INTO singer_album
VALUES
(7,7,14);
INSERT INTO singer_album
VALUES
(8,1,4);
INSERT INTO singer_album
VALUES
(9,1,2);
INSERT INTO singer_album
VALUES
(10,2,5);
INSERT INTO singer_album
VALUES
(11,4,7);
INSERT INTO singer_album
VALUES
(12,5,9);
INSERT INTO singer_album
VALUES
(13,3,10);
INSERT INTO singer_album
VALUES
(14,8,11);
INSERT INTO singer_style (ss_id,singer_id,style_id)
VALUES
(1,1,4);
INSERT INTO singer_style
VALUES
(2,2,4);
INSERT INTO singer_style
VALUES
(3,2,2);
INSERT INTO singer_style
VALUES
(4,3,4);
INSERT INTO singer_style
VALUES
(5,4,1);
INSERT INTO singer_style
VALUES
(6,4,4);
INSERT INTO singer_style
VALUES
(7,5,3);
INSERT INTO singer_style
VALUES
(8,6,1);
INSERT INTO singer_style
VALUES
(9,6,5);
INSERT INTO singer_style
VALUES
(10,7,4);
INSERT INTO singer_style
VALUES
(11,8,4);
       


  