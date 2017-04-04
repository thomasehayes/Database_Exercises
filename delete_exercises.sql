USE codeup_test_db;

DELETE
FROM albums 
WHERE release_date > '1991-01-01';

DELETE 
FROM albums 
WHERE genre LIKE '%Disco%' or genre LIKE '%disco%';

DELETE
FROM albums
WHERE artist = 'Whitney Houston';
