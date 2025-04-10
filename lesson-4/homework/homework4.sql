
crEATE DATABASE HOMEWORK_4

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate) VALUES
(1, 'John Doe', 1, 55000.00, '2020-01-01'),
(2, 'Jane Smith', 2, 65000.00, '2019-03-15'),
(3, 'Mary Johnson', 3, 45000.00, '2021-05-10'),
(4, 'James Brown', 1, 60000.00, '2018-07-22'),
(5, 'Patricia Davis', 4, 70000.00, '2017-08-30'),
(6, 'Michael Miller', 2, 75000.00, '2020-12-12'),
(7, 'Linda Wilson', 3, 48000.00, '2016-11-02'),
(8, 'David Moore', 4, 85000.00, '2021-09-01'),
(9, 'Elizabeth Taylor', 1, 60000.00, '2019-05-18'),
(10, 'William Anderson', 2, 64000.00, '2020-04-10'),
(11, 'Susan Thomas', 3, 47000.00, '2017-01-25'),
(12, 'Joseph Jackson', 4, 78000.00, '2016-09-30'),
(13, 'Karen White', 1, 59000.00, '2018-06-10'),
(14, 'Steven Harris', 2, 71000.00, '2021-07-15'),
(15, 'Nancy Clark', 3, 45000.00, '2020-02-20'),
(16, 'George Lewis', 4, 80000.00, '2019-11-10'),
(17, 'Betty Lee', 1, 55000.00, '2017-04-05'),
(18, 'Samuel Walker', 2, 72000.00, '2021-03-22'),
(19, 'Helen Hall', 3, 49000.00, '2018-10-16'),
(20, 'Charles Allen', 4, 90000.00, '2015-08-11'),
(21, 'Betty Young', 1, 53000.00, '2020-05-17'),
(22, 'Frank King', 2, 67000.00, '2021-02-02'),
(23, 'Deborah Scott', 3, 47000.00, '2019-07-09'),
(24, 'Matthew Green', 4, 76000.00, '2021-01-15'),
(25, 'Sandra Adams', 1, 54000.00, '2020-06-21'),
(26, 'Paul Nelson', 2, 71000.00, '2018-12-03'),
(27, 'Margaret Carter', 3, 46000.00, '2020-08-19'),
(28, 'Anthony Mitchell', 4, 82000.00, '2021-04-10'),
(29, 'Lisa Perez', 1, 60000.00, '2021-03-05'),
(30, 'Christopher Roberts', 2, 69000.00, '2019-09-24'),
(31, 'Jessica Gonzalez', 3, 47000.00, '2017-12-13'),
(32, 'Brian Moore', 4, 85000.00, '2018-11-05'),
(33, 'Dorothy Evans', 1, 59000.00, '2019-06-11'),
(34, 'Matthew Carter', 2, 70000.00, '2020-01-29'),
(35, 'Rachel Martinez', 3, 51000.00, '2021-06-06'),
(36, 'Daniel Perez', 4, 83000.00, '2021-07-01'),
(37, 'Catherine Roberts', 1, 60000.00, '2020-09-19'),
(38, 'Ronald Murphy', 2, 68000.00, '2017-02-04'),
(39, 'Angela Jenkins', 3, 52000.00, '2018-04-23'),
(40, 'Gary Wright', 4, 87000.00, '2021-01-10');

SELECT TOP 5 * FROM Employees;

