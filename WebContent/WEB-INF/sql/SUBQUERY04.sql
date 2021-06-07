SELECT now();

SELECT * FROm Customers
WHERE EXISTS (SELECT now());

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
              FROM Products WHERE Products.SupplierID = Suppliers.supplierID 
              AND Price < 20);
              
DESC Suppliers;
SELECT * FROM Suppliers;

SELECT SupplierID, SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
              FROM Products WHERE Products.SupplierID = Suppliers.supplierID 
              AND Price < 20);