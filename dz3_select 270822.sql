--1.Название и год выпуска альбомов, вышедших в 2018 году
SELECT album_name,year_of_release FROM albums
WHERE year_of_release = 2018;
--2.Название и продолжительность самого длинного трека
SELECT MAX(record_time) AS max_time FROM records;
--3.Название треков, продолжительность которых не менее 3,5 мин
SELECT record_name,record_time FROM records
WHERE record_time >= 210;
--4.Название сборников, вышедших в период с 2018 по 2020 включительно
SELECT collection_name,year_of_release FROM collections
WHERE year_of_release >= 2018 AND year_of_release <= 2020;
--5.Исполнители чьё имя состоит из 1 слова
SELECT singer_name FROM singers
WHERE singer_name  not LIKE '% %';
--6.Название треков, которые содержат слово мой/my
SELECT record_name FROM records
WHERE record_name LIKE '%мой%' OR record_name LIKE '%my%'; 
