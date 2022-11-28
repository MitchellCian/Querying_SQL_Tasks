Use Northwind
--Task 1
SELECT COUNT (*) FROM Customers

-- Task 2, 3
SELECT c.CompanyName, COUNT (o.OrderID) as NumOrders, MIN(o.OrderDate) as MinDate
FROM Orders as o 
RIGHT OUTER JOIN 
Customers as c 
ON o.CustomerID = c.CustomerID 
GROUP BY c.CompanyName
ORDER BY NumOrders

