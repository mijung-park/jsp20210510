CREATE TABLE Table03
(
	id3 INT,
    name VARCHAR(255)
);
CREATE TABLE Table04
(
	id4 INT,
    city VARCHAR(255)
);

INSERT INTO Table03 (id3, name) VALUES (1, 'bts');
INSERT INTO Table03 (id3, name) VALUES (2, 'twice');
INSERT INTO Table03 (id3, name) VALUES (3, 'redvelvet');
SELECT * FROM Table03;

INSERT INTO Table04 (id4, city) VALUES (10, 'seoul');
INSERT INTO Table04 (id4, city) VALUES (6, 'ny');
INSERT INTO Table04 (id4, city) VALUES (30, 'london');
SELECT * FROM Table04;

SELECT * FROM Table03
UNION
SELECT * FROM Table04;

-- alias
SELECT id3 id, name nc FROM Table03
UNION
SELECT * FROM Table04;

-- union all 
SELECT * FROM Table03
UNION ALL
SELECT * FROM Table04;

-- X (coulum의 수가 같아야함!)
SELECT * FROM Table03
UNION ALL
SELECT city FROM Table04;

