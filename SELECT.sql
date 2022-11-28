-------название и год выхода альбомов, вышедших в 2018 году--------------------------

SELECT title, year_issue FROM album
WHERE year_issue = 2018;

-------название и продолжительность самого длительного трека-------------------------

SELECT title, duration FROM tracks
ORDER BY duration DESC limit 1;

-------название треков, продолжительность которых не менее 3,5 минуты----------------

SELECT title, duration FROM tracks
WHERE duration >= '3:30'
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