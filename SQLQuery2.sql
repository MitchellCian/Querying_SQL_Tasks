-- Comments out the query if there's something you don't want to run
USE Northwind
SELECT * FROM Orders


SELECT CustomerID, OrderDate FROM Orders
SELECT OrderDate FROM Orders

-- camelCase, PascalCase, snake_case

SELECT Country + ', ' + City + ', ' + Address AS FullContactDetails FROM Customers
SELECT ProductID, UnitPrice, Quantity, UnitPrice * Quantity FROM [Order Details]