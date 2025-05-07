create database homework21
CREATE TABLE ProductSales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    SaleDate DATE NOT NULL,
    SaleAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CustomerID INT NOT NULL
);

INSERT INTO ProductSales (SaleID, ProductName, SaleDate, SaleAmount, Quantity, CustomerID)
VALUES 
(1, 'Product A', '2023-01-01', 150.00, 2, 101),
(2, 'Product B', '2023-01-02', 200.00, 3, 102),
(3, 'Product C', '2023-01-03', 250.00, 1, 103),
(4, 'Product A', '2023-01-04', 150.00, 4, 101),
(5, 'Product B', '2023-01-05', 200.00, 5, 104),
(6, 'Product C', '2023-01-06', 250.00, 2, 105),
(7, 'Product A', '2023-01-07', 150.00, 1, 101),
(8, 'Product B', '2023-01-08', 200.00, 8, 102),
(9, 'Product C', '2023-01-09', 250.00, 7, 106),
(10, 'Product A', '2023-01-10', 150.00, 2, 107),
(11, 'Product B', '2023-01-11', 200.00, 3, 108),
(12, 'Product C', '2023-01-12', 250.00, 1, 109),
(13, 'Product A', '2023-01-13', 150.00, 4, 110),
(14, 'Product B', '2023-01-14', 200.00, 5, 111),
(15, 'Product C', '2023-01-15', 250.00, 2, 112),
(16, 'Product A', '2023-01-16', 150.00, 1, 113),
(17, 'Product B', '2023-01-17', 200.00, 8, 114),
(18, 'Product C', '2023-01-18', 250.00, 7, 115),
(19, 'Product A', '2023-01-19', 150.00, 3, 116),
(20, 'Product B', '2023-01-20', 200.00, 4, 117),
(21, 'Product C', '2023-01-21', 250.00, 2, 118),
(22, 'Product A', '2023-01-22', 150.00, 5, 119),
(23, 'Product B', '2023-01-23', 200.00, 3, 120),
(24, 'Product C', '2023-01-24', 250.00, 1, 121),
(25, 'Product A', '2023-01-25', 150.00, 6, 122),
(26, 'Product B', '2023-01-26', 200.00, 7, 123),
(27, 'Product C', '2023-01-27', 250.00, 3, 124),
(28, 'Product A', '2023-01-28', 150.00, 4, 125),
(29, 'Product B', '2023-01-29', 200.00, 5, 126),
(30, 'Product C', '2023-01-30', 250.00, 2, 127);
select * from ProductSales
SELECT 
    SaleID,
    SaleDate,
    CustomerID,
    saleAmount,
    ROW_NUMBER() OVER (ORDER BY SaleDate) AS RowNum
FROM 
    ProductSales;

Write a query to rank products based on the total quantity sold (use DENSE_RANK())
select sum(quantity) as totalquantity,productname,saleid, 
customerid, DENSE_RANK() over (order by sum(quantity)) as denserank
from productsales
group by productname,saleid, 
customerid

select * from productsales
select * from productsales p1
join productsales p2 on p1.customerid= p2.customerid
where p1.saleamount=
(select max(saleamount) from productsales p2
where p1.customerid= p2.customerid)
order by p1.saleamount

select *, LEAD(saleamount ,1,0) OVER (ORDER BY SALEDATE DESC) AS NEXT_VAL
 from productsales 

SELECT *,LAG(saleamount,1,0) OVER (ORDER BY SALEDATE) AS PREV_SALES
FROM productsales

select * from productsales
SELECT productname, RANK() OVER (ORDER BY saleamount DESC) FROM productsales
Write a query to identify sales amounts that are greater than the previous sales amount

; with cte as(SELECT 
    SaleID,
    SaleDate,
    CustomerID,
    SaleAmount,
    LAG(SaleAmount) OVER (ORDER BY SaleDate) AS PreviousAmount
FROM 
    productSales)
	select * from cte
WHERE 
    SaleAmount > PreviousAmount
ORDER BY 
    SaleDate;

Write a query to calculate the difference in sale amount from the previous sale for every product
SELECT *,LAG(saleamount,2,saleamount) OVER (ORDER BY SALEDATE) AS PREV_SALES,
SALEAMOUNT - LAG(saleamount,2,saleamount) OVER (ORDER BY SALEDATE) AS DIFF 
FROM productSales

Write a query to compare the current sale amount with the next sale amount in terms of percentage change.

Write a query to calculate the ratio of the current sale amount to the previous sale amount within the same product.
Write a query to calculate the difference in sale amount from the very first sale of that product.
Write a query to find sales that have been increasing continuously for a product (i.e., each sale amount is greater than the previous sale amount for that product).
Write a query to calculate a "closing balance" for sales amounts which adds the current sale amount to a running total of previous sales.
Write a query to calculate the moving average of sales amounts over the last 3 sales.
Write a query to show the difference between each sale amount and the average sale amount.