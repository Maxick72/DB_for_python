SELECT m.Name
      COUNT (a.ArtistID) AS ArtistCount
FROM MusicStyle m
   LEFT JOIN 
            artist_style astl ON m.StyleID = astl.Style_id;
   LEFT JOIN
            Artust a ON astl.Artist_id = a.ArtistID
GROUP BY 
         m.Name
ORDER BY 
         ArtistCaunt DESC ;

         
SELECT COUNT (*)
FROM track_collection;

SELECT COUNT (AlbumID)
FROM track;

SELECT AVG (duration)
FROM album;


