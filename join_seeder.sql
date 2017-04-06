USE join_test_db;

DELETE FROM users;
DELETE FROM roles;

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('tommy', 'tommy@example.com', 2),
('katie', 'katie@example.com', 2),
('quang', 'quang@example.com', 2),
('anthony', 'anthony@example.com', null);