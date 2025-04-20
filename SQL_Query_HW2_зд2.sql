CREATE TABLE IF NOT EXISTS musicstyle (
 styleID SERIAL PRIMARY KEY,
 name VARCHAR(25) NOT NULL
 );
 
CREATE TABLE IF NOT EXISTS album (
 albumID SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 release_date DATE NOT NULL
 );
 
CREATE TABLE IF NOT EXISTS artist (
 artistID SERIAL PRIMARY KEY,
 name VARCHAR(25) NOT NULL
 );

CREATE TABLE IF NOT EXISTS track (
 trackID SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 duration INT CHECK (duration BETWEEN 30 AND 900),
 albumID INTEGER REFERENCES album(albumID) NOT NULL
 );

CREATE TABLE IF NOT EXISTS artist_style (
 artist_styleID SERIAL PRIMARY KEY NOT null,
 style_id INT NOT NULL,
 artist_id INT NOT NULL,
 CONSTRAINT fk_style FOREIGN KEY (style_id) REFERENCES musicstyle (styleID) ON DELETE CASCADE,
 CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES artist (artistID) ON DELETE CASCADE
 );

CREATE TABLE IF NOT EXISTS album_artist (
 album_artistID SERIAL PRIMARY KEY,
 album_id INT NOT NULL,
 artist_id INT NOT NULL,
 CONSTRAINT fk_album FOREIGN KEY (album_id) REFERENCES album(albumID) ON DELETE CASCADE,
 CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES artist(artistID) ON DELETE CASCADE
 ); 

CREATE TABLE IF NOT EXISTS collection (
 collectionID SERIAL PRIMARY KEY NOT NULL,
 name VARCHAR(100) NOT NULL,
 collection_date DATE CHECK (collection_date BETWEEN '1980-01-01' AND '2025-04-01')
 );

CREATE TABLE IF NOT EXISTS track_collection (
 track_collectionID SERIAL PRIMARY KEY NOT NULL,
 collection_id INT NOT NULL,
 track_id INT NOT NULL,
 CONSTRAINT fk_collection FOREIGN KEY (collection_id) REFERENCES collection(collectionID) ON DELETE CASCADE,
 CONSTRAINT fk_track FOREIGN KEY (track_id) REFERENCES track(trackID) ON DELETE CASCADE
 );

 INSERT INTO musicstyle(name) VALUES
   ('ROCK'),
   ('POP'),
   ('CLASSIC'),
   ('COUNTRY');

INSERT INTO album VALUES
	('Sting In The Tail','2010-03-19'),
	('Конец попсе, танцуют все','2018-06-08'),
	('Berlioz: Symphonie Fantastique','31-12-2008'),
	('Summertime Blues','2022-07-14');

INSERT INTO artist VALUES
	('Scorpions'),
	('Руки в верх'),
	('Nikolay Petrov'),
	('Zach Bryan');
	
INSERT INTO track VALUES
	('Slave Me',147,1),
	('No Limit',193,1),
	('Он Тебя Целует',240,2),
	('Стоят подружки',246,2),
	('Berlioz: Symphonie Fantastique, Op. 14 - 2. Un Bal',364,3),
	('Berlioz: Symphonie Fantastique, Op. 14 - 4. Marche Au Supplice',304,3),
	('Motorcycle Drive By',144,4),
	('Oklahoma Smokeshow',198,4);

INSERT INTO collection VALUES
	('Collection melody#1','2021-08-11'),
	('Collection melody#2','2022-08-11'),	
	('Collection melody#3','2023-08-11'),
	('Collection melody#4','2024-08-11');
	
INSERT INTO artist_style VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(1,4);

INSERT INTO album_artist VALUES		
	(1,1),
	(2,2),
	(3,3),
	(4,4);
	
INSERT INTO track_collection VALUES
	(1,1),
	(1,2),
	(1,3),
	(2,4)
	(2,1),
	(2,2),
	(3,3),
	(3,4),
	(3,1),
	(4,2),
	(4,3),
	(4,4);
betw
SELECT name, duration
FROM track
WHERE MAX(duration);

SELECT name, duration
FROM track
WHERE duration < 210;

SELECT name, collection_date
FROM collection
WHERE collection_date BETWEEN 2018-01-01 AND 2020-12-31;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT name
FROM track
WHERE name LIKE '%мой%'
   OR name LIKE '%my%';

   
 

	