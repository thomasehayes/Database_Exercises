USE codeup_test_db;

ALTER TABLE albums
ADD UNIQUE (NAME,artist);