SELECT * FROM Employees
WHERE  Salary >= 5000 and Department = 'HR'.


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Smartphone', 'Electronics', 799.99, 100),
(3, 'Tablet', 'Electronics', 499.99, 200),
(4, 'Wireless Mouse', 'Electronics', 29.99, 500),
(5, 'Keyboard', 'Electronics', 49.99, 300),
(6, 'Monitor', 'Electronics', 199.99, 150),
(7, 'Headphones', 'Electronics', 89.99, 400),
(8, 'Smartwatch', 'Electronics', 159.99, 50),
(9, 'Camera', 'Electronics', 499.99, 75),
(10, 'Smart TV', 'Electronics', 699.99, 30),
(11, 'Sofa', 'Furniture', 299.99, 20),
(12, 'Dining Table', 'Furniture', 399.99, 15),
(13, 'Office Chair', 'Furniture', 99.99, 50),
(14, 'Bookshelf', 'Furniture', 129.99, 35),
(15, 'Lamp', 'Furniture', 29.99, 60),
(16, 'Bed', 'Furniture', 499.99, 10),
(17, 'Refrigerator', 'Appliances', 799.99, 25),
(18, 'Washing Machine', 'Appliances', 699.99, 20),
(19, 'Air Conditioner', 'Appliances', 599.99, 10),
(20, 'Microwave', 'Appliances', 99.99, 100),
(21, 'Jacket', 'Clothing', 79.99, 100),
(22, 'Jeans', 'Clothing', 49.99, 150),
(23, 'T-Shirt', 'Clothing', 19.99, 200),
(24, 'Sweater', 'Clothing', 39.99, 120),
(25, 'Dress', 'Clothing', 59.99, 80),
(26, 'Shoes', 'Clothing', 89.99, 50),
(27, 'Boots', 'Clothing', 119.99, 60),
(28, 'Socks', 'Clothing', 5.99, 500),
(29, 'Scarf', 'Clothing', 14.99, 100),
(30, 'Hat', 'Clothing', 24.99, 75),
(31, 'Blender', 'Appliances', 49.99, 200),
(32, 'Toaster', 'Appliances', 29.99, 150),
(33, 'Electric Kettle', 'Appliances', 39.99, 300),
(34, 'Coffee Maker', 'Appliances', 89.99, 50),
(35, 'Hair Dryer', 'Beauty', 39.99, 120),
(36, 'Shampoo', 'Beauty', 19.99, 300),
(37, 'Conditioner', 'Beauty', 14.99, 400),
(38, 'Nail Polish', 'Beauty', 9.99, 200),
(39, 'Body Lotion', 'Beauty', 15.99, 150),
(40, 'Perfume', 'Beauty', 49.99, 60);

SELECT  ProductName
FROM Products
where Price BETWEEN 50 AND 100

 SELECT DISTINCT  Category , ProductName FROM Products 

SELECT  *
FROM Products
order by ProductName asc
SELECT DISTINCT ProductName
FROM Products;
SELECT  *
FROM Products
where Price> 100
SELECT  *
FROM Products
order by price asc

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255),
    ManagerID INT
);

INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID) VALUES
(1, 'Sales', 1),
(2, 'Marketing', 2),
(3, 'IT', 3),
(4, 'Human Resources', 4),
(5, 'Finance', 5),
(6, 'Operations', 6),
(7, 'Legal', 7),
(8, 'Customer Support', 8),
(9, 'Product Development', 9),
(10, 'Business Analysis', 10),
(11, 'Design', 1),
(12, 'Research and Development', 2),
(13, 'Purchasing', 3),
(14, 'Supply Chain', 4),
(15, 'Public Relations', 5),
(16, 'Quality Assurance', 6),
(17, 'Logistics', 7),
(18, 'Sales Support', 8),
(19, 'Marketing Communications', 9),
(20, 'Legal Affairs', 10),
(21, 'Product Management', 1),
(22, 'Training and Development', 2),
(23, 'Payroll', 3),
(24, 'Compensation', 4),
(25, 'Recruitment', 5),
(26, 'Executive Management', 6),
(27, 'Audit', 7),
(28, 'Corporate Strategy', 8),
(29, 'Customer Success', 9),
(30, 'Field Operations', 10),
(31, 'Business Intelligence', 1),
(32, 'Risk Management', 2),
(33, 'Treasury', 3),
(34, 'Internal Control', 4),
(35, 'Investor Relations', 5),
(36, 'E-commerce', 6),
(37, 'Real Estate', 7),
(38, 'Branding', 8),
(39, 'Content Creation', 9),
(40, 'Software Development', 10);

