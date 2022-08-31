--3.1 Название и год выпуска альбомов, вышедших в 2018 году
SELECT album_name,year_of_release FROM albums
WHERE year_of_release = 2018;
--3.2 Название и продолжительность самого длинного трека
select record_name,record_time from records
where record_time = (select MAX(record_time) from records);
--3.3 Название треков, продолжительность которых не менее 3,5 мин
SELECT record_name,record_time FROM records
WHERE record_time >= 210;
--3.4 Название сборников, вышедших в период с 2018 по 2020 включительно
SELECT collection_name,year_of_release FROM collections
WHERE year_of_release between 2018 AND 2020;
--3.5 Исполнители чьё имя состоит из 1 слова
SELECT singer_name FROM singers
WHERE singer_name   not iLIKE '%:%';
--3.6 Название треков, которые содержат слово мой/my
SELECT record_name FROM records
WHERE record_name LIKE '%мой%' OR record_name LIKE '%my%'; 
--4.1количество исполнителей в каждом жанре
select style_name, count(*) as count_of_singers from singer_style ss,styles s
where ss.style_id = s.st_id
group by style_name;
--4.2 количество треков, вошедших в альбомы 2018-2020 годов
select year_of_release,count(*) from records r,albums a
where r.album_id = a.a_id and a.year_of_release >= 2018 and a.year_of_release <= 2020
group by year_of_release;
--4.3 средняя продолжительность треков по каждому альбому
select album_name,AVG(record_time) as AVG_time_records_in_sec from records r,albums a
where r.album_id = a.a_id 
group by album_name;
--4.4 Все исполнители, которые не выпустили альбомы в 2018 году
select singer_name from singers
where singer_name not in (
select singer_name  from singers s,albums a,singer_album sa
where s.s_id = sa.singer_id and a.a_id = sa.album_id and a.year_of_release = 2018
group by singer_name);
--4.5 Названия сборников в которых присутствует конкретный исполнитель
select collection_name from records r,record_collection rc,collections c
where r.r_id = rc.record_id and rc.collection_id = c.c_id and r.record_name in (
select record_name  from records r,singer_album sa,singers s
where r.album_id = sa.album_id and sa.singer_id = s.s_id and s.singer_name = 'КИНО');
--4.6 Названия альбомов в которых присутствуют исполнители более 1 жанра
select album_name,singer_name  from singers s,albums a,singer_album sa
where s.s_id = sa.singer_id and a.a_id = sa.album_id and s.singer_name in (
select singer_name from singer_style ss,singers s
where ss.singer_id = s.s_id
group by singer_name
having count(*) > 1);
--4.7 Наименование треков, которые не входят в сборники
select record_name from records 
where record_name not in (
select record_name from records r,record_collection rc
where r.r_id = rc.record_id
group by record_name);
--4.8 Исполнитель написавший самый короткий по продолжительности трек
select singer_name,record_name,record_time  from records r,singer_album sa,singers s
where r.album_id = sa.album_id and sa.singer_id = s.s_id and r.record_time = (select MIN(record_time) from records);
--4.9 Название альбомов, содержащих наименьшее количество треков
select album_name  from
(select album_name,count(*) as count_records from albums a,records r
where r.album_id = a.a_id group by a.album_name
) as foo
group by album_name,count_records
having count_records = 1;

 




