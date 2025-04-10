﻿CREATE DATABASE HOMEWORKLAST5
 CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), 
 Price DECIMAL(10, 2), Category VARCHAR(50), StockQuantity INT );

INSERT INTO Products VALUES (1, 'Laptop', 1200.00, 'Electronics', 30), (2, 'Smartphone', 800.00, 'Electronics', 50), (3, 'Tablet', 400.00, 'Electronics', 40), (4, 'Monitor', 250.00, 'Electronics', 60), (5, 'Keyboard', 50.00, 'Accessories', 100), (6, 'Mouse', 30.00, 'Accessories', 120), (7, 'Chair', 150.00, 'Furniture', 80), (8, 'Desk', 200.00, 'Furniture', 75), (9, 'Pen', 5.00, 'Stationery', 300), (10, 'Notebook', 10.00, 'Stationery', 500), 
(11, 'Printer', 180.00, 'Electronics', 25), (12, 'Camera', 500.00, 'Electronics', 40), 
(13, 'Flashlight', 25.00, 'Tools', 200), (14, 'Shirt', 30.00, 'Clothing', 150), 
(15, 'Jeans', 45.00, 'Clothing', 120), (16, 'Jacket', 80.00, 'Clothing', 70), 
(17, 'Shoes', 60.00, 'Clothing', 100), (18, 'Hat', 20.00, 'Accessories', 50), 
(19, 'Socks', 10.00, 'Clothing', 200), (20, 'T-Shirt', 25.00, 'Clothing', 150), 
(21, 'Lamp', 60.00, 'Furniture', 40), (22, 'Coffee Table', 100.00, 'Furniture', 35), 
(23, 'Book', 15.00, 'Stationery', 250), (24, 'Rug', 90.00, 'Furniture', 60), 
(25, 'Cup', 5.00, 'Accessories', 500), (26, 'Bag', 25.00, 'Accessories', 300), 
(27, 'Couch', 450.00, 'Furniture', 15), (28, 'Fridge', 600.00, 'Electronics', 20), 
(29, 'Stove', 500.00, 'Electronics', 15), (30, 'Microwave', 120.00, 'Electronics', 25), 
(31, 'Air Conditioner', 350.00, 'Electronics', 10), (32, 'Washing Machine', 450.00, 'Electronics', 15),
(33, 'Dryer', 400.00, 'Electronics', 10), (34, 'Hair Dryer', 30.00, 'Accessories', 100),
(35, 'Iron', 40.00, 'Electronics', 50), (36, 'Coffee Maker', 50.00, 'Electronics', 60), 
(37, 'Blender', 35.00, 'Electronics', 40), (38, 'Juicer', 55.00, 'Electronics', 30), 
(39, 'Toaster', 40.00, 'Electronics', 70), (40, 'Dishwasher', 500.00, 'Electronics', 20);

