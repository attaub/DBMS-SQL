SHOW DATABASES;


/*
SELECT column1, column2, ...
FROM table_name;
 */
/*
SELECT DISTINCT column1, column2, ...
FROM table_name;
 */
USE w3schools;

SHOW TABLES;

-- DESCRIBE w3schools;
/*
+---------------------+
| Tables_in_w3schools |
+---------------------+
| Customers           |
| OrderDetails        |
| Products            |
| categories          |
| employees           |
| orders              |
+---------------------+
 */
DESCRIBE Customers;


/*
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| CustomerID   | int          | NO   |     | NULL    |       |
| CustomerName | varchar(255) | YES  |     | NULL    |       |
| ContactName  | varchar(255) | YES  |     | NULL    |       |
| Address      | varchar(255) | YES  |     | NULL    |       |
| City         | varchar(255) | YES  |     | NULL    |       |
| PostalCode   | varchar(255) | YES  |     | NULL    |       |
| Country      | varchar(255) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
 */
-----------------------------------------------------------------
-----------------------------------------------------------------
DESCRIBE OrderDetails;


/*
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| OrderDetailID | int  | NO   |     | NULL    |       |
| OrderID       | int  | YES  |     | NULL    |       |
| ProductID     | int  | YES  |     | NULL    |       |
| Quantity      | int  | YES  |     | NULL    |       |
+---------------+------+------+-----+---------+-------+
 */
-----------------------------------------------------------------
-----------------------------------------------------------------
DESCRIBE Products;


/*
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| ProductID   | int          | NO   |     | NULL    |       |
| ProductName | varchar(255) | YES  |     | NULL    |       |
| SupplierID  | int          | YES  |     | NULL    |       |
| CategoryID  | int          | YES  |     | NULL    |       |
| Unit        | varchar(255) | YES  |     | NULL    |       |
| Price       | double       | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
 */
-----------------------------------------------------------------
-----------------------------------------------------------------
DESCRIBE categories;


/*
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| CategoryID   | int          | NO   |     | NULL    |       |
| CategoryName | varchar(255) | YES  |     | NULL    |       |
| Description  | varchar(255) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
 */
-----------------------------------------------------------------
-----------------------------------------------------------------
DESCRIBE employees;


/*
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| EmployeeID | int          | NO   |     | NULL    |       |
| LastName   | varchar(255) | YES  |     | NULL    |       |
| FirstName  | varchar(255) | YES  |     | NULL    |       |
| BirthDate  | date         | YES  |     | NULL    |       |
| Photo      | varchar(255) | YES  |     | NULL    |       |
| Notes      | text         | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
 */
-----------------------------------------------------------------
-----------------------------------------------------------------
DESCRIBE orders;


/*
+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| OrderID    | int  | NO   |     | NULL    |       |
| CustomerID | int  | YES  |     | NULL    |       |
| EmployeeID | int  | YES  |     | NULL    |       |
| OrderDate  | date | YES  |     | NULL    |       |
| ShipperID  | int  | YES  |     | NULL    |       |
+------------+------+------+-----+---------+-------+
 */
SELECT
  *
FROM
  Customers;

SELECT
  CustomerName
FROM
  Customers;

-----------------------------------------------------------------
-----------------------------------------------------------------
SELECT
  CustomerName
FROM
  Customers
WHERE
  Country = 'Mexico';

SELECT
  CustomerName
FROM
  Customers
WHERE
  Country = 'UK';

SELECT
  CustomerName
FROM
  Customers
WHERE
  Country = 'Poland';

-----------------------------------------------------------------
-----------------------------------------------------------------
SELECT DISTINCT
  Country
FROM
  Customers;

SELECT
  CustomerName
FROM
  Customers
WHERE
  Country = 'Italy';

SELECT
  CustomerName
FROM
  Customers
WHERE
  Country = 'USA';

SELECT
  Country
FROM
  Customers;

SELECT DISTINCT
  Country
FROM
  Customers;

SELECT
  COUNT(Country)
FROM
  Customers;

SELECT
  COUNT(DISTINCT Country)
FROM
  Customers;

SELECT
  Count(*) AS DistinctCountries
FROM ( SELECT DISTINCT
    Country
  FROM
    Customers);

-----------------------------------------------------------------
-----------------------------------------------------------------
/*
SELECT * FROM Customers
WHERE Country='Mexico';
 */