SELECT * FROM Departments
WHERE    DepartmentName = 'Human Resources';

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'UK'),
(3, 'Michael Johnson', 'Canada'),
(4, 'Sarah Brown', 'Australia'),
(5, 'David Green', 'USA'),
(6, 'Linda White', 'Canada'),
(7, 'James Black', 'UK'),
(8, 'Emily Blue', 'Australia'),
(9, 'Matthew Red', 'USA'),
(10, 'Olivia Yellow', 'Canada'),
(11, 'John Doe', 'Australia'),
(12, 'Jane Smith', 'Canada'),
(13, 'Michael Johnson', 'UK'),
(14, 'Sarah Brown', 'USA'),
(15, 'David Green', 'Canada'),
(16, 'Linda White', 'Australia'),
(17, 'James Black', 'USA'),
(18, 'Emily Blue', 'Canada'),
(19, 'Matthew Red', 'UK'),
(20, 'Olivia Yellow', 'Australia'),
(21, 'John Doe', 'Canada'),
(22, 'Jane Smith', 'Australia'),
(23, 'Michael Johnson', 'USA'),
(24, 'Sarah Brown', 'UK'),
(25, 'David Green', 'Australia'),
(26, 'Linda White', 'USA'),
(27, 'James Black', 'Canada'),
(28, 'Emily Blue', 'UK'),
(29, 'Matthew Red', 'Australia'),
(30, 'Olivia Yellow', 'USA'),
(31, 'John Doe', 'UK'),
(32, 'Jane Smith', 'USA'),
(33, 'Michael Johnson', 'Australia'),
(34, 'Sarah Brown', 'Canada'),
(35, 'David Green', 'UK'),
(36, 'Linda White', 'USA'),
(37, 'James Black', 'Australia'),
(38, 'Emily Blue', 'Canada'),
(39, 'Matthew Red', 'USA'),
(40, 'Olivia Yellow', 'UK');


select CustomerName from Customers
where CustomerName like '_A%'

CREATE TABLE CustomersEmail (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20)
);

