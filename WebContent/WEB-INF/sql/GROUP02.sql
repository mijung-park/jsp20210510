SELECT Country, COUNT(*) FROM Customers
GROUP BY Country;

SELECT Country, count(*) cnt FROM Customers
GROUP BY COUNTRY
ORDER BY cnt DESC;

SELECT count(CustomerID), Country
FROM Customers
GROUP BY Country;

SELECT count(CustomerID), Country FROM Customers
GROUP BY Country
ORDER BY count(CustomerID) DESC;