SELECT
  *
FROM
  Customers
WHERE
  Country = 'Mexico';

-----------------------------------------------------------------
-----------------------------------------------------------------
/*Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;
 */
/*
=	Equal	
>	Greater than	
<	Less than	
>=	Greater than or equal	
<=	Less than or equal	
<>	Not equal. or !=	
BETWEEN	Between a certain range	
LIKE	Search for a pattern	
IN	To specify multiple possible values for a column	
 */
SELECT
  CustomerID
FROM
  Customers;

SELECT
  *
FROM
  Customers
WHERE
  CustomerID = 0;

SELECT
  *
FROM
  Customers
WHERE
  CustomerID > 80;

SELECT
  *
FROM
  Products
WHERE
  Price BETWEEN 50 AND 60;

SELECT
  *
FROM
  Customers
WHERE
  City LIKE 's%';

SELECT
  *
FROM
  Customers
WHERE
  City IN ('Paris', 'London');

SELECT
  *
FROM
  Customers
WHERE
  PostalCode LIKE 'W%';


/*
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
 */
SELECT
  *
FROM
  Products
ORDER BY
  Price;

SELECT
  *
FROM
  Products
ORDER BY
  Price DESC;

SELECT
  *
FROM
  Products
ORDER BY
  ProductName;

SELECT
  *
FROM
  Products
ORDER BY
  ProductName DESC;

SELECT
  *
FROM
  Customers
ORDER BY
  Country,
  CustomerName;

SELECT
  *
FROM
  Customers
ORDER BY
  Country ASC,
  CustomerName DESC;

SELECT
  *
FROM
  Customers
WHERE
  Country = 'Spain'
  AND CustomerName LIKE 'G%';


/*
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
 */
SELECT
  *
FROM
  Customers
WHERE
  Country = 'Brazil'
  AND City = 'Rio de Janeiro'
  AND CustomerID > 50;

SELECT
  *
FROM
  Customers
WHERE
  Country = 'Spain'
  AND (CustomerName LIKE 'C%'
    OR CustomerName LIKE 'R%'
    OR CustomerName LIKE 'G%');

SELECT
  CustomerName
FROM
  Customers;

SELECT
  *
FROM
  Customers
WHERE
  Country = 'Spain'
  AND CustomerName LIKE 'G%'
  OR CustomerName LIKE 'R%';

SELECT
  *
FROM
  Customers
WHERE
  Country = 'Germany'
  OR Country = 'Spain';


/*
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
 */
SELECT
  *
FROM
  Customers
WHERE
  City = 'Berlin'
  OR CustomerName LIKE 'G%'
  OR Country = 'Norway';

SELECT
  *
FROM
  Customers
WHERE
  Country = 'Spain'
  AND (CustomerName LIKE 'G%'
    OR CustomerName LIKE 'R%');

SELECT
  *
FROM
  Customers
WHERE
  Country = 'Spain'
  AND CustomerName LIKE 'G%'
  OR CustomerName LIKE 'R%';

SELECT
  *
FROM
  Customers
WHERE
  NOT Country = 'Spain';


/*
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
 */
SELECT
  *
FROM
  Customers
WHERE
  CustomerName NOT LIKE 'A%';

SELECT
  *
FROM
  Customers
WHERE
  CustomerID NOT BETWEEN 10 AND 60;

SELECT
  *
FROM
  Customers
WHERE
  City NOT IN ('Paris', 'London');

SELECT
  *
FROM
  Customers
WHERE
  NOT CustomerID > 50;

SELECT
  CustomerID
FROM
  Customers
WHERE
  NOT CustomerID > 50;

SELECT
  *
FROM
  Customers
WHERE
  NOT CustomerId < 50;

-- 1. Specify both the column names and the values to be inserted:
/*
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
 */
