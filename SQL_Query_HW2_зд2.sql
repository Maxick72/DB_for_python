SELECT name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name, duration
FROM track
WHERE duration >= 210;

SELECT name, collection_date
FROM collection
WHERE collection_date BETWEEN '2018-01-01' AND '2022-12-31';

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT name
FROM track
WHERE name ~* '\mмой\M'
OR name ~* '\mMy\M'; 


 

	