SELECT
LastName,
LEN(LastName) AS LENGTH,
UPPER (LastName) AS CapsName,
LOWER (LastName) AS LowerCase
From Employees


SELECT FirstName + ' ' + LastName AS FullName,
LEFT(FirstName, 1) + LEFT(LastName, 1) AS Initials,
FROM Employees


SELECT SUBSTRING(ContactName), CHARINDEX(' ', ContactName, 1) FROM Customers

SELECT GETDATE() AS CurrentDate, SYSDATETIME() AS SysDateTimeExample, SYSDATETIMEOFFSET() AS sdto

SELECT GETDATE() AS CurrentDate, 
Year(GETDATE()) AS CurrentYear, 
Month(GETDATE()) AS CurrentMonth, 
Day(GETDATE()) AS CurrentDay

-- Replacing Null value
SELECT CompanyName, ISNULL(Fax, 'No fax machine') FROM Customers ORDER BY Fax ASC
SELECT CompanyName, COALESCE(Fax, 'No fax machine') FROM Customers ORDER BY Fax ASC

-- Putting a number and string in the same field (requires casting)
SELECT ProductName + ': £' + CAST(UnitPrice AS VARCHAR) AS DisplayPrice FROM Products
SELECT ProductName + ': £' + CONVERT(VARCHAR, UnitPrice) AS DisplayPrice FROM Products