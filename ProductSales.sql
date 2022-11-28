Use Northwind
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(Quantity * UnitPrice) <= 5000
ORDER BY TotalValue DESC
