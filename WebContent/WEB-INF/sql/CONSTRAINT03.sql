-- PRIMARY KEY
-- 각 레코드(row)를 유이할게 구분할 수 있는 컬럼
-- 각 테이블에 최대 한개

CREATE TABLE MyTable11
(
id INT PRIMARY KEY,
name VARCHAR(255)
);

DESC MyTable11;

INSERT INTO MyTable11
(id, name)
VALUES (1, 'mezzang');

SELECT * FROM MyTable11;

INSERT INTO MyTable11
(name)
VALUES ('heesoo'); -- X
