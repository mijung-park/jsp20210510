-- 1번 고객(알프레드)의 나라
SELECT Country FROM Customers
WHERE CustomerID = '1';
-- Germany

SELECT * FROm Customers
WHERE Country = 'Germany';

-- Sub Query
SELECT * FROM Customers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = '1');

-- 1번 고객 (알프레드)과 같은 나라에 있는 공급자(suppliers)목록
SELECT * FROM Suppliers
WHERE Country = (SELECT Country From Customers Where CustomerID = '1');

-- 1번 고객(알프레드)과 다른 나라에 사는 고객들 목록
SELECT * FROM Customers
WHERE Country <> (SELECT Country FROM Customers WHERE CustomerId='1');

SELECT * FROM Customers
WHERE Country != (SELECT Country FROM Customers WHERE CustomerId='1');

DESC Employees;

-- 직원 fuller보다 나이가 많은 사람
SELECT * FROM Employees
WHERE BirthDate > (SELECT BirthDate FROM Employees WHERE EmployeeID = '2');