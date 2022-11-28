-- 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

-- COUNT (*) -> 10
-- SUM() -> 55
-- AVG() -> 5.5
-- MIN() -> 1
-- MAX () -> 10
-- VAR () -> (Distance from mean) 
-- STDEV () -> (Sqr root of variance)

SELECT Count(UnitPrice) AS NumProducts FROM Products
SELECT AVG(UnitPrice) AS AveragePrice FROM Products
SELECT Min(UnitPrice) AS LowestPrice FROM Products
SELECT Max(UnitPrice) AS HighestPrice FROM Products

SELECT SUM(UnitPrice * Quantity) AS TotalRevenue FROM [Order Details]

SELECT MIN(OrderDate) AS EarliestOrder FROM Orders
SELECT MAX(OrderDate) AS LatestOrder FROM Orders

SELECT Count(Fax) FROM Customers
SELECT COUNT(*) AS CustomersWithoutFaxMachine FROM Customers WHERE Fax IS NULL

SELECT CategoryID, SupplierID FROM Products ORDER BY CategoryID ASC

SELECT 
	CategoryID,
	COUNT(CategoryID) AS NumberOfCategories,
	SUM(UnitPrice) AS TotalPrice,
	MAX(UnitPrice) AS MostExpensive,
	MIN(UnitPrice) AS LeastExpensive,
	AVG(UnitPrice) AS AveragePrice
FROM Products 
GROUP BY CategoryID
HAVING COUNT(CategoryID) >= 10