INSERT INTO CustomersEmail(CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001'),
(3, 'Alice', 'Johnson', 'alicej@example.com', '555-3456', '789 Pine St', 'Chicago', 'IL', '60601'),
(4, 'Bob', 'Brown', 'bobbrown@example.com', '555-4567', '101 Maple St', 'Houston', 'TX', '77001'),
(5, 'Charlie', 'Davis', 'charliedavis@example.com', '555-5678', '202 Birch St', 'Phoenix', 'AZ', '85001'),
(6, 'David', 'Martinez', 'davidm@example.com', '555-6789', '303 Cedar St', 'San Diego', 'CA', '92101'),
(7, 'Emily', 'Garcia', 'emilyg@example.com', '555-7890', '404 Redwood St', 'Dallas', 'TX', '75201'),
(8, 'Frank', 'Hernandez', 'frankh@example.com', '555-8901', '505 Willow St', 'Austin', 'TX', '73301'),
(9, 'Grace', 'Lopez', 'gracel@example.com', '555-9012', '606 Aspen St', 'Miami', 'FL', '33101'),
(10, 'Helen', 'Gonzalez', 'heleng@example.com', '555-0123', '707 Fir St', 'San Francisco', 'CA', '94101'),
(11, 'Irene', 'Perez', 'irenep@example.com', '555-1234', '808 Maple Ave', 'Seattle', 'WA', '98101'),
(12, 'Jack', 'Wilson', 'jackw@example.com', '555-2345', '909 Oak Ave', 'Denver', 'CO', '80201'),
(13, 'Kim', 'Anderson', 'kima@example.com', '555-3456', '111 Pine Ave', 'Boston', 'MA', '02101'),
(14, 'Liam', 'Thomas', 'liamt@example.com', '555-4567', '222 Cedar Ave', 'Atlanta', 'GA', '30301'),
(15, 'Megan', 'Taylor', 'megant@example.com', '555-5678', '333 Redwood Ave', 'Washington', 'DC', '20001'),
(16, 'Nathan', 'Moore', 'nathanm@example.com', '555-6789', '444 Willow Ave', 'Detroit', 'MI', '48201'),
(17, 'Olivia', 'Jackson', 'oliviaj@example.com', '555-7890', '555 Birch Ave', 'Portland', 'OR', '97201'),
(18, 'Paul', 'White', 'paulw@example.com', '555-8901', '666 Maple Blvd', 'Minneapolis', 'MN', '55101'),
(19, 'Quincy', 'Lee', 'quincyl@example.com', '555-9012', '777 Oak Blvd', 'Charlotte', 'NC', '28201'),
(20, 'Rachel', 'Harris', 'rachelh@example.com', '555-0123', '888 Pine Blvd', 'Las Vegas', 'NV', '89101'),
(21, 'Sam', 'Clark', 'samc@example.com', '555-1234', '999 Cedar Blvd', 'Orlando', 'FL', '32801'),
(22, 'Tina', 'Allen', 'tinaallen@example.com', '555-2345', '1010 Redwood Blvd', 'New Orleans', 'LA', '70112'),
(23, 'Ursula', 'Scott', 'ursulas@example.com', '555-3456', '1111 Willow Blvd', 'Tampa', 'FL', '33601'),
(24, 'Victor', 'Adams', 'victora@example.com', '555-4567', '1212 Birch Blvd', 'Cleveland', 'OH', '44101'),
(25, 'Walter', 'Baker', 'walterb@example.com', '555-5678', '1313 Oak Blvd', 'Columbus', 'OH', '43201'),
(26, 'Xander', 'Nelson', 'xandern@example.com', '555-6789', '1414 Cedar Blvd', 'Indianapolis', 'IN', '46201'),
(27, 'Yvonne', 'Carter', 'yvonnec@example.com', '555-7890', '1515 Maple Dr', 'Kansas City', 'MO', '64101'),
(28, 'Zane', 'Mitchell', 'zanem@example.com', '555-8901', '1616 Redwood Dr', 'Salt Lake City', 'UT', '84101'),
(29, 'Anna', 'Roberts', 'annar@example.com', '555-9012', '1717 Willow Dr', 'Birmingham', 'AL', '35203'),
(30, 'Ben', 'King', 'benk@example.com', '555-0123', '1818 Birch Dr', 'Nashville', 'TN', '37201'),
(31, 'Chloe', 'Green', 'chloeg@example.com', '555-1234', '1919 Oak Dr', 'Boulder', 'CO', '80301'),
(32, 'Daniel', 'Evans', 'daniele@example.com', '555-2345', '2020 Cedar Dr', 'Sacramento', 'CA', '94201'),
(33, 'Ella', 'Collins', 'ellac@example.com', '555-3456', '2121 Redwood Dr', 'Louisville', 'KY', '40202'),
(34, 'Finn', 'Morris', 'finnm@example.com', '555-4567', '2222 Willow St', 'Cincinnati', 'OH', '45202'),
(35, 'Grace', 'Lee', 'gracel@example.com', '555-5678', '2323 Birch St', 'Baltimore', 'MD', '21201'),
(36, 'Holly', 'Martinez', 'hollym@example.com', '555-6789', '2424 Oak St', 'St. Louis', 'MO', '63101'),
(37, 'Ian', 'Robinson', 'ianr@example.com', '555-7890', '2525 Cedar St', 'Fort Worth', 'TX', '76101'),
(38, 'Jasmine', 'Walker', 'jasminew@example.com', '555-8901', '2626 Redwood St', 'Raleigh', 'NC', '27601'),
(39, 'Kyle', 'Young', 'kyley@example.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201'),
(40, 'Liam', 'Harris', 'liamh@example.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220');
select isnull (Email,'noemail@example.com') as Email from CustomersEmail


SELECT  top 10 *
FROM Products
order by price desc

 select * from Employees
select COALESCE(Name, 'Nonnull')  from Employees


select * from Products
select distinct Category, Price from  Products



Write a query that filters the Employees table to show employees 
whose Age is either between 30 and 40 or Department = 'Marketing'.

SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Age,
    Department
FROM 
    Employees
WHERE 
    (Age BETWEEN 30 AND 40) 
    OR 
    (Department = 'Marketing');

Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, 
SELECT * FROM Employees

SELECT 
    *
FROM 
    Employees
ORDER BY 
    Salary DESC
OFFSET 11 ROWS
FETCH NEXT 20 ROWS ONLY;

select * from Products
where ( Price <= 1000) and (StockQuantity > 50)
order by StockQuantity asc
select * from Products
where ProductName like '_e%'

select * from Departments
WHERE 
    DepartmentName IN ('HR', 'IT', 'Finance');


Write a query that uses the ANY operator to find employees 
who earn more than the average salary of all employees.
select name as [workername], Salary from employees
where Salary>any(select avg(salary) from employees)




.
CREATE TABLE Customerslocation (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Customerslocation(CustomerID, CustomerName, Country) VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'UK'),
(3, 'Michael Johnson', 'Canada'),
(4, 'Sarah Brown', 'Australia'),
(5, 'David Green', 'USA'),
(6, 'Linda White', 'Canada'),
(7, 'James Black', 'UK'),
(8, 'Emily Blue', 'Australia'),
(9, 'Matthew Red', 'USA'),
(10, 'Olivia Yellow', 'Canada'),
(11, 'John Doe', 'Australia'),
(12, 'Jane Smith', 'Canada'),
(13, 'Michael Johnson', 'UK'),
(14, 'Sarah Brown', 'USA'),
(15, 'David Green', 'Canada'),
(16, 'Linda White', 'Australia'),
(17, 'James Black', 'USA'),
(18, 'Emily Blue', 'Canada'),
(19, 'Matthew Red', 'UK'),
(20, 'Olivia Yellow', 'Australia'),
(21, 'John Doe', 'Canada'),
(22, 'Jane Smith', 'Australia'),
(23, 'Michael Johnson', 'USA'),
(24, 'Sarah Brown', 'UK'),
(25, 'David Green', 'Australia'),
(26, 'Linda White', 'USA'),
(27, 'James Black', 'Canada'),
(28, 'Emily Blue', 'UK'),
(29, 'Matthew Red', 'Australia'),
(30, 'Olivia Yellow', 'USA'),
(31, 'John Doe', 'UK'),
(32, 'Jane Smith', 'USA'),
(33, 'Michael Johnson', 'Australia'),
(34, 'Sarah Brown', 'Canada'),
(35, 'David Green', 'UK'),
(36, 'Linda White', 'USA'),
(37, 'James Black', 'Australia'),
(38, 'Emily Blue', 'Canada'),
(39, 'Matthew Red', 'USA'),
(40, 'Olivia Yellow', 'UK');
select * from Customerslocation
ORDER BY 
    Country ASC          
  

  CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);

  select top 10 SaleAmount from Sales
