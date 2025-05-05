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

SELECT COUNT (*)
FROM artist_style;

SELECT COUNT (*)
FROM track_collection;

SELECT COUNT (AlbumID)
FROM track;

SELECT AVG (duration)
FROM album;


