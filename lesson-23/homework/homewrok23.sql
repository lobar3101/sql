create database homework23
CREATE TABLE Dates (
    Id INT,
    Dt DATETIME
);
INSERT INTO Dates VALUES
(1,'2018-04-06 11:06:43.020'),
(2,'2017-12-06 11:06:43.020'),
(3,'2016-01-06 11:06:43.020'),
(4,'2015-11-06 11:06:43.020'),
(5,'2014-10-06 11:06:43.020');
select * from Dates
SELECT 
    Dt,
    Data_FORMAt('%m', Dt) AS formatted_month
FROM Dates;
SELECT 
    Id,
    Dt,
    RIGHT('0' + CAST(MONTH(Dt) AS VARCHAR(2)), 2) AS FormattedMonth
FROM 
    Dates;
	SELECT 
    Id,
    Dt,
    Day(Dt) AS MonthNumber
FROM Dates;
SELECT 
    Id,
    Dt,
    FORMAT(Dt, 'MM') AS MonthPrefixedWithZero 
	FROM Dates;
	CREATE TABLE TestFixLengths (
    Id INT,
    Vals VARCHAR(100)
);
INSERT INTO TestFixLengths VALUES
(1,'11111111'), (2,'123456'), (2,'1234567'), 
(2,'1234567890'), (5,''), (6,NULL), 
(7,'123456789012345');
SELECT * FROM TestFixLengths
SELECT 
    Id,
    Vals
FROM 
   TestFixLengths
WHERE 
    LEN(Vals) BETWEEN 6 AND 10;
	CREATE TABLE TestMaximum (
    ID INT,
    Item VARCHAR(20),
    Vals INT
);
INSERT INTO TestMaximum VALUES
(1, 'a1',15), (1, 'a2',20), (1, 'a3',90),
(2, 'q1',10), (2, 'q2',40), (2, 'q3',60), (2, 'q4',30),
(3, 'q5',20);
SELECT * FROM TestMaximum
SELECT DISTINCT
    ID,
    FIRST_VALUE(Item) OVER (PARTITION BY ID ORDER BY Vals DESC) AS Item,
    MAX(Vals) OVER (PARTITION BY ID) AS Vals
FROM TestMaximum;

CREATE TABLE SumOfMax (
    DetailedNumber INT,
    Vals INT,
    Id INT
);
INSERT INTO SumOfMax VALUES
(1,5,101), (1,4,101), (2,6,101), (2,3,101),
(3,3,102), (4,2,102), (4,3,102);
select * from SumOfMax
WITH MaxVals AS (
    SELECT 
        Id,
        DetailedNumber,
        MAX(Vals) AS MaxVal
    FROM SumOfMax
    GROUP BY Id, DetailedNumber
)
SELECT 
    Id,
    SUM(MaxVal) AS SumOfMaxVals
FROM MaxVals
GROUP BY Id
ORDER BY Id;

CREATE TABLE TheZeroPuzzle (
    Id INT,
    a INT,
    b INT
);
INSERT INTO TheZeroPuzzle VALUES
(1,10,4), (2,10,10), (3,1, 10000000), (4,15,15);
SELECT * FROM TheZeroPuzzle
SELECT Id, a,b, 
case when a-b= 0 then ' '
else  cast(a-b as varchar)
end AS OUTPUT
FROM TheZeroPuzzle
 CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    Product VARCHAR(50),
    Category VARCHAR(50),
    QuantitySold INT,
    UnitPrice DECIMAL(10,2),
    SaleDate DATE,
    Region VARCHAR(50)
);
INSERT INTO Sales (Product, Category, QuantitySold, UnitPrice, SaleDate, Region)
VALUES
('Laptop', 'Electronics', 10, 800.00, '2024-01-01', 'North'),
('Smartphone', 'Electronics', 15, 500.00, '2024-01-02', 'North'),
('Tablet', 'Electronics', 8, 300.00, '2024-01-03', 'East'),
('Headphones', 'Electronics', 25, 100.00, '2024-01-04', 'West'),
('TV', 'Electronics', 5, 1200.00, '2024-01-05', 'South'),
('Refrigerator', 'Appliances', 3, 1500.00, '2024-01-06', 'South'),
('Microwave', 'Appliances', 7, 200.00, '2024-01-07', 'East'),
('Washing Machine', 'Appliances', 4, 1000.00, '2024-01-08', 'North'),
('Oven', 'Appliances', 6, 700.00, '2024-01-09', 'West'),
('Smartwatch', 'Electronics', 12, 250.00, '2024-01-10', 'East'),
('Vacuum Cleaner', 'Appliances', 5, 400.00, '2024-01-11', 'South'),
('Gaming Console', 'Electronics', 9, 450.00, '2024-01-12', 'North'),
('Monitor', 'Electronics', 14, 300.00, '2024-01-13', 'West'),
('Keyboard', 'Electronics', 20, 50.00, '2024-01-14', 'South'),
('Mouse', 'Electronics', 30, 25.00, '2024-01-15', 'East'),
('Blender', 'Appliances', 10, 150.00, '2024-01-16', 'North'),
('Fan', 'Appliances', 12, 75.00, '2024-01-17', 'South'),
('Heater', 'Appliances', 8, 120.00, '2024-01-18', 'East'),
('Air Conditioner', 'Appliances', 2, 2000.00, '2024-01-19', 'West'),
('Camera', 'Electronics', 7, 900.00, '2024-01-20', 'North');
select * from Sales
What is the total revenue generated from all sales?
select saleid,sum(quantitysold*unitprice) as totalrevenue from Sales
group by saleid

