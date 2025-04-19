CREATE TABLE musicstyle (
 styleID serial PRIMARY KEY,
 name VARCHAR(25) NOT NULL
 );
 
CREATE TABLE album (
 albumID SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 release_date DATE NOT NULL
 );
 
CREATE TABLE artist (
 artistID SERIAL PRIMARY KEY,
 name VARCHAR(25) NOT NULL
 );

CREATE TABLE track (
 trackID SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 duration INT CHECK (30 < duration <= 900),
 albumID INTEGER REFERENCES album(albumID) NOT NULL
 );

CREATE TABLE artist_style (
 artist_styleID SERIAL PRIMARY KEY NOT null,
 styleID INT NOT NULL,
 artistID INT NOT NULL,
 CONSTRAINT fk_style FOREIGN KEY styleID REFERENCES musicstyle (styleID) ON DELETE CASCADE,
 CONSTRAINT fk_artist FOREIGN KEY artistID REFERENCES artist (artistiID) ON DELETE CASCADE
 );

CREATE TABLE album_artist (
 album_artistID SERIAL PRIMARY KEY,
 albumID INT NOT NULL,
 artistID INT NOT NULL,
 CONSTRAINT fk_album FOREIGN KEY albumID REFERENCES album(albumID) NO DELETE CASCADE,
 CONSTRAINT fk_artist FOREIGN KEY artistID REFERENCES artist(artistID) NO DELETE CASCADE
 ); 

CREATE TABLE collection (
 collectionID SERIAL PRIMARY KEY NOT NULL,
 name VARCHAR(100) NOT NULL,
 collection_date DATE CHECK (collection_data BETWEEN '1980-01-01' AND '2025-04-01')
 );

CREATE TABLE track_collection (
 track_collectionID SERIAL PRIMARY KEY NOT NULL,
 collection_id INT NOT NULL,
 track_id INT NOT NULL,
 CONSTRAINT fk_collection FOREIGN KEY collection_id REFERENCES collection(collectionID) ON DELETE CASCADE,
 CONSTRAINT fk_track FOREIGN KEY track_id REFERENCES track(trackID) ON DELETE CASCADE
 );