order by SaleAmount DESC


select 
COALESCE(name, null) AS FullNameEmployees
 from Employees

 select * from products


SELECT DISTINCT
    Category,
    ProductName,
    Price
FROM
    Products
WHERE
    Price > 50
ORDER BY
    Category,
    ProductName,
    Price

select ProductName from Products
where price=avg(price)*100 
SELECT 
    ProductID,
    ProductName,
    Price
FROM 
    Products
WHERE 
    Price BETWEEN 
        (SELECT AVG(Price) * 0.9 FROM Products) 
        AND 
        (SELECT AVG(Price) * 1.1 FROM Products)
ORDER BY 
    Price;

Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.

select* from CustomersEmail
select  CustomerID,
    FirstName,
    LastName,
    Email from CustomersEmail where Email like '%@gmail.com'


Write a query that uses the ALL operator to find employees 
whose salary is greater than all employees in the 'Sales' department.
CREATE TABLE EmployeeDepartments (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentName VARCHAR(100)
);

INSERT INTO EmployeeDepartments (EmployeeID, EmployeeName, DepartmentName) VALUES
(1, 'John Doe', 'HR'),
(2, 'Jane Smith', 'IT'),
(3, 'Michael Johnson', 'Sales'),
(4, 'Sarah Brown', 'Marketing'),
(5, 'David Green', 'Finance'),
(6, 'Linda White', 'IT'),
(7, 'James Black', 'Sales'),
(8, 'Emily Blue', 'HR'),
(9, 'Matthew Red', 'Marketing'),
(10, 'Olivia Yellow', 'Finance'),
(11, 'John Doe', 'Finance'),
(12, 'Jane Smith', 'Sales'),
(13, 'Michael Johnson', 'IT'),
(14, 'Sarah Brown', 'HR'),
(15, 'David Green', 'Sales'),
(16, 'Linda White', 'Marketing'),
(17, 'James Black', 'Finance'),
(18, 'Emily Blue', 'IT'),
(19, 'Matthew Red', 'HR'),
(20, 'Olivia Yellow', 'Sales'),
(21, 'John Doe', 'Marketing'),
(22, 'Jane Smith', 'HR'),
(23, 'Michael Johnson', 'Finance'),
(24, 'Sarah Brown', 'IT'),
(25, 'David Green', 'HR'),
(26, 'Linda White', 'Sales'),
(27, 'James Black', 'Marketing'),
(28, 'Emily Blue', 'Finance'),
(29, 'Matthew Red', 'HR'),
(30, 'Olivia Yellow', 'IT'),
(31, 'John Doe', 'Sales'),
(32, 'Jane Smith', 'Marketing'),
(33, 'Michael Johnson', 'HR'),
(34, 'Sarah Brown', 'Finance'),
(35, 'David Green', 'Marketing'),
(36, 'Linda White', 'HR'),
(37, 'James Black', 'IT'),
(38, 'Emily Blue', 'Finance'),
(39, 'Matthew Red', 'Sales'),
(40, 'Olivia Yellow', 'HR');
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    Department
FROM 
    Employees
