-- WHERE : row를 조건으로 필터
SELECT * FROM Customers WHERE Country="Mexico";
SELECT * 
FROM Customers 
WHERE CustomerID="1";

SELECT * FROM Products WHERE Price=18;

SELECT * FROM Products
WHERE price > 30;

SELECT * FROM Products
WHERE Price <> 18;
-- <>같지 않다. != 와 같음!

SELECT * FROM Customers
WHERE NOT City = 'Berlin';

SELECT * FROM Products
WHERE Price between 20 AND 50;

SELECT * FROM Customers
WHERE City LIKE 's%';

SELECT * FROM Customers
WHERE City LIKE '%g';

SELECT * FROM Customers
WHERE City LIKE '%z%';

SELECT * FROM Customers
WHERE Country LIKE '%us%';

SELECT * FROM Customers
WHERE City in('Paris', 'London');

-- AND
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

-- OR
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Munchen';

SELECT * FROM Customers
WHERE Country = 'Germany' or
(CustomerName LIKE '%s%' AND City LIKE '%ch%');

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

-- not
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

SELECT * FROM Customers
WHERE NOT City='Paris' AND NOT City='London';