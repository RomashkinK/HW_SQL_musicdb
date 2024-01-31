CREATE TABLE IF NOT EXISTS genre (
id SERIAL PRIMARY KEY,
name VARCHAR(60) unique NOT NULL
);

CREATE TABLE IF NOT EXISTS musician (
id SERIAL PRIMARY KEY,
musicians_name VARCHAR(60) unique NOT NULL
);

CREATE TABLE IF NOT EXISTS musician_genre (
genre_id INTEGER REFERENCES genre(id),
musician_id INTEGER REFERENCES musician(id),
CONSTRAINT pk_musician_genre PRIMARY KEY (genre_id, musician_id)
);


CREATE TABLE IF NOT EXISTS album (
id SERIAL PRIMARY KEY,
album_name VARCHAR(60) unique NOT NULL,
year_of_release INTEGER check(year_of_release>1900)
);


CREATE TABLE IF NOT EXISTS coop_album (
album_id INTEGER REFERENCES album(id),
musician_id INTEGER REFERENCES musician(id),
CONSTRAINT pk_coop_album PRIMARY KEY (album_id, musician_id)
);


CREATE TABLE IF NOT EXISTS track (
id SERIAL PRIMARY KEY,
track_name VARCHAR(60) NOT NULL,
duration INTEGER,
album_id INTEGER REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
id SERIAL PRIMARY KEY,
collection_name VARCHAR(60) unique NOT NULL,
year_of_release INTEGER check(year_of_release>1900)
);

CREATE TABLE IF NOT EXISTS track_to_collection (
track_id INTEGER REFERENCES track(id),
collection_id INTEGER REFERENCES collection(id),
CONSTRAINT pk_track_to_collection PRIMARY KEY (track_id, collection_id)
);