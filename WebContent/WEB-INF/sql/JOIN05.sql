SELECT * FROM Orders;

-- 주문의 고객명
SELECT o.OrderID, c.CustomerName 
FROM Orders o JOIN Customers c 
ON o.CustomerID = c.CustomerID;

-- 주문의 고객명, 직원명 (3개 테이블 조인)
SELECT o.OrderID, c.CustomerName, e.LastName, e.FirstName
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID;

-- 주문의 고객명, 직원명(LastName + FirstName)
SELECT o.OrderID, c.CustomerName, concat(e.LastName, ', ', e.FirstName) EmployeeName
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID;