USE Northwind
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, 
UnitPrice * UnitsInStock AS CurrentStockValue, (UnitsOnOrder + UnitsInStock) * UnitPrice AS StockCount FROM Products


Use Northwind
SELECT FirstName + ', ' + LastName, Extension FROM Employees