What is the average unit price of products?
select product,avg(unitprice) from Sales
group by product

How many sales transactions were recorded?
SELECT COUNT(*) AS total_transactions FROM Sales;

What is the highest number of units sold in a single transaction?
SELECT MAX(QuantitySold) AS max_units_sold
FROM Sales;
How many products were sold in each category?
select * from Sales
select category,count(product) from Sales
group by category
SELECT 
    Category,
    Product,
    SUM(QuantitySold) AS category_product_sales
FROM Sales
GROUP BY Category, Product
ORDER BY Category, category_product_sales DESC;


What is the total revenue for each region?
SELECT 
    Region,
    SUM(QuantitySold * UnitPrice) AS total_revenue from sales
	group by Region


What is the total quantity sold per month?
select * from Sales
select Category,sum(quantitysold) as quantity, format(saledate, 'yyyy-MM') as month from Sales
GROUP BY FORMAT(SaleDate, 'yyyy-MM'), Category

Which product generated the highest total revenue?
Select top 1 sum(quantitysold*unitprice) as totalrevenue,  product from Sales
group  by  product
Compute the running total of revenue ordered by sale date.
Select  sum(quantitysold*unitprice) as totalrevenue, SaleDate from Sales
group  by SaleDate
order by  totalrevenue,SaleDate
How much does each category contribute to total sales revenue?
SELECT 
    Category,
    SUM(QuantitySold * UnitPrice) AS TotalRevenue
FROM Sales
GROUP BY Category;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    JoinDate DATE
);
INSERT INTO Customers (CustomerName, Region, JoinDate)
VALUES
('John Doe', 'North', '2022-03-01'),
('Jane Smith', 'West', '2023-06-15'),
('Emily Davis', 'East', '2021-11-20'),
('Michael Brown', 'South', '2023-01-10'),
('Sarah Wilson', 'North', '2022-07-25'),
('David Martinez', 'East', '2023-04-30'),
('Laura Johnson', 'West', '2022-09-14'),
('Kevin Anderson', 'South', '2021-12-05'),
('Sophia Moore', 'North', '2023-02-17'),
('Daniel Garcia', 'East', '2022-08-22');
select * from Customers
select * from Sales

Show all sales along with the corresponding customer names
List customers who have not made any purchases
Compute total revenue generated from each customer
Find the customer who has contributed the most revenue
Calculate the total sales per customer per month

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    CostPrice DECIMAL(10,2),
    SellingPrice DECIMAL(10,2)
);
INSERT INTO Products (ProductName, Category, CostPrice, SellingPrice)
VALUES
('Laptop', 'Electronics', 600.00, 800.00),
('Smartphone', 'Electronics', 350.00, 500.00),
('Tablet', 'Electronics', 200.00, 300.00),
('Headphones', 'Electronics', 50.00, 100.00),
('TV', 'Electronics', 900.00, 1200.00),
('Refrigerator', 'Appliances', 1100.00, 1500.00),
('Microwave', 'Appliances', 120.00, 200.00),
('Washing Machine', 'Appliances', 700.00, 1000.00),
('Oven', 'Appliances', 500.00, 700.00),
('Gaming Console', 'Electronics', 320.00, 450.00);
select * from Products
List all products that have been sold at least once
SELECT DISTINCT p.ProductName
FROM Products p
INNER JOIN Sales s ON p.ProductName = s.Product
ORDER BY p.ProductName;
Find the most expensive product in the Products table
select top 1 sellingprice,ProductName from Products
order by sellingprice desc
Show each sale with its corresponding cost price from the Products table
SELECT 
    s.SaleID,
    s.Product,
    s.QuantitySold,
    p.CostPrice,
    s.UnitPrice AS SalePrice
FROM Sales s
JOIN Products p ON s.Product = p.ProductName;
select * from Products
Find all products where the selling price is higher than the average selling price in their category;;
; with avgcategory as ( 
select avg(sellingprice) as avgprice,ProductName,Category from Products
group by Category,ProductName)
select p.Category,
    p.SellingPrice,
	p.ProductName
FROM Products p
join avgcategory a on p.Category= a.Category
where p.SellingPrice> a.avgprice
order by p.SellingPrice desc
