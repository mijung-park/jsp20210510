-- member
CREATE TABLE MyTable17
(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- board

DROP TABLE MyTable18;
CREATE TABLE MyTable18
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    t17Id VARCHAR(255) NOT NULL,
    FOREIGN KEY(t17Id) REFERENCES MyTable17(id)
);

INSERT INTO MyTable17
(id, name)
VALUES ('may', 'park');

INSERT INTO MyTable18
(title, t17Id)
VALUES('korea', 'may');

SELECT * FROM MyTable18;

INSERT INTO MyTable18
(title, t17Id)
VALUES('usa', 'donald');

DELETE FROM MyTable17
WHERE Id = 'may';

DELETE FROM MyTable18
WHERE t17Id = 'may';

