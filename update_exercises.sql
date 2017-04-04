USE codeup_test_db;

SELECT name, sales FROM albums;
UPDATE albums SET sales = (sales * 10);

SELECT name, sales FROM albums;

SELECT name, release_date FROM albums WHERE release_date < '1980-01-01';
UPDATE albums SET release_date = DATE_SUB(release_date, INTERVAL 100 YEAR) WHERE release_date < '1980-01-01';

SELECT name FROM albums WHERE release_date < '1980-01-01';

SELECT name FROM albums WHERE artist = "Michael Jackson";
UPDATE albums SET artist = "Peter Jackson" WHERE artist = "Michael Jackson";

SELECT name FROM albums WHERE artist = "Peter Jackson";