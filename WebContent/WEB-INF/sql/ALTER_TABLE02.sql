DESC Member;

ALTER TABLE Member
ADD PRIMARY KEY (id);

SELECT * FROM Member;

DELETE FROM Member
WHERE id = 'taeby00';

ALTER TABLE Member
MODIFY password VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY name VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY birth date NOT NULL;

ALTER TABLE Member
MODIFY inserted TIMESTAMP NOT NULL;

ALTER TABLE Member
MODIFY inserted TIMESTAMP NOT NULL DEFAULT NOW();

INSERT INTO Member
(id, password, name, birth)
VALUES
('mezzang', 'park', 'mezzang', '1990-05-25');

SELECT * FROM Member;