SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName,
ContactName, Address,
City, PostalCode, Country)
VALUES
(92, 'Kim', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers
VALUES
(93, 'Choi', 'Hong', 'Gwanak', 'Seoul', '000000', 'Korea');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName)
VALUES
(94, 'Park', 'Jung');

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('May', 'Park', '75 spence St.', 'Cairns', '11122', 'Australia');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('May', 'Park', 'she is a really brilliant woman and also pretty beautiful');

-- 테이블 설명 보기
DESC Customers;
DESC Employees;

SELECT * FROM Employees
ORDER BY EmployeeID DESC;

