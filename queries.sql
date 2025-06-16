CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(50));
INSERT INTO users (name) VALUES ('Andrey'), ('Bob');
SELECT * FROM users;

#
UPDATE users SET name = 'TEST' WHERE id = 1;
DELETE FROM users WHERE name = 'TEST';