SELECT p.ProductID , p.ProductName AS NAME,
 p.Price FROM Products p

 CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, FirstName VARCHAR(100), LastName VARCHAR(100), Email VARCHAR(100), Phone VARCHAR(50), Address VARCHAR(255), City VARCHAR(100), State VARCHAR(100), PostalCode VARCHAR(20), Country VARCHAR(100) );
 INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City,
 State, PostalCode, Country) VALUES 
 (1, 'John', 'Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'), 
 (2, 'Jane', 'Smith', 'janesmith@yahoo.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA'),
 (3, 'Alice', 'Johnson', 'alicej@outlook.com', '555-3456', '789 Pine St', 'Toronto', 'ON', 'M4B1B3', 'Canada'), 
 (4, 'Bob', 'Brown', 'bobbrown@hotmail.com', '555-4567', '101 Maple St', 'Vancouver', 'BC', 'V5K0A1', 'Canada'), 
 (5, 'Charlie', 'Davis', 'charliedavis@gmail.com', '555-5678', '202 Birch St', 'Sydney', 'NSW', '2000', 'Australia'), 
 (6, 'David', 'Martinez', 'davidm@live.com', '555-6789', '303 Cedar St', 'Melbourne', 'VIC', '3000', 'Australia'), 
 (7, 'Emily', 'Garcia', 'emilyg@yahoo.com', '555-7890', '404 Redwood St', 'London', 'England', 'SW1A 1AA', 'UK'), 
 (8, 'Frank', 'Hernandez', 'frankh@outlook.com', '555-8901', '505 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
 (9, 'Grace', 'Lopez', 'gracel@gmail.com', '555-9012', '606 Aspen St', 'Birmingham', 'England', 'B1 1AA', 'UK'), 
 (10, 'Helen', 'Gonzalez', 'heleng@yahoo.com', '555-0123', '707 Fir St', 'Berlin', 'BE', '10117', 'Germany'),
 (11, 'Irene', 'Perez', 'irenep@hotmail.com', '555-1234', '808 Maple Ave', 'Munich', 'BY', '80331', 'Germany'), 
 (12, 'Jack', 'Wilson', 'jackw@live.com', '555-2345', '909 Oak Ave', 'Hamburg', 'HH', '20095', 'Germany'), 
 (13, 'Kim', 'Anderson', 'kima@gmail.com', '555-3456', '111 Pine Ave', 'Paris', '�le-de-France', '75001', 'France'),
 (14, 'Liam', 'Thomas', 'liamt@yahoo.com', '555-4567', '222 Cedar Ave', 'Lyon', 'Auvergne-Rh�ne-Alpes', '69001', 'France'), 
 (15, 'Megan', 'Taylor', 'megant@outlook.com', '555-5678', '333 Redwood Ave', 'Marseille', 'Provence-Alpes-C�te Azur', '13001', 'France'), 
 (16, 'Nathan', 'Moore', 'nathanm@hotmail.com', '555-6789', '444 Willow Ave', 'Tokyo', 'TK', '100-0001', 'Japan'), 
 (17, 'Olivia', 'Jackson', 'oliviaj@gmail.com', '555-7890', '555 Birch Ave', 'Osaka', 'OS', '530-0001', 'Japan'), 
 (18, 'Paul', 'White', 'paulw@yahoo.com', '555-8901', '666 Maple Blvd', 'Kyoto', 'KY', '600-8001', 'Japan'), 
 (19, 'Quincy', 'Lee', 'quincyl@outlook.com', '555-9012', '777 Oak Blvd', 'Seoul', 'SO', '04547', 'South Korea'), 
 (20, 'Rachel', 'Harris', 'rachelh@hotmail.com', '555-0123', '888 Pine Blvd', 'Busan', 'BU', '48058', 'South Korea'), (21, 'Sam', 'Clark', 'samc@gmail.com', '555-1234', '999 Cedar Blvd', 'Incheon', 'IC', '22382', 'South Korea'), (22, 'Tina', 'Allen', 'tinaallen@yahoo.com', '555-2345', '1010 Redwood Blvd', 'Mexico City', 'CMX', '01000', 'Mexico'), (23, 'Ursula', 'Scott', 'ursulas@outlook.com', '555-3456', '1111 Willow Blvd', 'Guadalajara', 'JAL', '44100', 'Mexico'), (24, 'Victor', 'Adams', 'victora@hotmail.com', '555-4567', '1212 Birch Blvd', 'Monterrey', 'NLE', '64000', 'Mexico'), (25, 'Walter', 'Baker', 'walterb@live.com', '555-5678', '1313 Oak Blvd', 'New York', 'NY', '10001', 'USA'), (26, 'Xander', 'Nelson', 'xandern@gmail.com', '555-6789', '1414 Cedar Blvd', 'Los Angeles', 'CA', '90001', 'USA'), (27, 'Yvonne', 'Carter', 'yvonnec@yahoo.com', '555-7890', '1515 Maple Dr', 'Chicago', 'IL', '60601', 'USA'), (28, 'Zane', 'Mitchell', 'zanem@outlook.com', '555-8901', '1616 Redwood Dr', 'Houston', 'TX', '77001', 'USA'), (29, 'Anna', 'Roberts', 'annar@hotmail.com', '555-9012', '1717 Willow Dr', 'Sydney', 'NSW', '2000', 'Australia'), (30, 'Ben', 'King', 'benk@live.com', '555-0123', '1818 Birch Dr', 'Melbourne', 'VIC', '3000', 'Australia'), (31, 'Chloe', 'Green', 'chloeg@gmail.com', '555-1234', '1919 Oak Dr', 'Toronto', 'ON', 'M4B1B3', 'Canada'), (32, 'Daniel', 'Evans', 'daniele@yahoo.com', '555-2345', '2020 Cedar Dr', 'Vancouver', 'BC', 'V5K0A1', 'Canada'), (33, 'Ella', 'Collins', 'ellac@outlook.com', '555-3456', '2121 Redwood Dr', 'London', 'England', 'SW1A 1AA', 'UK'), (34, 'Finn', 'Morris', 'finnm@hotmail.com', '555-4567', '2222 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'), (35, 'Grace', 'Lee', 'gracel@live.com', '555-5678', '2323 Birch St', 'Berlin', 'BE', '10117', 'Germany'), (36, 'Holly', 'Martinez', 'hollym@gmail.com', '555-6789', '2424 Oak St', 'Munich', 'BY', '80331', 'Germany'), (37, 'Ian', 'Robinson', 'ianr@yahoo.com', '555-7890', '2525 Cedar St', 'Warsaw', 'WA', '00-001', 'Poland'), (38, 'Jasmine', 'Walker', 'jasminew@outlook.com', '555-8901', '2626 Redwood St', 'Lisbon', 'LI', '1100-148', 'Portugal'), (39, 'Kyle', 'Young', 'kyley@hotmail.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201','USA'), 
 (40, 'Liam', 'Harris', 'liamh@live.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220','USA');

 EXEC sp_rename 'Customers', 'Client';

 CREATE TABLE Products_Discounted ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Price DECIMAL(10, 2), Category VARCHAR(50), StockQuantity INT );

