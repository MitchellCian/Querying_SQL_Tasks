USE Northwind
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, 
UnitPrice * UnitsInStock AS CurrentStockValue, (UnitsOnOrder + UnitsInStock) * UnitPrice AS FutureStockValue FROM Products
ORDER BY FutureStockValue DESC


