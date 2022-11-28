USE Northwind
SELECT * FROM Products
SELECT * FROM Categories

SELECT ProductID, CategoryName
FROM Products
INNER JOIN Categories 
ON Products.CategoryID = Categories.CategoryID

-- INNER JOIN 
--I WANT: Name of each product, the companyname of each product, categoryname it belongs to

SELECT * FROM Products
SELECT * FROM Suppliers
SELECT * FROM Categories

SELECT p.ProductName, s.CompanyName, c.CategoryName 
FROM Products as p
JOIN Categories as c
ON p.CategoryID = c.CategoryID
JOIN Suppliers as s
ON p.SupplierID = s. SupplierID


-- OUTER JOIN
-- Each order ID
-- Companyname of the customer
-- BUT I also want to see customers in the lsit who haven't placed any orders
-- (they will have an orderid of NULL)


SELECT * FROM Orders
SELECT * FROM Customers

-- Right join because we're joining orders (left) to customers (right)
-- If you wanted to join customers to orders, could just as easily do it the other way around.
SELECT o.orderID, c.CustomerID 
FROM Orders AS o 
RIGHT OUTER JOIN 
Customers AS c 
ON o.CustomerID = c.CustomerID
ORDER BY OrderID ASC

-- SELF JOIN

SELECT * FROM Employees

SELECT m.FirstName + ' ' + m.LastName AS ManagerName, + ' ' + e.FirstName + ' ' + e.LastName AS EmployeeName
FROM 
Employees AS e
JOIN 
Employees as m
ON
e.ReportsTo = m.EmployeeID
ORDER BY ManagerName

-- Set operators

-- Finds countries in either table
SELECT country from Customers
UNION -- By default ignores duplicates
SELECT country from Employees

-- Finds countries in either table (with duplicates)
SELECT country from Customers
WHERE Fax IS NULL
UNION ALL -- Does not ignores duplicates
SELECT country from Employees
WHERE EmployeeID = 1


-- INTERCEPT: Finds countries that have both customers and employees
SELECT Country from Customers
INTERSECT
SELECT country from Employees

SELECT * FROM ReportsTo ORDER BY ManagerName ASC -- ORDERBY Can't be used in a VIEW

-- EXCEPT: Countries that have customers but not employees
SELECT Country from Customers
EXCEPT
SELECT country from Employees


-- VIEWS
-- ERROR Here because it should be made in a separate file on its own
CREATE VIEW ReportsTo AS (
	SELECT m.FirstName + ' ' + m.LastName AS ManagerName, + ' ' + e.FirstName + ' ' + e.LastName AS EmployeeName
	FROM 
	Employees AS e
	JOIN 
	Employees as m
	ON
	e.ReportsTo = m.EmployeeID
)

-- Procedures

EXEC [Sales by Year] @ending_date = '1996', @beginning_date = '1998'
EXEC [Sales by Year] '1996', '1998'

