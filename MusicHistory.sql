INSERT INTO Artist
VALUES (null, 'Rolling Stones', 1964);

SELECT * FROM Album;

INSERT INTO Album
VALUES (null, 'Paranoid', '1971', 32, 'WB', 28, 5); 

INSERT INTO Song
VALUES (null, 'War Pigs', 4, 1971, 5, 28, 23);

INSERT INTO Song
VALUES (null, 'Paranoid', 4, 1971, 5, 28, 23);

INSERT INTO Song
VALUES (null, 'Planet Caravan', 4, 1971, 5, 28, 23);

INSERT INTO Song
VALUES (null, 'Hand of Doom', 4, 1971, 5, 28, 23);

INSERT INTO Song
VALUES (null, 'Fairies Wear Boots', 4, 1971, 5, 28, 23);

SELECT s.Title, a.Title, art.ArtistName
FROM Song s
JOIN Artist art ON s.ArtistId = art.ArtistId
LEFT JOIN Album a ON s.AlbumId = a.AlbumId
WHERE art.ArtistId = 28;

SELECT s.Title, s.SongLength, a.Title, g.Label
FROM Song s
LEFT JOIN Album a ON s.AlbumId = a.AlbumId
LEFT JOIN Genre g ON s.GenreId = g.GenreId
WHERE s.SongLength > 250;

SELECT a.Title, COUNT(s.SongId)
FROM Song s
JOIN Album a ON s.AlbumId = a.AlbumId
GROUP BY s.AlbumId;

SELECT a.ArtistName, COUNT(s.SongId)
FROM Song s
JOIN Artist a ON s.ArtistId = a.ArtistId
GROUP BY s.ArtistId;

SELECT g.Label, COUNT(s.SongId)
FROM Song s
JOIN Genre g ON s.GenreId = g.GenreId
GROUP BY s.GenreId;

--how many artists exist for each genre?
SELECT g.Label, COUNT(s.ArtistId)
FROM Song s
JOIN Genre g ON s.GenreId = g.GenreId
GROUP BY s.ArtistId;

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT a.Title, MAX(a.AlbumLength)
FROM Album a;

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT s.Title, a.Title, art.ArtistName, MAX(s.SongLength)
FROM Song s
JOIN Album a ON s.AlbumId = a.AlbumId
JOIN Artist art ON s.ArtistId = art.ArtistId;



