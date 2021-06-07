SELECT * FROM Customers;
SELECT * FROm Suppliers;

SELECT Country FROM Customers
UNION 
SELECT Country FROm Suppliers
ORDER By Country;