-- 2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query.
/*
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
 */
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
  VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
  VALUES ('Cardinal', 'Stavanger', 'Norway');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
  VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
  ('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
  ('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');


/*
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
 */
/*
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
 */
SELECT
  CustomerName,
  ContactName,
  Address
FROM
  Customers
WHERE
  Address IS NULL;

SELECT
  CustomerName,
  ContactName,
  Address
FROM
  Customers
WHERE
  Address IS NOT NULL;

UPDATE
  Customers
SET
  ContactName = 'Alfred Schmidt',
  City = 'Frankfurt'
WHERE
  CustomerID = 1;

UPDATE
  Customers
SET
  ContactName = 'Juan'
WHERE
  Country = 'Mexico';

UPDATE
  Customers
SET
  ContactName = 'Juan';


/*
DELETE FROM table_name WHERE condition;
 */
DELETE FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

DELETE FROM Customers;

DROP TABLE Customers;

-- SELECT
--   TOP 3 *
-- FROM
--   Customers;
/*
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;
 */
/*
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
 */
/*
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;
 */
-- SQL Aggregate Functions
/*
MIN() - returns the smallest value within the selected column
MAX() - returns the largest value within the selected column
COUNT() - returns the number of rows in a set
SUM() - returns the total sum of a numerical column
AVG() - returns the average value of a numerical column
Aggregate functions ignore null values (except for COUNT()).
 */
SELECT
  MIN(Price)
FROM
  Products;

SELECT
  MAX(Price)
FROM
  Products;

SELECT
  AVG(Price)
FROM
  Products;


/*
SELECT MIN(column_name)
FROM table_name
WHERE condition;
 */
/*
SELECT MAX(column_name)
FROM table_name
WHERE condition;
 */
SELECT
  MIN(Price) AS SmallestPrice
FROM
  Products;

SELECT
  MIN(Price) AS SmallestPrice,
  CategoryID
FROM
  Products
GROUP BY
  CategoryID;

SELECT
  COUNT(*)
FROM
  Products;

-----------------------------------------------------------------
-----------------------------------------------------------------
/*
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
 */
SELECT
  COUNT(ProductName)
FROM
  Products;

SELECT
  COUNT(ProductID)
FROM
  Products
WHERE
  Price > 20;

SELECT
  COUNT(DISTINCT Price)
FROM
  Products;

SELECT
  -- COUNT(*) AS[Number OF records]
  COUNT(*) AS number_of_records
FROM
  Products;

-----------------------------------------------------------------
-----------------------------------------------------------------
SELECT
  -- COUNT(*) AS[Number OF records],
  COUNT(*) AS number_of_category_id
FROM
  Products
GROUP BY
  CategoryID;

-----------------------------------------------------------------
-----------------------------------------------------------------
SELECT
  CategoryID
FROM
  Products;

-----------------------------------------------------------------
-----------------------------------------------------------------w
SELECT
  SUM(Quantity)
FROM
  OrderDetails;

-----------------------------------------------------------------
/*
SELECT SUM(column_name)
FROM table_name
WHERE condition;
 */
-----------------------------------------------------------------
SELECT
  SUM(Quantity)
FROM
  OrderDetails
WHERE
  ProductId = 11;

-----------------------------------------------------------------
SELECT
  SUM(Quantity) AS total
FROM
  OrderDetails;

-----------------------------------------------------------------
SELECT
  OrderID,
  SUM(Quantity) AS Total_Quantity
FROM
  OrderDetails
GROUP BY
  OrderID;

-----------------------------------------------------------------
SELECT
  SUM(Quantity * 10)
FROM
  OrderDetails;

-----------------------------------------------------------------
DESCRIBE Products;

DESCRIBE OrderDetails;

SELECT
  SUM(Price * Quantity)
FROM
  OrderDetails
  LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;

-----------------------------------------------------------------
SELECT
  AVG(Price)
FROM
  Products;

-----------------------------------------------------------------
/*
SELECT
 AVG(column_name)
FROM
 table_name
WHERE
 condition;
 */
-----------------------------------------------------------------
SELECT
  AVG(Price)
FROM
  Products
WHERE
  CategoryID = 1;

-----------------------------------------------------------------
SELECT
  AVG(Price) AS average_price
  -- AVG(Price) AS[average price]
FROM
  Products;

-----------------------------------------------------------------
SELECT
  AVG(price)
FROM
  Products;

SELECT
  *
FROM
  Products
WHERE
  price > (
    SELECT
      AVG(price)
    FROM
      Products);

-----------------------------------------------------------------
-----------------------------------------------------------------
SELECT
  AVG(Price) AS AveragePrice,
  CategoryID
FROM
  Products
GROUP BY
  CategoryID;

SELECT
  AVG(Price) AS AveragePrice,
  CategoryID
FROM
  Products
GROUP BY
  CategoryID


-----------------------------------------------------------------
-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'a%';

-----------------------------------------------------------------
/*
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
 */
-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  city LIKE 'L_nd__';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  city LIKE '%L%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'La%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'a%'
  OR CustomerName LIKE 'b%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '%a';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'b%s';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '%or%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'a__%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '_r%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  Country LIKE 'Spain';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'a%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '%es';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '%mer%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  City LIKE '_ondon';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  City LIKE 'L___on';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '[bsp]%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '[a-f]%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE 'a__%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '_r%';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  Country LIKE 'Spain';

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  Country IN ('Germany', 'France', 'UK');

-----------------------------------------------------------------
/*
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
 */
-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  Country NOT IN ('Germany', 'France', 'UK');

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerID IN (
    SELECT
      CustomerID
    FROM
      Orders);

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers
WHERE
  CustomerID NOT IN (
    SELECT
      CustomerID
    FROM
      Orders);

-----------------------------------------------------------------
SELECT
  *
FROM
  Products
WHERE
  Price BETWEEN 10 AND 20;

-----------------------------------------------------------------
/*
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
 */
-----------------------------------------------------------------
SELECT
  *
FROM
  Products
WHERE
  Price NOT BETWEEN 10 AND 20;

-----------------------------------------------------------------
SELECT
  *
FROM
  Products
WHERE
  Price BETWEEN 10 AND 20
  AND CategoryID IN (1, 2, 3);

-----------------------------------------------------------------
SELECT
  *
FROM
  Products
WHERE
  ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY
  ProductName;

-----------------------------------------------------------------
SELECT
  *
FROM
  Products
WHERE
  ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton  Cajun Seasoning"
ORDER BY
  ProductName;

-----------------------------------------------------------------
SELECT
  *
FROM
  Products
WHERE
  ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY
  ProductName;

-----------------------------------------------------------------
SELECT
  *
FROM
  Orders
WHERE
  OrderDate BETWEEN # 07 / 01 / 1996 # AND # 07 / 31 / 1996 #;

-----------------------------------------------------------------
SELECT
  *
FROM
  Orders
WHERE
  OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-----------------------------------------------------------------
SELECT
  CustomerID AS ID
FROM
  Customers;

-----------------------------------------------------------------
SELECT
  CustomerID ID
FROM
  Customers;

-----------------------------------------------------------------
/*
SELECT column_name AS alias_name
FROM table_name;
 */
-----------------------------------------------------------------
/*
SELECT column_name(s)
FROM table_name AS alias_name;
 */
-----------------------------------------------------------------
SELECT
  CustomerID AS ID,
  CustomerName AS Customer
FROM
  Customers;

SELECT
  ProductName AS MyGreatProducts
FROM
  Products;

SELECT
  ProductName AS "My Great Products"
FROM
  Products;

SELECT
  CustomerName,
  Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM
  Customers;

-----------------------------------------------------------------
SELECT
  CustomerName,
  CONCAT(Address, ', ', PostalCode, ', ', City, ', ', Country) AS Address
FROM
  Customers;

-----------------------------------------------------------------
SELECT
  CustomerName,
  (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM
  Customers;

-----------------------------------------------------------------
SELECT
  *
FROM
  Customers AS Persons;

-----------------------------------------------------------------
SELECT
  o.OrderID,
  o.OrderDate,
  c.CustomerName
FROM
  Customers AS c,
  Orders AS o
WHERE
  c.CustomerName = 'Around the Horn'
  AND c.CustomerID = o.CustomerID;

-----------------------------------------------------------------
SELECT
  orders.OrderID,
  orders.OrderDate,
  Customers.CustomerName
FROM
  Customers,
  orders
WHERE
  Customers.CustomerName = 'Around the Horn'
  AND Customers.CustomerID = orders.Customer;


/*
SHOW tables;
change orders TO Orders
change employees TO Employees
change categories TO Categories
RENAME TABLE orders TO Orders,
employees TO Employees,
categories TO Categories;

SHOW tables;
 */
-----------------------------------------------------------------
SELECT
  Orders.OrderID,
  Customers.CustomerName,
  Orders.OrderDate
FROM
  Orders
  INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-----------------------------------------------------------------
SELECT
  ProductID,
  ProductName,
  CategoryName
FROM
  Products
  INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-----------------------------------------------------------------
/*
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
 */
-----------------------------------------------------------------
SELECT
  Products.ProductID,
  Products.ProductName,
  Categories.CategoryName
FROM
  Products
  INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-----------------------------------------------------------------
SELECT
  Products.ProductID,
  Products.ProductName,
  Categories.CategoryName
FROM
  Products
  JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-----------------------------------------------------------------
SELECT
  Orders.OrderID,
  Customers.CustomerName,
  Shippers.ShipperName
FROM ((Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
  INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

SHOW tables;

-- no table with the name shippr
----------------------------------------------------------------------------------------------------------------------------------
/*
SELECT
 column_name (s)
FROM
 table1
 LEFT JOIN table2 ON table1.column_name = table2.column_name;
 */
-----------------------------------------------------------------
-----------------------------------------------------------------
/*
SELECT
 column_name (s)
FROM
 table1
 RIGHT JOIN table2 ON table1.column_name = table2.column_name;
 */
SELECT
  Orders.OrderID,
  Employees.LastName,
  Employees.FirstName
FROM
  Orders
  RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY
  Orders.OrderID;

-----------------------------------------------------------------
/*
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
 */
-----------------------------------------------------------------
SELECT
  Customers.CustomerName,
  Orders.OrderID
FROM
  Customers
  FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY
  Customers.CustomerName;

-- Error
-----------------------------------------------------------------
/*
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
 */
-----------------------------------------------------------------
SELECT
  A.CustomerName AS CustomerName1,
  B.CustomerName AS CustomerName2,
  A.City
FROM
  Customers A,
  Customers B
WHERE
  A.CustomerID <> B.CustomerID
  AND A.City = B.City
ORDER BY
  A.City;


/*
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
 */
/*
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
 */
SELECT
  City
FROM
  Customers
UNION
SELECT
  City
FROM
  Suppliers
ORDER BY
  City;

SELECT
  City
FROM
  Customers
UNION ALL
SELECT
  City
FROM
  Suppliers
ORDER BY
  City;

SELECT
  City,
  Country
FROM
  Customers
WHERE
  Country = 'Germany'
UNION
SELECT
  City,
  Country
FROM
  Suppliers
WHERE
  Country = 'Germany'
ORDER BY
  City;

SELECT
  City,
  Country
FROM
  Customers
WHERE
  Country = 'Germany'
UNION ALL
SELECT
  City,
  Country
FROM
  Suppliers
WHERE
  Country = 'Germany'
ORDER BY
  City;

SELECT
  'Customer' AS Type,
  ContactName,
  City,
  Country
FROM
  Customers
UNION
SELECT
  'Supplier',
  ContactName,
  City,
  Country
FROM
  Suppliers;


/*
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
 */
SELECT
  COUNT(CustomerID),
  Country
FROM
  Customers
GROUP BY
  Country;

SELECT
  COUNT(CustomerID),
  Country
FROM
  Customers
GROUP BY
  Country
ORDER BY
  COUNT(CustomerID) DESC;

SELECT
  Shippers.ShipperName,
  COUNT(Orders.OrderID) AS NumberOfOrders
FROM
  Orders
  LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY
  ShipperName;


/*
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
 */
SELECT
  COUNT(CustomerID),
  Country
FROM
  Customers
GROUP BY
  Country
HAVING
  COUNT(CustomerID) > 5;

SELECT
  COUNT(CustomerID),
  Country
FROM
  Customers
GROUP BY
  Country
HAVING
  COUNT(CustomerID) > 5
ORDER BY
  COUNT(CustomerID) DESC;

SELECT
  Employees.LastName,
  COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
  INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY
  LastName
HAVING
  COUNT(Orders.OrderID) > 10;

SELECT
  Employees.LastName,
  COUNT(Orders.OrderID) AS NumberOfOrders
FROM
  Orders
  INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE
  LastName = 'Davolio'
  OR LastName = 'Fuller'
GROUP BY
  LastName
HAVING
  COUNT(Orders.OrderID) > 25;


/*
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);
 */
/*
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
 (SELECT column_name
 FROM table_name
 WHERE condition);
 */
/*
SELECT ALL column_name(s)
FROM table_name
WHERE condition;
 */
/*
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
 (SELECT column_name
 FROM table_name
 WHERE condition);
 */
SELECT
  ProductName
FROM
  Products
WHERE
  ProductID = ANY (
    SELECT
      ProductID
    FROM
      OrderDetails
    WHERE
      Quantity = 10);

SELECT
  ProductName
FROM
  Products
WHERE
  ProductID = ANY (
    SELECT
      ProductID
    FROM
      OrderDetails
    WHERE
      Quantity > 99);

SELECT
  ProductName
FROM
  Products
WHERE
  ProductID = ANY (
    SELECT
      ProductID
    FROM
      OrderDetails
    WHERE
      Quantity > 1000);

SELECT
  ALL ProductName
FROM
  Products
WHERE
  TRUE;

SELECT
  ProductName
FROM
  Products
WHERE
  ProductID = ALL (
    SELECT
      ProductID
    FROM
      OrderDetails
    WHERE
      Quantity = 10);


/*
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
 */
/*
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
 */
SELECT
  * INTO CustomersBackup2017
FROM
  Customers;

SELECT
  * INTO CustomersBackup2017 IN 'Backup.mdb'
FROM
  Customers;

SELECT
  CustomerName,
  ContactName INTO CustomersBackup2017
FROM
  Customers;

SELECT
  * INTO CustomersGermany
FROM
  Customers
WHERE
  Country = 'Germany';

SELECT
  Customers.CustomerName,
  Orders.OrderID INTO CustomersOrderBackup2017
FROM
  Customers
  LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT
  * INTO newtable
FROM
  oldtable
WHERE
  1 = 0;


/*
INSERT INTO table2
SELECT * FROM table1
WHERE condition;
 */
/*
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;
 */
INSERT INTO Customers (CustomerName, City, Country)
SELECT
  SupplierName,
  City,
  Country
FROM
  Suppliers;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT
  SupplierName,
  ContactName,
  Address,
  City,
  PostalCode,
  Country
FROM
  Suppliers;

INSERT INTO Customers (CustomerName, City, Country)
SELECT
  SupplierName,
  City,
  Country
FROM
  Suppliers
WHERE
  Country = 'Germany';


/*
CASE
 WHEN condition1 THEN result1
 WHEN condition2 THEN result2
 WHEN conditionN THEN resultN
 ELSE result
END;
 */
SELECT
  OrderID,
  Quantity,
  CASE WHEN Quantity > 30 THEN
    'The quantity is greater than 30'
  WHEN Quantity = 30 THEN
    'The quantity is 30'
  ELSE
    'The quantity is under 30'
  END AS QuantityText
FROM
  OrderDetails;

SELECT
  CustomerName,
  City,
  Country
FROM
  Customers
ORDER BY
  (
    CASE WHEN City IS NULL THEN
      Country
    ELSE
      City
    END);

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + IFNULL (UnitsOnOrder, 0))
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + ISNULL (UnitsOnOrder,
      0))
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + IIF (ISNULL (UnitsOnOrder), 0, UnitsOnOrder))
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + NVL (UnitsOnOrder, 0))
FROM
  Products;

