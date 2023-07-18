SELECT genre_title, count(artist_id) AS artist_tally
FROM genre AS g
JOIN genreartist AS ga ON g.id = ga.genre_id  
GROUP BY g.genre_title;


SELECT count(track_title) AS track_tally
FROM album AS alb
JOIN track AS t ON alb.id = t.album_id
WHERE album_released = 2019 OR album_released = 2020;


SELECT album_title, AVG(lenght) AS avd_lenght
FROM album AS alb 
JOIN track AS t ON alb.id = t.album_id
GROUP BY album_title;


SELECT DISTINCT name
FROM artist AS art
JOIN artistalbum AS aa ON art.id = aa.artist_id
JOIN album AS alb ON aa.album_id = alb.id
WHERE alb.album_released != 2020;


SELECT DISTINCT collection_title
FROM collection AS col
JOIN collectiontrack ct ON col.id = ct.collection_id
JOIN track AS t ON ct.track_id = t.id
JOIN album AS alb ON t.album_id = alb.id
JOIN artistalbum AS aa ON alb.id = aa.album_id
JOIN artist AS art ON aa.artist_id = art.id
WHERE name = 'U2';