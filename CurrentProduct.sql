USE Northwind
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice FROM Products WHERE Discontinued = '0'
ORDER BY CategoryID, UnitPrice DESC


