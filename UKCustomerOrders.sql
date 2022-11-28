USE Northwind
SELECT * FROM Customers
SELECT * FROM Orders

-- TASK 1
SELECT c.CustomerID, CompanyName, ContactName, City 
FROM 
Customers as c
INNER JOIN
Orders as o
ON c.CustomerID = o.CustomerID

-- TASK 2
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.City, o.OrderID, o.OrderDate
FROM 
Customers as c
INNER JOIN
Orders as o
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'UK'
ORDER BY c.CompanyName, o.OrderDate

--Task 3
SELECT c.CustomerID, c.CompanyName, c.ContactName, o.OrderID, o.OrderDate, od.ProductID, od.Quantity, p.ProductID, p.ProductName
FROM 
Customers as c
INNER JOIN
Orders as o
ON c.CustomerID = o.CustomerID
INNER JOIN
[Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN
Products as p
ON od.ProductID = p.ProductID
WHERE c.Country = 'UK'
ORDER BY c.CompanyName, o.OrderDate