INSERT INTO Products_Discounted VALUES (1, 'Gaming Laptop', 950.00, 'Electronics', 25), (2, 'High-End Smartphone', 750.00, 'Electronics', 45), (3, 'Convertible Tablet', 350.00, 'Electronics', 35), (4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55), (5, 'Mechanical Keyboard', 45.00, 'Accessories', 90), (6, 'Wireless Mouse', 25.00, 'Accessories', 110), (7, 'Ergonomic Chair', 130.00, 'Furniture', 75), (8, 'Standing Desk', 190.00, 'Furniture', 70), (9, 'Luxury Pen', 4.50, 'Stationery', 280), (10, 'Leather Notebook', 9.00, 'Stationery', 480), (11, 'Laser Printer', 160.00, 'Electronics', 20), (12, 'DSLR Camera', 480.00, 'Electronics', 35), (13, 'LED Flashlight', 20.00, 'Tools', 190), (14, 'Designer Shirt', 28.00, 'Clothing', 140), (15, 'Slim Fit Jeans', 40.00, 'Clothing', 110), (16, 'Winter Jacket', 70.00, 'Clothing', 60), (17, 'Running Shoes', 55.00, 'Clothing', 90), (18, 'Wool Hat', 18.00, 'Accessories', 45), (19, 'Thermal Socks', 9.00, 'Clothing', 180), (20, 'Graphic T-Shirt', 22.00, 'Clothing', 140), (21, 'Desk Lamp', 55.00, 'Furniture', 35), (22, 'Marble Coffee Table', 95.00, 'Furniture', 30), (23, 'Hardcover Book', 13.00, 'Stationery', 230), (24, 'Persian Rug', 85.00, 'Furniture', 50), (25, 'Glass Cup', 4.50, 'Accessories', 470), (26, 'Leather Bag', 22.00, 'Accessories', 270), (27, 'Recliner Couch', 420.00, 'Furniture', 10), (28, 'Smart Fridge', 570.00, 'Electronics', 15), (29, 'Gas Stove', 460.00, 'Electronics', 12), (30, 'Compact Microwave', 100.00, 'Electronics', 20), (31, 'Split Air Conditioner', 320.00, 'Electronics', 8), (32, 'Front-Load Washing Machine', 410.00, 'Electronics', 12), (33, 'High-Efficiency Dryer', 370.00, 'Electronics', 8), (34, 'Ionic Hair Dryer', 27.00, 'Accessories', 90), (35, 'Steam Iron', 38.00, 'Electronics', 45), (36, 'Espresso Maker', 45.00, 'Electronics', 55), (37, 'Portable Blender', 32.00, 'Electronics', 35), (38, 'Cold Press Juicer', 50.00, 'Electronics', 28), (39, 'Smart Toaster', 36.00, 'Electronics', 65), (40, 'Compact Dishwasher', 470.00, 'Electronics', 18);
select ProductName from Products
union 
select ProductName from Products_Discounted