WHERE 
    Salary > ALL (
        SELECT Salary
        FROM Employees
        WHERE Department = 'Sales'
    );


Use ORDER BY with OFFSET-FETCH to show employees with the highest salaries,
displaying 10 employees at a time (pagination).
SELECT 
    *
FROM 
    Employees
	ORDER BY 
    Salary DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(50)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status) VALUES
(1, 1, '2025-01-10', 1500.00, 'Shipped'),
(2, 2, '2025-01-12', 1200.00, 'Pending'),
(3, 3, '2025-01-15', 250.00, 'Delivered'),
(4, 4, '2025-01-18', 800.00, 'Cancelled'),
(5, 5, '2025-01-20', 950.00, 'Shipped'),
(6, 6, '2025-01-22', 1450.00, 'Shipped'),
(7, 7, '2025-01-25', 320.00, 'Delivered'),
(8, 8, '2025-01-28', 500.00, 'Pending'),
(9, 9, '2025-01-30', 1100.00, 'Shipped'),
(10, 10, '2025-02-02', 1300.00, 'Shipped'),
(11, 11, '2025-02-05', 1700.00, 'Delivered'),
(12, 12, '2025-02-07', 800.00, 'Pending'),
(13, 13, '2025-02-09', 600.00, 'Delivered'),
(14, 14, '2025-02-12', 950.00, 'Shipped'),
(15, 15, '2025-02-15', 1500.00, 'Pending'),
(16, 16, '2025-02-17', 1250.00, 'Shipped'),
(17, 17, '2025-02-20', 2000.00, 'Shipped'),
(18, 18, '2025-02-22', 2200.00, 'Pending'),
(19, 19, '2025-02-25', 1800.00, 'Delivered'),
(20, 20, '2025-02-28', 2100.00, 'Cancelled'),
(21, 21, '2025-03-02', 800.00, 'Shipped'),
(22, 22, '2025-03-04', 900.00, 'Delivered'),
(23, 23, '2025-03-06', 300.00, 'Shipped'),
(24, 24, '2025-03-09', 850.00, 'Shipped'),
(25, 25, '2025-03-12', 750.00, 'Delivered'),
(26, 26, '2025-03-15', 500.00, 'Pending'),
(27, 27, '2025-03-17', 1000.00, 'Shipped'),
(28, 28, '2025-03-20', 450.00, 'Cancelled'),
(29, 29, '2025-03-22', 1250.00, 'Pending'),
(30, 30, '2025-03-25', 300.00, 'Shipped'),
(31, 31, '2025-03-28', 600.00, 'Delivered'),
(32, 32, '2025-03-30', 950.00, 'Shipped'),
(33, 33, '2025-04-02', 700.00, 'Pending'),
(34, 34, '2025-04-05', 1200.00, 'Delivered'),
(35, 35, '2025-04-07', 1500.00, 'Shipped'),
(36, 36, '2025-04-10', 2500.00, 'Pending'),
(37, 37, '2025-04-12', 1000.00, 'Delivered'),
(38, 38, '2025-04-15', 1200.00, 'Shipped'),
(39, 39, '2025-04-18', 1800.00, 'Pending'),
(40, 40, '2025-04-20', 1600.00, 'Shipped');

Write a query that filters the Orders table for orders placed in 
the last 30 days using BETWEEN and CURRENT_DATE.
select * from Orders
SELECT 
  *
FROM 
    Orders
WHERE 
    OrderDate BETWEEN CURRENT_DATE - 30 AND CURRENT_DATE
ORDER BY 
    OrderDate DESC;

Use ANY with a subquery to select all employees who earn more than the average salary
for their department.   



















