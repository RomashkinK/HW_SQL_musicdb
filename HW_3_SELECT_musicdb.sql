--название и продолжительность самого длительного трека
SELECT track_name AS longest_track, duration AS track_duration FROM track
ORDER BY duration DESC 
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name FROM track
WHERE duration >= 3.5*60;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name, year_of_release FROM collection
WHERE year_of_release BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из одного слова
SELECT musicians_name AS musician FROM musician
WHERE musicians_name NOT LIKE '% %';

--название треков, которые содержат слово "мой" или "my"
SELECT track_name FROM track
WHERE track_name ILIKE 'my %' OR track_name ILIKE '% my' OR track_name ILIKE '% my %' OR track_name = 'my'
OR track_name ILIKE 'мой %' OR track_name ILIKE '% мой' OR track_name ILIKE '% мой %' OR track_name = 'мой';

--количество исполнителей в каждом жанре
SELECT genre_id, count(musician_id) FROM musician_genre
GROUP BY genre_id;

--количество треков, вошедших в альбомы 2019–2020 годов
SELECT year_of_release , count(track_name) as amount_of_tracks FROM track
JOIN album AS a ON track.album_id = a.id
GROUP BY a.year_of_release 
HAVING a.year_of_release  between 2019 and 2020;

--средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(duration)as avg_duration from track
join album as a on track.album_id = a.id
group by a.album_name;

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT musicians_name FROM musician AS m
JOIN coop_album AS ca ON m.id = ca.musician_id
JOIN album AS a ON ca.album_id = a.id
WHERE a.year_of_release  != 2020
GROUP BY m.id;

--названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT collection_name FROM musician AS m
JOIN coop_album AS ca ON m.id = ca.musician_id
JOIN album AS a ON ca.album_id = a.id
JOIN track AS t ON a.id = t.album_id
JOIN track_to_collection AS ttc ON t.id = ttc.track_id
JOIN collection AS c ON ttc.collection_id = c.id
WHERE m.musicians_name LIKE '%Michael Jackson%'