SELECT ProductID, ProductName
FROM Products
INTERSECT
SELECT ProductID, ProductName
FROM Products_Discounted

select DISTINCT FirstName,Lastname, Country   from client
select ProductID,ProductName,
Price ,
case 
when Price > 1000 then 'High'
WHEN Price <= 1000 then 'Low'
END as [pricerate]
from Products
SELECT  StockQuantity, ProductID,
    ProductName,
    StockQuantity,

IIF (StockQuantity > 100,'Yes','NO') as [yesno]

FROM Products_Discounted

CREATE TABLE OutOfStock ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Price DECIMAL(10, 2), Category VARCHAR(50), StockQuantity INT );

INSERT INTO OutOfStock VALUES (1, 'Gaming Console', 500.00, 'Electronics', 0), (2, 'Smartwatch', 250.00, 'Electronics', 0), (3, 'Wireless Earbuds', 150.00, 'Electronics', 0), (4, 'Projector', 700.00, 'Electronics', 0), (5, 'Mechanical Keyboard', 120.00, 'Accessories', 0), (6, 'Wireless Mouse', 45.00, 'Accessories', 0), (7, 'Office Chair', 250.00, 'Furniture', 0), (8, 'Standing Desk', 400.00, 'Furniture', 0), (9, 'Marker Set', 20.00, 'Stationery', 0), (10, 'Sketchbook', 35.00, 'Stationery', 0), (11, 'Scanner', 220.00, 'Electronics', 0), (12, 'Drone', 800.00, 'Electronics', 0), (13, 'Power Drill', 90.00, 'Tools', 0), (14, 'Sweater', 55.00, 'Clothing', 0), (15, 'Shorts', 30.00, 'Clothing', 0), (16, 'Raincoat', 75.00, 'Clothing', 0), (17, 'Sandals', 40.00, 'Clothing', 0), (18, 'Gloves', 15.00, 'Accessories', 0), (19, 'Necklace', 120.00, 'Accessories', 0), (20, 'Sunglasses', 80.00, 'Accessories', 0), (21, 'Bedside Lamp', 45.00, 'Furniture', 0), (22, 'Bookshelf', 150.00, 'Furniture', 0), (23, 'Dictionary', 25.00, 'Stationery', 0), (24, 'Wall Clock', 60.00, 'Furniture', 0), (25, 'Thermos', 35.00, 'Accessories', 0), (26, 'Backpack', 60.00, 'Accessories', 0), (27, 'Recliner', 550.00, 'Furniture', 0), (28, 'Freezer', 750.00, 'Electronics', 0), (29, 'Induction Cooktop', 300.00, 'Electronics', 0), (30, 'Oven', 600.00, 'Electronics', 0), (31, 'Humidifier', 90.00, 'Electronics', 0), (32, 'Vacuum Cleaner', 250.00, 'Electronics', 0), (33, 'Electric Kettle', 45.00, 'Electronics', 0), (34, 'Smart Light Bulb', 30.00, 'Accessories', 0), (35, 'Water Purifier', 120.00, 'Electronics', 0), (36, 'Popcorn Maker', 50.00, 'Electronics', 0), (37, 'Rice Cooker', 70.00, 'Electronics', 0), (38, 'Food Processor', 90.00, 'Electronics', 0), (39, 'Deep Fryer', 80.00, 'Electronics', 0), (40, 'Robot Vacuum', 500.00, 'Electronics', 0);
select StockQuantity from OutOfStock
union
select StockQuantity from Products


select * from Products
EXCEPT
select * from Products_Discounted

Create a conditional column using IIF that shows 'Expensive'
if the Price is greater than 1000, and 'Affordable' if less, from Products table.
select ProductName,Price,
IIF(PRICE>1000,'Expensive','Affordable') AS[PRICERATE]
from Products

CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50) NULL, LastName VARCHAR(50) NULL, DepartmentName VARCHAR(50), Salary DECIMAL(10, 2), HireDate DATE, Age INT, Email VARCHAR(100) NULL, Country VARCHAR(50) );

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, Country) VALUES (1, 'John', 'Doe', 'IT', 55000.00, '2020-01-01', 30, 'johndoe@example.com', 'USA'), (2, 'Jane', 'Smith', 'HR', 65000.00, '2019-03-15', 28, 'janesmith@example.com', 'USA'), (3, NULL, 'Johnson', 'Finance', 45000.00, '2021-05-10', 25, NULL, 'Canada'), (4, 'James', 'Brown', 'Marketing', 60000.00, '2018-07-22', 35, 'jamesbrown@example.com', 'UK'), (5, 'Patricia', NULL, 'HR', 70000.00, '2017-08-30', 40, NULL, 'USA'), (6, 'Michael', 'Miller', 'IT', 75000.00, '2020-12-12', 27, 'michaelm@example.com', 'Germany'), (7, 'Linda', NULL, 'Finance', 48000.00, '2016-11-02', 42, NULL, 'Canada'), (8, 'David', 'Moore', 'Marketing', 85000.00, '2021-09-01', 29, 'davidm@example.com', 'UK'), (9, 'Elizabeth', 'Taylor', 'HR', 60000.00, '2019-05-18', 31, 'elizabetht@example.com', 'USA'), (10, 'William', NULL, 'IT', 64000.00, '2020-04-10', 26, NULL, 'Germany'), (11, NULL, 'Thomas', 'Finance', 47000.00, '2017-01-25', 38, NULL, 'Canada'), (12, 'Joseph', 'Jackson', 'Marketing', 78000.00, '2016-09-30', 44, 'josephj@example.com', 'UK'), (13, 'Karen', 'White', 'HR', 59000.00, '2018-06-10', 33, 'karenw@example.com', 'USA'), (14, 'Steven', NULL, 'IT', 71000.00, '2021-07-15', 24, NULL, 'Germany'), (15, 'Nancy', 'Clark', 'Finance', 45000.00, '2020-02-20', 27, 'nancyc@example.com', 'Canada'), (16, 'George', 'Lewis', 'Marketing', 80000.00, '2019-11-10', 36, 'georgel@example.com', 'UK'), (17, 'Betty', NULL, 'HR', 55000.00, '2017-04-05', 41, NULL, 'USA'), (18, 'Samuel', 'Walker', 'IT', 72000.00, '2021-03-22', 23, 'samuelw@example.com', 'Germany'), (19, 'Helen', 'Hall', 'Finance', 49000.00, '2018-10-16', 34, 'helenh@example.com', 'Canada'), (20, NULL, 'Allen', 'Marketing', 90000.00, '2015-08-11', 50, NULL, 'UK'), (21, 'Betty', 'Young', 'HR', 53000.00, '2020-05-17', 28, 'bettyy@example.com', 'USA'), (22, 'Frank', NULL, 'IT', 67000.00, '2021-02-02', 26, 'frankk@example.com', 'Germany'), (23, 'Deborah', 'Scott', 'Finance', 47000.00, '2019-07-09', 29, NULL, 'Canada'), (24, 'Matthew', 'Green', 'Marketing', 76000.00, '2021-01-15', 30, 'matthewg@example.com', 'UK'), (25, NULL, 'Adams', 'HR', 54000.00, '2020-06-21', 27, NULL, 'USA'), (26, 'Paul', 'Nelson', 'IT', 71000.00, '2018-12-03', 37, 'pauln@example.com', 'Germany'), (27, 'Margaret', NULL, 'Finance', 46000.00, '2020-08-19', 25, 'margaretc@example.com', 'Canada'), (28, 'Anthony', 'Mitchell', 'Marketing', 82000.00, '2021-04-10', 29, NULL, 'UK'), (29, 'Lisa', 'Perez', 'HR', 60000.00, '2021-03-05', 24, 'lisap@example.com', 'USA'), (30, NULL, 'Roberts', 'IT', 69000.00, '2019-09-24', 32, NULL, 'Germany'), (31, 'Jessica', 'Gonzalez', 'Finance', 47000.00, '2017-12-13', 38, 'jessicag@example.com', 'Canada'), (32, 'Brian', NULL, 'Marketing', 85000.00, '2018-11-05', 35, NULL, 'UK'), (33, 'Dorothy', 'Evans', 'HR', 59000.00, '2019-06-11', 31, 'dorothye@example.com', 'USA'), (34, 'Matthew', 'Carter', 'IT', 70000.00, '2020-01-29', 29, 'matthewc@example.com', 'Germany'), (35, NULL, 'Martinez', 'Finance', 51000.00, '2021-06-06', 22, NULL, 'Canada'), (36, 'Daniel', 'Perez', 'Marketing', 83000.00, '2021-07-01', 30, 'danielp@example.com', 'UK'), (37, 'Catherine', 'Roberts', 'HR', 60000.00, '2020-09-19', 27, 'catheriner@example.com', 'USA'), (38, 'Ronald', NULL, 'IT', 68000.00, '2017-02-04', 39, NULL, 'Germany'), (39, 'Angela', 'Jenkins', 'Finance', 52000.00, '2018-04-23', 34, 'angelaj@example.com', 'Canada'), (40, 'Gary', 'Wright', 'Marketing', 87000.00, '2021-01-10', 29, NULL, 'UK');
SELECT * FROM Employees
WHERE AGE<25 AND Salary > 60000
UPDATE Employees
SET Salary =
UPDATE Employees
SET Salary = 
    CASE 
        WHEN DepartmentName = 'HR' OR EmployeeID = 5 THEN Salary * 1.10
        ELSE Salary
    END
