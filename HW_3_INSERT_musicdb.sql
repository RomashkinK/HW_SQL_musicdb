INSERT INTO genre(name) values
('Hip-Hop'),
('Pop'),
('Rock');

INSERT into musician(musicians_name) values
('Black Eyed Peas'),
('Michael Jackson'),
('Deep Purple'),
('Queen');

INSERT INTO musician_genre(genre_id,musician_id) values
(1, 1),
(2, 2),
(3, 2),
(2, 4),
(3, 3),
(3, 4);

INSERT INTO album(album_name, year_of_release) values
('Behind the Front', 1998),
('Elephunk', 2003),
('The Beginning', 2019),
('Dangerous',1991),
('Invincible', 2001),
('Bananas', 2003),
('A Kind of Magic', 1986);

INSERT INTO coop_album(album_id, musician_id) values
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 4);

INSERT INTO track(track_name, duration, album_id) values
('Falling Up', 412, 1),
('Clap Your Hands', 306, 1),
('Movement', 508, 1),
('Sexy', 455, 2),
('Smells Like Funk', 316, 2),
('Why You Wanna Trip on Me', 412, 4),
('You Rock My World', 333, 5),
('Light Up the Night', 444, 3),
('Sun Goes Down', 522, 6),
('Who Wants to Live Forever', 412,7),
('Friends Will Be Friends', 147,7);

INSERT INTO collection(collection_name, year_of_release) values
('I', 2018),
('Dont', 2020),
('Know', 2019),
('Anything', 2000),
('About', 1998),
('Music', 2008);

INSERT INTO track_to_collection(track_id, collection_id) values
(1, 4),
(2, 1),
(3, 5),
(4, 4),
(5, 2),
(6, 3),
(7, 2),
(8, 5),
(9, 3),
(10, 1),
(11, 5);