SELECT
  ProductName,
  UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM
  Products;


/*
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;
 */
/*
EXEC procedure_name;
 */
CREATE PROCEDURE SelectAllCustomers AS
SELECT
  *
FROM
  Customers GO;

EXEC SelectAllCustomers;

CREATE PROCEDURE SelectAllCustomers @City nvarchar (30) AS
  SELECT
    *
  FROM
    Customers
  WHERE
    City = @City GO;

EXEC SelectAllCustomers @City = 'London';

CREATE PROCEDURE SelectAllCustomers @City nvarchar (30), @PostalCode nvarchar (10) AS
  SELECT
    *
  FROM
    Customers
  WHERE
    City = @City
    AND PostalCode = @PostalCode GO;

-- EXEC SelectAllCustomers @City = 'London',
-- @PostalCode = 'WA1 1DP';
SELECT
  *
FROM
  Customers;

-- SELECT * FROM Customers -- WHERE City='Berlin';
-- SELECT * FROM Customers;
SELECT
  *
FROM
  Products;

SELECT
  CustomerName,
  /*City,*/
  Country
FROM
  Customers;

SELECT
  *
FROM
  Customers
WHERE (CustomerName LIKE 'L%'
  OR CustomerName LIKE 'R%'
  /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/
  OR CustomerName LIKE 'W%')
AND Country = 'USA'
ORDER BY
  CustomerName;