WHERE 
    DepartmentName = 'HR' OR EmployeeID = 5;

SELECT ProductID, ProductName
FROM Products
INTERSECT
SELECT ProductID, ProductName
FROM Products_Discounted

Write a query that uses CASE to assign  if SaleAmount > 500, 'Mid Tier'
if SaleAmount BETWEEN 200 AND 500, and  otherwise. (From Sales table)
CREATE TABLE Sales ( SaleID INT PRIMARY KEY, ProductID INT, CustomerID INT, SaleDate DATE, SaleAmount DECIMAL(10, 2) );

INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES (1, 1, 1, '2023-01-01', 150.00), (2, 2, 2, '2023-01-02', 200.00), (3, 3, 3, '2023-01-03', 250.00), (4, 4, 4, '2023-01-04', 300.00), (5, 5, 5, '2023-01-05', 350.00), (6, 6, 6, '2023-01-06', 400.00), (7, 7, 7, '2023-01-07', 450.00), (8, 8, 8, '2023-01-08', 500.00), (9, 9, 9, '2023-01-09', 550.00), (10, 10, 10, '2023-01-10', 600.00), (11, 1, 1, '2023-01-11', 150.00), (12, 2, 2, '2023-01-12', 200.00), (13, 3, 3, '2023-01-13', 250.00), (14, 4, 4, '2023-01-14', 300.00), (15, 5, 5, '2023-01-15', 350.00), (16, 6, 6, '2023-01-16', 400.00), (17, 7, 7, '2023-01-17', 450.00), (18, 8, 8, '2023-01-18', 500.00), (19, 9, 9, '2023-01-19', 550.00), (20, 10, 10, '2023-01-20', 600.00), (21, 1, 2, '2023-01-21', 150.00), (22, 2, 3, '2023-01-22', 200.00), (23, 3, 4, '2023-01-23', 250.00), (24, 4, 5, '2023-01-24', 300.00), (25, 5, 6, '2023-01-25', 350.00), (26, 6, 7, '2023-01-26', 400.00), (27, 7, 8, '2023-01-27', 450.00), (28, 8, 9, '2023-01-28', 500.00), (29, 9, 10, '2023-01-29', 550.00), (30, 10, 1, '2023-01-30', 600.00), (31, 1, 2, '2023-02-01', 150.00), (32, 2, 3, '2023-02-02', 200.00), (33, 3, 4, '2023-02-03', 250.00), (34, 4, 5, '2023-02-04', 300.00), (35, 5, 6, '2023-02-05', 350.00), (36, 6, 7, '2023-02-06', 400.00), (37, 7, 8, '2023-02-07', 450.00), (38, 8, 9, '2023-02-08', 500.00), (39, 9, 10, '2023-02-09', 550.00), (40, 10, 1, '2023-02-10', 600.00);
select SaleAmount,
case when SaleAmount> 500 then 'Top Tier'
when SaleAmount < 500 and SaleAmount>200 then'Mid Tier'
ELSE'Low Tier'
END AS [SALERATE]
FROM Sales
CREATE TABLE Invoices ( InvoiceID INT PRIMARY KEY, CustomerID INT, InvoiceDate DATE, TotalAmount DECIMAL(10, 2) );

