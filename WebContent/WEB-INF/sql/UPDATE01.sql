SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = '스파이더맨'
WHERE CustomerID = '1';

UPDATE Customers
SET CustomerName = '토르',
	ContactName = 'odinson',
    Address = 'Asgard'
WHERE CustomerID = 1;

UPDATE Customers 
SET City = 'Oslo';

UPDATE Customers
SET City = 'Seoul'
WHERE Country = 'Norway';

UPDATE Customers
SET City = 'Seoul',
	Country = 'Korea'
WHERE CustomerID = '32';

SELECT * FROM Customers
WHERE CustomerID = 32;

SELECT EmployeeID, LastName, FirstName, Notes
FROM Employees;