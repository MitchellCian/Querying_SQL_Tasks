Use Northwind
SELECT * FROM Orders
SELECT 
	COUNT(OrderID) AS NumOfOrders,
	MIN(OrderDate) AS LatestOrder,
	MAX(OrderDate) AS EarliestOrder 
FROM Orders
WHERE EmployeeID = '1'



