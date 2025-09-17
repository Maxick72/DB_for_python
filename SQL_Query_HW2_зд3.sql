SELECT m.Name,
      COUNT (astl.Artist_ID) AS artistcount
FROM MusicStyle m
JOIN 
  		 artist_style astl ON m.StyleID = astl.Style_id
GROUP BY 
         m.Name
ORDER BY 
         artistcount DESC ;

         
SELECT 	COUNT(t.trackid) AS track_count
FROM album a
JOIN 
	track t ON a.albumid = t.albumid
WHERE 
	a.release_date  BETWEEN '2008-12-31' AND '2018-12-31';

SELECT a.name,
		AVG(t.duration) AS average_duration
FROM album a
JOIN 
	track t ON a.albumid = t.albumid
GROUP BY 
		a.name
ORDER BY 
		average_duration;

SELECT DISTINCT	name
FROM artist 
WHERE name NOT IN (
		SELECT  art.name
		FROM artist art
		LEFT JOIN 
				album_artist alart ON art.artistid = alart.artist_id
		LEFT JOIN 	
				album a ON alart.album_id = a.albumid
		WHERE
				a.release_date BETWEEN '2020-01-01' AND '2020-12-31'
);

SELECT c.name
FROM collection c
JOIN 
		track_collection tc ON c.collectionid = tc.collection_id
JOIN 
		track t ON tc.track_id = t.trackid
JOIN 
		album a ON t.albumid = a.albumid
JOIN 
		album_artist aa ON a.albumid = aa.album_id
WHERE 
		aa.artist_id = 2
GROUP BY 
		c.name;
		

