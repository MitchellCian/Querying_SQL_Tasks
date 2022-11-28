USE Northwind

SELECT * FROM Orders WHERE CustomerID = 'TOMSP'
SELECT * FROM Orders WHERE CustomerID = 'TOMSP' OR CustomerID = 'VINET'
SELECT * FROM Orders WHERE CustomerID = 'TOMSP' OR CustomerID = 'VINET' OR CustomerID = 'HANAR'
SELECT * FROM Orders WHERE CustomerID IN ('TOMSP','VINET','HANAR')
SELECT * FROM Orders WHERE CustomerID IN ('TOMSP','VINET','HANAR') AND OrderDate > '1996-08-01'

SELECT * FROM Orders 
WHERE CustomerID IN ('TOMSP','VINET','HANAR') AND OrderDate BETWEEN '1996-07-04' AND '1996-07-05'

SELECT * FROM Orders 
WHERE CustomerID IN ('TOMSP','VINET','HANAR') AND OrderDate >= '1996-07-04' AND OrderDate < '1996-07-05'

SELECT * FROM Orders WHERE OrderDate = 1996-08-01 -- Will be interpreted as a number, do it in quotes and Y-M-D


SELECT * FROM Employees WHERE LastName = 'Fuller'
SELECT * FROM Employees WHERE LastName LIKE 'D%'  -- here the % represents any sequence of characters (Starts with D)
SELECT * FROM Employees Where FirstName LIKE 'A__e' -- each underscore represents a character (so e.g. this matches Anne)
SELECT * FROM Employees Where FirstName LIKE 'An[d,n]%' -- An (d or n) in that specific position
SELECT * FROM Employees Where FirstName LIKE 'An[^d]%' -- Starts with (A, N, not D) (^ = NOT)



SELECT ProductID, UnitPrice, UnitsInStock, UnitPrice * UnitsInStock AS CurrentStockValue, (UnitsOnOrder + UnitsInStock) * UnitPrice AS StockCount FROM Products