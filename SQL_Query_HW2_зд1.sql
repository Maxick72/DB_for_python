 INSERT INTO musicstyle(name) VALUES
   ('ROCK'),
   ('POP'),
   ('CLASSIC'),
   ('COUNTRY');

INSERT INTO album(name, release_date) VALUES
	('Sting In The Tail','2010-03-19'),
	('Конец попсе, танцуют все','2018-06-08'),
	('Berlioz: Symphonie Fantastique','31-12-2008'),
	('Summertime Blues','2022-07-14');

INSERT INTO artist(name) VALUES
	('Scorpions'),
	('Руки в верх'),
	('Nikolay Petrov'),
	('Zach Bryan');
	
INSERT INTO track(name,duration,albumID) VALUES
	('Slave My',147,1),
	('No Limit',193,1),
	('Он Тебя Целует',240,2),
	('Стоят подружки',246,2),
	('Berlioz: Symphonie Fantastique, Op. 14 - 2. Un Bal',364,3),
	('Berlioz: Symphonie Fantastique, Op. 14 - 4. Marche Au Supplice',304,3),
	('Motorcycle Drive By',144,4),
	('Oklahoma Smokeshow',198,4);

INSERT INTO collection(name, collection_date) VALUES
	('Collection melody#1','2021-08-11'),
	('Collection melody#2','2022-08-11'),	
	('Collection melody#3','2023-08-11'),
	('Collection melody#4','2024-08-11');
	
INSERT INTO artist_style(style_id,artist_id) VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(1,4);

INSERT INTO album_artist(album_id,artist_id) VALUES		
	(1,1),
	(2,2),
	(3,3),
	(4,4);
	
INSERT INTO track_collection(collection_id,track_id) VALUES
	(1,1),
	(1,2),
	(1,3),
	(2,4),
	(2,1),
	(2,2),
	(3,3),
	(3,4),
	(3,1),
	(4,2),
	(4,3),
	(4,4);
	

	