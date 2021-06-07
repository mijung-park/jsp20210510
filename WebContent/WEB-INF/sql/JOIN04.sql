SELECT * FROM Customers;
SELECT * FROM Orders;

-- join
SELECT * FROM Customers JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT o.OrderID, c.CustomerName
FROM Customers c JOIN Orders o
On c.CustomerID = o.CustomerId;

--
SELECT *
FROM Customers c LEFT JOIN Orders o
ON c.CustomerId = o.CustomerID;

SELECT * FROM Customers c LEFT JOIN Orders o
ON c.CustomerId = o.CustomerId
WHERE o.CustomerID IS NULL;

SELECT * FROM Member;

SELECT m.id, m.name
FROM Board b RIGHT JOIN Member m
ON b.memberId = m.id
WHERE b.memberId IS NULL;