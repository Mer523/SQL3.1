SELECT track_title, lenght FROM track 
WHERE lenght = (SELECT MAX(lenght) FROM track);

SELECT track_title FROM track
WHERE lenght >= '3:30';

SELECT collection_title FROM collection
WHERE  collection_released BETWEEN 2018 AND 2020;

SELECT name FROM artist
WHERE name NOT LIKE '% %';

SELECT track_title FROM track
WHERE track_title LIKE '%My%' OR track_title LIKE '%Мой%';