INSERT INTO Invoices (InvoiceID, CustomerID, InvoiceDate, TotalAmount) VALUES (1, 1, '2023-01-05', 150.00), (2, 2, '2023-01-07', 200.00), (3, 3, '2023-01-10', 250.00), (4, 4, '2023-01-12', 300.00), (5, 5, '2023-01-15', 350.00), (6, 6, '2023-01-18', 400.00), (7, 7, '2023-01-20', 450.00), (8, 8, '2023-01-23', 500.00), (9, 9, '2023-01-25', 550.00), (10, 10, '2023-01-28', 600.00), (11, 11, '2023-02-02', 150.00), (12, 12, '2023-02-04', 200.00), (13, 13, '2023-02-07', 250.00), (14, 14, '2023-02-09', 300.00), (15, 15, '2023-02-11', 350.00), (16, 16, '2023-02-13', 400.00), (17, 17, '2023-02-15', 450.00), (18, 18, '2023-02-17', 500.00), (19, 19, '2023-02-19', 550.00), (20, 20, '2023-02-21', 600.00), (21, 21, '2023-02-24', 150.00), (22, 22, '2023-02-26', 200.00), (23, 23, '2023-02-28', 250.00), (24, 24, '2023-03-02', 300.00), (25, 25, '2023-03-04', 350.00), (26, 26, '2023-03-06', 400.00), (27, 27, '2023-03-08', 450.00), (28, 28, '2023-03-10', 500.00), (29, 29, '2023-03-12', 550.00), (30, 30, '2023-03-14', 600.00), (31, 31, '2023-03-17', 150.00), (32, 32, '2023-03-19', 200.00), (33, 33, '2023-03-21', 250.00), (34, 34, '2023-03-23', 300.00), (35, 35, '2023-03-25', 350.00), (36, 36, '2023-03-27', 400.00), (37, 37, '2023-03-29', 450.00), (38, 38, '2023-03-31', 500.00), (39, 39, '2023-04-02', 550.00), (40, 40, '2023-04-04', 600.00);
CREATE TABLE Orders ( OrderID INT , CustomerID INT, ProductID INT, OrderDate DATE, Quantity INT, TotalAmount DECIMAL(10, 2),  Products VARCHAR(30) );
INSERT INTO Orders VALUES (1, 1, 2, '2023-05-14', 1, 800.00), (2, 2, 3, '2024-09-07', 2, 800.00), (3, 3, 4, '2022-11-22', 1, 250.00), (4, 4, 5, '2021-03-30', 3, 150.00), (5, 5, 6, '2025-07-19', 1, 30.00), (6, 6, 7, '2022-08-25', 2, 300.00), (7, 7, 8, '2024-06-10', 1, 200.00), (8, 8, 9, '2021-12-04', 4, 40.00), (9, 9, 10, '2023-02-18', 1, 10.00), (10, 10, 11, '2025-09-27', 2, 360.00), (11, 11, 12, '2023-10-11', 1, 500.00), (12, 12, 13, '2024-04-03', 1, 25.00), (13, 13, 14, '2022-07-29', 2, 60.00), (14, 14, 15, '2021-01-22', 3, 135.00), (15, 15, 16, '2025-11-15', 1, 80.00), (16, 16, 17, '2022-10-08', 1, 60.00), (17, 17, 18, '2023-06-21', 2, 40.00), (18, 18, 19, '2021-09-13', 5, 50.00), (19, 19, 20, '2025-03-05', 2, 50.00), (20, 20, 21, '2024-08-14', 1, 60.00), (21, 21, 22, '2022-12-01', 1, 100.00), (22, 22, 23, '2023-09-09', 1, 15.00), (23, 23, 24, '2021-07-18', 2, 180.00), (24, 24, 25, '2025-06-23', 3, 15.00), (25, 25, 26, '2023-03-12', 4, 100.00), (26, 26, 27, '2022-04-07', 1, 450.00), (27, 27, 28, '2024-11-30', 1, 600.00), (28, 28, 29, '2021-02-25', 1, 500.00), (29, 29, 30, '2025-05-28', 2, 240.00), (30, 30, 31, '2023-08-20', 1, 350.00), (31, 31, 32, '2022-01-17', 1, 450.00), (32, 32, 33, '2025-09-10', 1, 40.00), (33, 33, 34, '2021-04-04', 2, 100.00), (34, 34, 35, '2024-07-15', 3, 120.00), (35, 35, 36, '2022-10-31', 1, 60.00), (36, 36, 37, '2023-12-22', 1, 35.00), (37, 37, 38, '2021-06-06', 2, 110.00), (38, 38, 39, '2025-02-01', 1, 40.00), (39, 39, 40, '2023-11-26', 3, 120.00), (40, 40, 1, '2024-03-09', 1, 1200.00);
SELECT * FROM Invoitomces
SELECT c.CustomerID, c.CustomerName, c.Email
FROM Customers c
WHERE c.CustomerID IN (
    SELECT CustomerID FROM Orders
    EXCEPT
    SELECT CustomerID FROM Invoices
)
ORDER BY c.CustomerName;

