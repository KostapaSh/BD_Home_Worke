-------название и год выхода альбомов, вышедших в 2018 году--------------------------

SELECT title, year_issue FROM album
WHERE year_issue = 2018;

-------название и продолжительность самого длительного трека-------------------------

SELECT title, duration FROM tracks
ORDER BY duration DESC limit 1;

-------название треков, продолжительность которых не менее 3,5 минуты----------------

SELECT title, duration FROM tracks
WHERE duration >= '330'
ORDER BY duration DESC;

-------названия сборников, вышедших в период с 2018 по 2020 год включительно;--------

SELECT title FROM collection
WHERE year_issue BETWEEN 2018 AND 2020;

-------исполнители, чье имя состоит из 1 слова;--------------------------------------

SELECT pseudonym FROM artist
WHERE NOT pseudonym LIKE '% %';

-------название треков, которые содержат слово "мой"/"my".---------------------------

SELECT title FROM tracks 
WHERE LOWER(title) LIKE '%my%';


-------количество исполнителей в каждом жанре;---------------------------------------

SELECT music_genre.TITLE_GENRE ,  COUNT(artist.PSEUDONYM) FROM music_genre
LEFT JOIN genre_artist ON music_genre.ID  = genre_artist.GENRE_ID
LEFT JOIN artist ON genre_artist.ARTIST_ID = artist.ID
GROUP BY music_genre.TITLE_GENRE 
ORDER BY COUNT(artist.ID) DESC;

-------количество треков, вошедших в альбомы 2019-2020 годов;------------------------

SELECT tracks.TITLE , album.YEAR_ISSUE FROM album
LEFT JOIN tracks ON tracks.album_id = album.id 
WHERE (album.YEAR_ISSUE >= 2019) AND (album.YEAR_ISSUE <= 2020);


-------средняя продолжительность треков по каждому альбому;--------------------------

SELECT album.TITLE , AVG(tracks.DURATION) FROM album
LEFT JOIN tracks ON tracks.album_id = album.id
GROUP BY album.TITLE
ORDER BY AVG(tracks.DURATION);

-------все исполнители, которые не выпустили альбомы в 2020 году;--------------------

SELECT DISTINCT artist.PSEUDONYM FROM artist
WHERE artist.PSEUDONYM NOT IN (
    SELECT DISTINCT artist.PSEUDONYM FROM artist
    LEFT JOIN album_artist ON artist.ID = album_artist.ARTIST_ID 
    LEFT JOIN album ON album.ID = album_artist.ALBUM_ID 
    WHERE album.YEAR_ISSUE = 2020
)

-------названия сборников, в которых присутствует конкретный исполнитель;------------

SELECT DISTINCT collection.TITLE , artist.PSEUDONYM FROM collection
LEFT JOIN tracks_collection ON collection.ID = tracks_collection.COLLECTION_ID
LEFT JOIN tracks ON tracks.ID  = tracks_collection.TRACKS_ID
LEFT JOIN album ON album.ID = tracks.ALBUM_ID
LEFT JOIN album_artist ON album_artist.ALBUM_ID  = album.ID 
LEFT JOIN artist ON artist.ID = album_artist.ARTIST_ID 
WHERE artist.PSEUDONYM LIKE '%МакSим%'
ORDER BY collection.TITLE ;

-------название альбомов, в которых присутствуют исполнители более 1 жанра;----------

SELECT album.TITLE FROM album
LEFT JOIN album_artist ON album.ID = album_artist.ALBUM_ID 
LEFT JOIN artist ON artist.ID = album_artist.ARTIST_ID 
LEFT JOIN genre_artist ON artist.ID = genre_artist.ARTIST_ID 
LEFT JOIN music_genre ON music_genre.ID = genre_artist.GENRE_ID 
GROUP BY album.TITLE
HAVING COUNT(DISTINCT music_genre.TITLE_GENRE) > 1
ORDER BY album.TITLE;

-------наименование треков, которые не входят в сборники;----------------------------

SELECT tracks.TITLE FROM tracks LEFT JOIN tracks_collection ON tracks.ID = tracks_collection.TRACKS_ID 
WHERE tracks_collection.TRACKS_ID IS NULL;

-------исполнителя(-ей), написавшего самый короткий по продолжительности трек;-------

SELECT artist.PSEUDONYM , tracks.DURATION FROM tracks
LEFT JOIN album ON album.ID = tracks.ALBUM_ID 
LEFT JOIN album_artist ON album_artist.ID = album.ID 
LEFT JOIN artist ON artist.ID = album_artist.ARTIST_ID 
GROUP BY artist.PSEUDONYM , tracks.DURATION 
HAVING tracks.DURATION = (SELECT min (DURATION) FROM tracks)
ORDER BY artist.PSEUDONYM;

-------название альбомов, содержащих наименьшее количество треков;-------------------

SELECT DISTINCT album.TITLE FROM album
LEFT JOIN tracks ON tracks.ALBUM_ID = album.ID 
WHERE tracks.ALBUM_ID IN (SELECT ALBUM_ID FROM tracks GROUP BY ALBUM_ID HAVING count(id)=(
SELECT COUNT(id) FROM tracks GROUP BY ALBUM_ID ORDER BY count LIMIT 1))
ORDER BY album.TITLE;












