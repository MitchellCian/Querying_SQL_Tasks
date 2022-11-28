USE Northwind
SELECT OrderID, CustomerID, OrderDate FROM Orders
WHERE CustomerID IN ('ALFKI', 'ERNSH', 'SIMOB')
AND OrderDate BETWEEN '1997-08-01' AND '1997-08-31'
