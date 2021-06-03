-- unique

CREATE TABLE MyTable9
(
id INT UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES (3, 'Mezzang');

SELECT * FROM MyTable9;

INSERT INTO MyTable9
(name)
VALUES ('heesoo');

INSERT INTO MyTable9
(id)
VALUES (3);

INSERT INTO MyTable9
(id, name)
VALUES (4, 'mezzang');

SELECT * FROM MyTable9
WHERE id IS NULL;

SELECT * FROM MyTable9
WHERE id IS NOT NULL;

-- IFNULL
SELECT ifnull(id, 0), name FROM MyTable9;

CREATE TABLE MyTable10
(
id INT NOT NULL UNIQUE,
name VARCHAR(255) NOT NULL);