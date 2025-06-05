
SELECT * FROM Customers
SELECT CustomerName, City FROM Customers;
SELECT DISTINCT Country FROM Customers;
SELECT Country FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT DISTINCT column1, column2, ...
FROM table_name;

SELECT COUNT(*) AS DistinctCountries 
FROM (
    SELECT DISTINCT Country 
    FROM Customers
) AS country_list;

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);

SELECT column1, column2, ...
FROM table_name
WHERE condition;

SELECT * FROM Customers
WHERE Country='Mexico';

SELECT * FROM Customers
WHERE CustomerID=1;

SELECT * FROM Customers
WHERE CustomerID > 80;

SELECT * FROM Products
ORDER BY Price;

ALTER TABLE products RENAME TO Products;

SELECT * FROM Products
ORDER BY Price DESC;

SELECT * FROM Products
ORDER BY ProductName;

SELECT * FROM Products
ORDER BY ProductName DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

SELECT * FROM Customers
WHERE Country = 'Brazil'
AND City = 'Rio de Janeiro'
AND CustomerID > 50;

SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';

SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';

SELECT * FROM Customers
WHERE NOT Country = 'Spain';

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');

SELECT * FROM Customers
WHERE NOT CustomerID > 50;

SELECT * FROM Customers
WHERE NOT CustomerId < 50;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Contactname IS NULL; 
-- WHERE Address IS NULL;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

UPDATE Customers
SET ContactName='Juan';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
-- DELETE FROM Customers;
-- DROP TABLE Customers;

-- SELECT TOP 3 * FROM Customers;
SELECT * FROM Customers LIMIT 3;

SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;

SELECT TOP 50 PERCENT * FROM Customers;

SELECT * FROM Customers
FETCH FIRST 50 PERCENT ROWS ONLY;

SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;

SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;

SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;

SELECT * FROM Customers
ORDER BY CustomerName DESC
FETCH FIRST 3 ROWS ONLY;

SELECT MIN(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;

SELECT COUNT(*)
FROM Products;

SELECT COUNT(ProductName)
FROM Products;

SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;

SELECT COUNT(DISTINCT Price)
FROM Products;

SELECT COUNT(*) AS [Number of records]
FROM Products;

SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;

SELECT SUM(Quantity)
FROM OrderDetails;
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;

SELECT SUM(Quantity) AS total
FROM OrderDetails;

SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;

SELECT SUM(Quantity * 10)
FROM OrderDetails;

SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;

SELECT AVG(Price)
FROM Products;

SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

ELECT AVG(Price) AS [average price]
FROM Products;

SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);

SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

SELECT * FROM Customers
WHERE city LIKE '%L%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'La%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

SELECT * FROM Customers
WHERE Country LIKE 'Spain';
