Use Northwind

--Task 1
SELECT CompanyName, ContactName, Phone FROM Customers

-- Task 2
SELECT CompanyName, ContactName, Phone FROM Suppliers

--Task 3
SELECT FirstName + ' ' + LastName AS FullName, Extension FROM Employees

-- Task 4
SELECT CompanyName, ContactName, Phone FROM Customers
UNION
SELECT CompanyName, ContactName, Phone FROM Suppliers
UNION
SELECT FirstName + ' ' + LastName AS FullName, Extension FROM Employees