Write a query that uses a CASE statement to 
determine the discount
percentage based on the quantity purchased. 
Use orders table. Result set should show customerid, 
quantity and discount percentage. The discount should be applied as follows: 
More than 1 item: 3% Between 1 and 3 items : 5% Otherwise: 7%
DROP TABLE ORDERS
CREATE TABLE Orders ( OrderID INT PRIMARY KEY, CustomerID INT, ProductID INT, OrderDate DATE, 
Quantity INT, TotalAmount DECIMAL(10, 2), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
FOREIGN KEY (ProductID) REFERENCES Products(ProductID) );

 INSERT INTO Orders VALUES (1, 1, 2, '2023-05-14', 1, 800.00), (2, 2, 3, '2024-09-07', 2, 800.00), 
 (3, 3, 4, '2022-11-22', 1, 250.00), (4, 4, 5, '2021-03-30', 3, 150.00),
 (5, 5, 6, '2025-07-19', 1, 30.00), (6, 6, 7, '2022-08-25', 2, 300.00), 
 (7, 7, 8, '2024-06-10', 1, 200.00), (8, 8, 9, '2021-12-04', 4, 40.00), 
 (9, 9, 10, '2023-02-18', 1, 10.00), (10, 10, 11, '2025-09-27', 2, 360.00), 
 (11, 11, 12, '2023-10-11', 1, 500.00), (12, 12, 13, '2024-04-03', 1, 25.00),
 (13, 13, 14, '2022-07-29', 2, 60.00), (14, 14, 15, '2021-01-22', 3, 135.00), 
 (15, 15, 16, '2025-11-15', 1, 80.00), (16, 16, 17, '2022-10-08', 1, 60.00), 
 (17, 17, 18, '2023-06-21', 2, 40.00), (18, 18, 19, '2021-09-13', 5, 50.00), 
 
 (19, 19, 20, '2025-03-05', 2, 50.00), (20, 20, 21, '2024-08-14', 1, 60.00),
 (21, 21, 22, '2022-12-01', 1, 100.00), (22, 22, 23, '2023-09-09', 1, 15.00), (23, 23, 24, '2021-07-18', 2, 180.00), (24, 24, 25, '2025-06-23', 3, 15.00), (25, 25, 26, '2023-03-12', 4, 100.00), (26, 26, 27, '2022-04-07', 1, 450.00), (27, 27, 28, '2024-11-30', 1, 600.00), (28, 28, 29, '2021-02-25', 1, 500.00), (29, 29, 30, '2025-05-28', 2, 240.00), (30, 30, 31, '2023-08-20', 1, 350.00), (31, 31, 32, '2022-01-17', 1, 450.00), (32, 32, 33, '2025-09-10', 1, 40.00), (33, 33, 34, '2021-04-04', 2, 100.00), (34, 34, 35, '2024-07-15', 3, 120.00), (35, 35, 36, '2022-10-31', 1, 60.00), (36, 36, 37, '2023-12-22', 1, 35.00), (37, 37, 38, '2021-06-06', 2, 110.00), (38, 38, 39, '2025-02-01', 1, 40.00), 
 (39, 39, 40, '2023-11-26', 3, 120.00), (40, 40, 1, '2024-03-09', 1, 1200.00);
 SELECT 
    CustomerID,
    Quantity,
    CASE 
        WHEN Quantity > 3 THEN '7%'
        WHEN Quantity BETWEEN 2 AND 3 THEN '5%'
        WHEN Quantity = 1 THEN '3%'
        ELSE 'No discount'
    END AS DiscountPercentage
FROM 
    Orders