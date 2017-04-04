USE codeup_test_db;

SELECT artist, name FROM albums WHERE artist = 'Pink Floyd';

SELECT artist, name, release_date FROM albums WHERE release_date = '1967';

SELECT artist, name, genre FROM albums WHERE genre = "Grunge, Alternative Rock";

SELECT artist, name, release_date FROM albums WHERE release_date >= "1990" AND release_date <= "1999";

SELECT * FROM albums WHERE sales < 20000000;

-- SELECT * FROM albums WHERE genre REGEXP '[[:<:]]Rock[[:>:]]';

SELECT artist, name, genre FROM albums WHERE genre LIKE '%Rock%';