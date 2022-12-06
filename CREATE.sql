CREATE TABLE IF NOT EXISTS music_genre(
	id SERIAL PRIMARY KEY,
	title_genre varchar(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist(
	id SERIAL PRIMARY KEY,
	pseudonym varchar(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS album(
	id SERIAL PRIMARY KEY,
	title varchar(60) NOT NULL,
	year_issue integer NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist(
	id SERIAL PRIMARY KEY,
	genre_id integer NOT NULL REFERENCES music_genre (id),
	artist_id integer NOT NULL REFERENCES artist (id)
);

CREATE TABLE IF NOT EXISTS album_artist(
    id SERIAL PRIMARY KEY,
    album_id integer NOT NULL REFERENCES album (id),
    artist_id integer NOT NULL REFERENCES artist (id)
);

CREATE TABLE IF NOT EXISTS tracks(
    id SERIAL PRIMARY KEY,
    title varchar(60) NOT NULL,
    duration integer NOT NULL,
    album_id integer NOT NULL REFERENCES album (id)
);

CREATE TABLE IF NOT EXISTS collection(
    id SERIAL PRIMARY KEY,
    title varchar(60) NOT NULL,
    year_issue integer NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks_collection(
    id SERIAL PRIMARY KEY,
    tracks_id integer NOT NULL REFERENCES tracks (id),
    collection_id integer NOT NULL REFERENCES collection (id)
);



