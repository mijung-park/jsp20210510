CREATE DATABASE Mezzang;
USE Mezzang;
USE test;

CREATE TABLE Member (
	id VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    birth DATE,
    inserted TIMESTAMP
);

SELECT * FROM Member;

DELETE FROM Member
Where name = 'may';