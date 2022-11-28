USE Northwind
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice FROM Products WHERE Discontinued = '0' 
AND CategoryID = 1 AND UnitPrice >= 40

SELECT * FROM Orders
WHERE CustomerID IN ('ALFKI', 'ERNSH', 'SIMOB') AND OrderDate BETWEEN '1997-08-01' AND '1997-08-31'

