---------------artist---------------------------

INSERT INTO artist(pseudonym) 
VALUES('Louis Armstrong');

INSERT INTO artist(pseudonym) 
VALUES('ABBA');

INSERT INTO artist(pseudonym) 
VALUES('Green day');

INSERT INTO artist(pseudonym) 
VALUES('Architects');

INSERT INTO artist(pseudonym) 
VALUES('Snoop Dogg');

INSERT INTO artist(pseudonym) 
VALUES('Eminem');

INSERT INTO artist(pseudonym) 
VALUES('МакSим');

INSERT INTO artist(pseudonym) 
VALUES('Zivert');

------------------music_genre------------------------

INSERT INTO music_genre (title_genre)
VALUES('Jazz');

INSERT INTO music_genre (title_genre)
VALUES('Disco');

INSERT INTO music_genre (title_genre)
VALUES('Rock');

INSERT INTO music_genre (title_genre)
VALUES('Hip-Hop');

INSERT INTO music_genre (title_genre)
VALUES('Pop');

------------------album------------------------

INSERT INTO album (title, year_issue)
VALUES('Hello, Dolly', '1964');

INSERT INTO album (title, year_issue)
VALUES('Let’s Boogie', '1976');

INSERT INTO album (title, year_issue)
VALUES('Father Of All', '2020');

INSERT INTO album (title, year_issue)
VALUES('Holy Hell', '2018');

INSERT INTO album (title, year_issue)
VALUES('Bible of Love', '2018');

INSERT INTO album (title, year_issue)
VALUES('Music to Be Murdered By', '2020');

INSERT INTO album (title, year_issue)
VALUES('Polygamy', '2018');

INSERT INTO album (title, year_issue)
VALUES('Vinyl', '2019');

-------------------tracks-----------------------

INSERT INTO tracks (title, duration, album_id)
VALUES('Duke is Place', '546', '1');

INSERT INTO tracks (title, duration, album_id)
VALUES('Cottontail', '430', '1');

INSERT INTO tracks (title, duration, album_id)
VALUES('Paper Dolls', '513', '2');

INSERT INTO tracks (title, duration, album_id)
VALUES('Bottom Coming Up', '450', '2');

INSERT INTO tracks (title, duration, album_id)
VALUES('Father of All…', '615', '3');

INSERT INTO tracks (title, duration, album_id)
VALUES('Fire, Ready, Aim', '525', '3');

INSERT INTO tracks (title, duration, album_id)
VALUES('Hereafter', '440', '4');

INSERT INTO tracks (title, duration, album_id)
VALUES('Mortal After All', '325', '4');

INSERT INTO tracks (title, duration, album_id)
VALUES('One More Day', '514', '5');

INSERT INTO tracks (title, duration, album_id)
VALUES('My God', '455', '5');

INSERT INTO tracks (title, duration, album_id)
VALUES('Those Kinda Nights', '601', '6');

INSERT INTO tracks (title, duration, album_id)
VALUES('In Too Deep', '412', '6');

INSERT INTO tracks (title, duration, album_id)
VALUES('Stamps', '315', '7');

INSERT INTO tracks (title, duration, album_id)
VALUES('My Secret', '443', '7');

INSERT INTO tracks (title, duration, album_id)
VALUES('Forever Young', '415', '8');

INSERT INTO tracks (title, duration, album_id)
VALUES('Tourist', '513', '8');

-------------------compilations--------------------

INSERT INTO collection (title, year_issue)
VALUES('Best collection of bullshit №1', '1980');

INSERT INTO collection (title, year_issue)
VALUES('Best collection of bullshit №2', '2018');

INSERT INTO collection (title, year_issue)
VALUES('Best collection of bullshit №3', '2020');

INSERT INTO collection (title, year_issue)
VALUES('Best collection of bullshit №4', '2019');

INSERT INTO collection (title, year_issue)
VALUES('The bullshit collection returns №1', '2021');

INSERT INTO collection (title, year_issue)
VALUES('The bullshit collection returns №2', '2022');

INSERT INTO collection (title, year_issue)
VALUES('The bullshit collection returns №3', '2020');

INSERT INTO collection (title, year_issue)
VALUES('The bullshit collection returns №4', '2021');

----------------------album_artist-------------------

INSERT INTO album_artist (album_id, artist_id)
VALUES('1', '1');

INSERT INTO album_artist (album_id, artist_id)
VALUES('2', '2');

INSERT INTO album_artist (album_id, artist_id)
VALUES('3', '3');

INSERT INTO album_artist (album_id, artist_id)
VALUES('4', '4');

INSERT INTO album_artist (album_id, artist_id)
VALUES('5', '5');

INSERT INTO album_artist (album_id, artist_id)
VALUES('6', '6');

INSERT INTO album_artist (album_id, artist_id)
VALUES('7', '7');

INSERT INTO album_artist (album_id, artist_id)
VALUES('8', '8');

INSERT INTO album_artist (album_id, artist_id)
VALUES('2', '5');

-----------------------genre_artist------------------

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('1', '1');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('2', '2');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('3', '3');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('3', '4');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('4', '5');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('4', '6');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('5', '7');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES('5', '8');

----------------------tracks_collection--------------

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('1', '1');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('2', '1');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('13', '2');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('14', '2');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('9', '2');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('10', '2');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('7', '2');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('8', '2');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('5', '3');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('6', '3');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('11', '3');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('12', '3');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('15', '4');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('16', '4');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('7', '4');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('9', '4');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('16', '5');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('9', '5');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('8', '5');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('14', '6');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('6', '6');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('7', '6');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('2', '7');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('4', '7');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('10', '7');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('5', '8');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('6', '8');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('11', '8');

INSERT INTO tracks_collection (tracks_id, collection_id)
VALUES('12', '8');