USE Northwind

SELECT CustomerID, OrderDate From Orders
WHERE CustomerID IN ('TOMSP', 'VINET', 'HANAR') AND OrderDate >= '1996-07-04'
ORDER BY OrderDate DESC

SELECT ProductName, UnitPrice, CategoryID FROM Products 
ORDER BY CategoryID ASC, UnitPrice DESC, ProductName ASC

SELECT ProductName, UnitsInStock, UnitsOnOrder + UnitsInStock AS FutureStock 
FROM Products
ORDER BY FutureStock Desc

SELECT DISTINCT Country FROM Suppliers ORDER BY Country ASC -- SELECTs everything, just without duplicates

SELECT TOP 15 WITH TIES * FROM Products ORDER BY UnitPrice DESC 

SELECT TOP 10 PERCENT * FROM Products ORDER BY UnitPrice DESC



