CREATE TABLE Table05
(
	name VARCHAR(255) PRIMARY KEY,
    money int NOT NULL DEFAULT 0
);

INSERT INTO Table05 (name, money) VALUES ('kim', 10000);
INSERT INTO Table05 (name, money) VALUES ('lee', 10000);

SELECT * FROM Table05;

UPDATE Table05
SET money = 5000
WHERE name = 'kim';

UPDATE Table05
SET money = 10000
WHERE name = 'lee';

COMMIT;

SELECT * FROM Member;