﻿create database homework11
 CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, FirstName VARCHAR(100), LastName VARCHAR(100), Email VARCHAR(100), Phone VARCHAR(50), Address VARCHAR(255), City VARCHAR(100), State VARCHAR(100), PostalCode VARCHAR(20), Country VARCHAR(100) );

 INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country) VALUES (1, 'John', 'Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'), (2, 'Jane', 'Smith', 'janesmith@yahoo.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA'), (3, 'Alice', 'Johnson', 'alicej@outlook.com', '555-3456', '789 Pine St', 'Toronto', 'ON', 'M4B1B3', 'Canada'), (4, 'Bob', 'Brown', 'bobbrown@hotmail.com', '555-4567', '101 Maple St', 'Vancouver', 'BC', 'V5K0A1', 'Canada'), (5, 'Charlie', 'Davis', 'charliedavis@gmail.com', '555-5678', '202 Birch St', 'Sydney', 'NSW', '2000', 'Australia'), (6, 'David', 'Martinez', 'davidm@live.com', '555-6789', '303 Cedar St', 'Melbourne', 'VIC', '3000', 'Australia'), (7, 'Emily', 'Garcia', 'emilyg@yahoo.com', '555-7890', '404 Redwood St', 'London', 'England', 'SW1A 1AA', 'UK'), (8, 'Frank', 'Hernandez', 'frankh@outlook.com', '555-8901', '505 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'), (9, 'Grace', 'Lopez', 'gracel@gmail.com', '555-9012', '606 Aspen St', 'Birmingham', 'England', 'B1 1AA', 'UK'), (10, 'Helen', 'Gonzalez', 'heleng@yahoo.com', '555-0123', '707 Fir St', 'Berlin', 'BE', '10117', 'Germany'), (11, 'Irene', 'Perez', 'irenep@hotmail.com', '555-1234', '808 Maple Ave', 'Munich', 'BY', '80331', 'Germany'), (12, 'Jack', 'Wilson', 'jackw@live.com', '555-2345', '909 Oak Ave', 'Hamburg', 'HH', '20095', 'Germany'), (13, 'Kim', 'Anderson', 'kima@gmail.com', '555-3456', '111 Pine Ave', 'Paris', 'Île-de-France', '75001', 'France'), (14, 'Liam', 'Thomas', 'liamt@yahoo.com', '555-4567', '222 Cedar Ave', 'Lyon', 'Auvergne-Rhône-Alpes', '69001', 'France'), (15, 'Megan', 'Taylor', 'megant@outlook.com', '555-5678', '333 Redwood Ave', 'Marseille', 'Provence-Alpes-Côte Azur', '13001', 'France'), (16, 'Nathan', 'Moore', 'nathanm@hotmail.com', '555-6789', '444 Willow Ave', 'Tokyo', 'TK', '100-0001', 'Japan'), (17, 'Olivia', 'Jackson', 'oliviaj@gmail.com', '555-7890', '555 Birch Ave', 'Osaka', 'OS', '530-0001', 'Japan'), (18, 'Paul', 'White', 'paulw@yahoo.com', '555-8901', '666 Maple Blvd', 'Kyoto', 'KY', '600-8001', 'Japan'), (19, 'Quincy', 'Lee', 'quincyl@outlook.com', '555-9012', '777 Oak Blvd', 'Seoul', 'SO', '04547', 'South Korea'), (20, 'Rachel', 'Harris', 'rachelh@hotmail.com', '555-0123', '888 Pine Blvd', 'Busan', 'BU', '48058', 'South Korea'), (21, 'Sam', 'Clark', 'samc@gmail.com', '555-1234', '999 Cedar Blvd', 'Incheon', 'IC', '22382', 'South Korea'), (22, 'Tina', 'Allen', 'tinaallen@yahoo.com', '555-2345', '1010 Redwood Blvd', 'Mexico City', 'CMX', '01000', 'Mexico'), (23, 'Ursula', 'Scott', 'ursulas@outlook.com', '555-3456', '1111 Willow Blvd', 'Guadalajara', 'JAL', '44100', 'Mexico'), (24, 'Victor', 'Adams', 'victora@hotmail.com', '555-4567', '1212 Birch Blvd', 'Monterrey', 'NLE', '64000', 'Mexico'), (25, 'Walter', 'Baker', 'walterb@live.com', '555-5678', '1313 Oak Blvd', 'New York', 'NY', '10001', 'USA'), (26, 'Xander', 'Nelson', 'xandern@gmail.com', '555-6789', '1414 Cedar Blvd', 'Los Angeles', 'CA', '90001', 'USA'), (27, 'Yvonne', 'Carter', 'yvonnec@yahoo.com', '555-7890', '1515 Maple Dr', 'Chicago', 'IL', '60601', 'USA'), (28, 'Zane', 'Mitchell', 'zanem@outlook.com', '555-8901', '1616 Redwood Dr', 'Houston', 'TX', '77001', 'USA'), (29, 'Anna', 'Roberts', 'annar@hotmail.com', '555-9012', '1717 Willow Dr', 'Sydney', 'NSW', '2000', 'Australia'), (30, 'Ben', 'King', 'benk@live.com', '555-0123', '1818 Birch Dr', 'Melbourne', 'VIC', '3000', 'Australia'), (31, 'Chloe', 'Green', 'chloeg@gmail.com', '555-1234', '1919 Oak Dr', 'Toronto', 'ON', 'M4B1B3', 'Canada'), (32, 'Daniel', 'Evans', 'daniele@yahoo.com', '555-2345', '2020 Cedar Dr', 'Vancouver', 'BC', 'V5K0A1', 'Canada'), (33, 'Ella', 'Collins', 'ellac@outlook.com', '555-3456', '2121 Redwood Dr', 'London', 'England', 'SW1A 1AA', 'UK'), (34, 'Finn', 'Morris', 'finnm@hotmail.com', '555-4567', '2222 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'), (35, 'Grace', 'Lee', 'gracel@live.com', '555-5678', '2323 Birch St', 'Berlin', 'BE', '10117', 'Germany'), (36, 'Holly', 'Martinez', 'hollym@gmail.com', '555-6789', '2424 Oak St', 'Munich', 'BY', '80331', 'Germany'), (37, 'Ian', 'Robinson', 'ianr@yahoo.com', '555-7890', '2525 Cedar St', 'Warsaw', 'WA', '00-001', 'Poland'), (38, 'Jasmine', 'Walker', 'jasminew@outlook.com', '555-8901', '2626 Redwood St', 'Lisbon', 'LI', '1100-148', 'Portugal'), (39, 'Kyle', 'Young', 'kyley@hotmail.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201','USA'), (40, 'Liam', 'Harris', 'liamh@live.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220','USA');
CREATE TABLE Orders ( OrderID INT PRIMARY KEY, CustomerID INT, ProductID INT NULL, OrderDate DATE, Quantity INT, TotalAmount DECIMAL(10, 2) );
 INSERT INTO Orders VALUES (102, 15, 2, '2023-05-14', 1, 800.00), (205, 8, 3, '2024-09-07', 2, 800.00), (311, 22, 4, '2022-11-22', 1, 250.00), (421, 33, 5, '2021-03-30', 3, 150.00), (523, 40, NULL, '2025-07-19', 1, 30.00), (610, 19, 7, '2022-08-25', 2, 300.00), (728, 14, 8, '2024-06-10', 1, 200.00), (812, 27, 9, '2021-12-04', 4, 40.00), (915, 6, 10, '2023-02-18', 1, 10.00), (1003, 31, NULL, '2025-09-27', 2, 360.00), (1108, 12, 12, '2023-10-11', 1, 500.00), (1205, 29, 13, '2024-04-03', 1, 25.00), (1354, 4, 14, '2022-07-29', 2, 60.00), (1411, 9, 15, '2021-01-22', 3, 135.00), (1533, 23, NULL, '2025-11-15', 1, 80.00), (1622, 36, 17, '2022-10-08', 1, 60.00), (1710, 1, 18, '2023-06-21', 2, 40.00), (1845, 20, 19, '2021-09-13', 5, 50.00), (1908, 37, 20, '2025-03-05', 2, 50.00), (2042, 10, 21, '2024-08-14', 1, 60.00), (2157, 13, 22, '2022-12-01', 1, 100.00), (2268, 35, 23, '2023-09-09', 1, 15.00), (2349, 7, 24, '2021-07-18', 2, 180.00), (2481, 17, NULL, '2025-06-23', 3, 15.00), (2594, 5, 26, '2023-03-12', 4, 100.00), (2633, 26, 27, '2022-04-07', 1, 450.00), (2782, 39, 28, '2024-11-30', 1, 600.00), (2845, 24, 29, '2021-02-25', 1, 500.00), (2903, 2, 30, '2025-05-28', 2, 240.00), (3011, 16, 31, '2023-08-20', 1, 350.00), (3152, 21, 32, '2022-01-17', 1, 450.00), (3227, 38, 33, '2025-09-10', 1, 40.00), (3368, 11, 34, '2021-04-04', 2, 100.00), (3419, 3, 35, '2024-07-15', 3, 120.00), (3551, 18, 36, '2022-10-31', 1, 60.00), (3684, 32, 37, '2023-12-22', 1, 35.00), (3749, 28, 38, '2021-06-06', 2, 110.00), (3872, 25, NULL, '2025-02-01', 1, 40.00), (3911, 30, 40, '2023-11-26', 3, 120.00), (4057, 22, 1, '2024-03-09', 1, 1200.00);
select * from Orders
select c.FirstName,c.LastName, o.orderDate, o.customerID from Customers c
full join Orders o on o.customerID= c.customerID
where o.OrderDate >'2022-01-01'

Return: EmployeeName, DepartmentName
Task: Display the names of employees who work in either the  or Marketing department.
Tables Used: Employees, Departments
CREATE TABLE Departments ( DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(100) );
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES (1, 'Sales'), (2, 'Human Resources'), (3, 'IT'), (4, 'Marketing'), (5, 'Finance');
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, Name VARCHAR(100), DepartmentID INT, Salary DECIMAL(10, 2), HireDate DATE, ManagerID INT, FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID) );

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate, ManagerID) VALUES (1, 'John Doe', 1, 55000.00, '2020-01-01', NULL),
(2, 'Jane Smith', 2, 65000.00, '2019-03-15', 1), (3, 'Mary Johnson', 3, 45000.00, '2021-05-10', 2), (4, 'James Brown', 5, 60000.00, '2018-07-22', 1), (5, 'Patricia Davis', 4, 70000.00, '2017-08-30', 4), (6, 'Michael Miller', 2, 75000.00, '2020-12-12', 2), (7, 'Linda Wilson', 3, 48000.00, '2016-11-02', 3), (8, 'David Moore', 4, 85000.00, '2021-09-01', 5), (9, 'Elizabeth Taylor', 1, 60000.00, '2019-05-18', 1), (10, 'William Anderson', 2, 64000.00, '2020-04-10', 2), (11, 'Susan Thomas', 3, 47000.00, '2017-01-25', 3), (12, 'Joseph Jackson', 4, 78000.00, '2016-09-30', 5), (13, 'Karen White', 1, 59000.00, '2018-06-10', 9), (14, 'Steven Harris', 2, 71000.00, '2021-07-15', 6), (15, 'Nancy Clark', 3, 45000.00, '2020-02-20', 7), (16, 'George Lewis', 4, 80000.00, '2019-11-10', 8), (17, 'Betty Lee', 5, 55000.00, '2017-04-05', 4), (18, 'Samuel Walker', 2, 72000.00, '2021-03-22', 6), (19, 'Helen Hall', 3, 49000.00, '2018-10-16', 7), (20, 'Charles Allen', 4, 90000.00, '2015-08-11', 12), (21, 'Betty Young', 1, 53000.00, '2020-05-17', 9), (22, 'Frank King', 2, 67000.00, '2021-02-02', 10), (23, 'Deborah Scott', 3, 47000.00, '2019-07-09', 11), (24, 'Matthew Green', 4, 76000.00, '2021-01-15', 16), (25, 'Sandra Adams', 1, 54000.00, '2020-06-21', 21), (26, 'Paul Nelson', 2, 71000.00, '2018-12-03', 10), (27, 'Margaret Carter', 3, 46000.00, '2020-08-19', 19), (28, 'Anthony Mitchell', 4, 82000.00, '2021-04-10', 16), (29, 'Lisa Perez', 1, 60000.00, '2021-03-05', 21), (30, 'Christopher Roberts', 2, 69000.00, '2019-09-24', 22), (31, 'Jessica Gonzalez', 3, 47000.00, '2017-12-13', 23), (32, 'Brian Moore', 5, 85000.00, '2018-11-05', 17), (33, 'Dorothy Evans', 1, 59000.00, '2019-06-11', 25), (34, 'Matthew Carter', 2, 70000.00, '2020-01-29', 26), (35, 'Rachel Martinez', 3, 51000.00, '2021-06-06', 27), (36, 'Daniel Perez', 4, 83000.00, '2021-07-01', 28), (37, 'Catherine Roberts', 1, 60000.00, '2020-09-19', 29), (38, 'Ronald Murphy', 2, 68000.00, '2017-02-04', 30), (39, 'Angela Jenkins', 3, 52000.00, '2018-04-23', 31), (40, 'Gary Wright', 4, 87000.00, '2021-01-10', 36), (41, 'Kevin Turner', 6, 55000.00, '2022-02-14', NULL), (42, 'Laura Phillips', 7, 62000.00, '2023-05-22', 41), (43, 'Eric Collins', 8, 58000.00, '2020-10-30', 41), (44, 'Megan Edwards', 9, 70000.00, '2019-11-25', 41);
select  d.DepartmentName, e.DepartmentID, e.Name as EmployeeName from Departments d
left join Employees e on  e.DepartmentID= d.DepartmentID
where d.DepartmentName = 'Sales' 
or
      d.DepartmentName = 'Marketing'

Return: DepartmentName, TopEmployeeName, MaxSalary
Task: For each department, show the name of the employee who earns the highest salary.
Tables Used: Departments, Employees (as a derived table)

select top 1 d.DepartmentName, e.DepartmentID, e.Name, max(e.Salary) as highsalary  from Departments d
join Employees e on  e.DepartmentID=d.DepartmentID 
group by d.DepartmentName, e.DepartmentID,e.Name, e.Salary

select * from Employees
select * from Departments

Return: CustomerName, OrderID, OrderDate
Task: List all customers from the USA who placed orders in the year 2023.
Tables Used: , 
 CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, FirstName VARCHAR(100), LastName VARCHAR(100), Email VARCHAR(100), Phone VARCHAR(50), Address VARCHAR(255), City VARCHAR(100), State VARCHAR(100), PostalCode VARCHAR(20), Country VARCHAR(100) );
 INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country) VALUES (1, 'John', 'Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'), (2, 'Jane', 'Smith', 'janesmith@yahoo.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA'), (3, 'Alice', 'Johnson', 'alicej@outlook.com', '555-3456', '789 Pine St', 'Toronto', 'ON', 'M4B1B3', 'Canada'), (4, 'Bob', 'Brown', 'bobbrown@hotmail.com', '555-4567', '101 Maple St', 'Vancouver', 'BC', 'V5K0A1', 'Canada'), (5, 'Charlie', 'Davis', 'charliedavis@gmail.com', '555-5678', '202 Birch St', 'Sydney', 'NSW', '2000', 'Australia'), (6, 'David', 'Martinez', 'davidm@live.com', '555-6789', '303 Cedar St', 'Melbourne', 'VIC', '3000', 'Australia'), (7, 'Emily', 'Garcia', 'emilyg@yahoo.com', '555-7890', '404 Redwood St', 'London', 'England', 'SW1A 1AA', 'UK'), (8, 'Frank', 'Hernandez', 'frankh@outlook.com', '555-8901', '505 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'), (9, 'Grace', 'Lopez', 'gracel@gmail.com', '555-9012', '606 Aspen St', 'Birmingham', 'England', 'B1 1AA', 'UK'), (10, 'Helen', 'Gonzalez', 'heleng@yahoo.com', '555-0123', '707 Fir St', 'Berlin', 'BE', '10117', 'Germany'), (11, 'Irene', 'Perez', 'irenep@hotmail.com', '555-1234', '808 Maple Ave', 'Munich', 'BY', '80331', 'Germany'), (12, 'Jack', 'Wilson', 'jackw@live.com', '555-2345', '909 Oak Ave', 'Hamburg', 'HH', '20095', 'Germany'), (13, 'Kim', 'Anderson', 'kima@gmail.com', '555-3456', '111 Pine Ave', 'Paris', 'Île-de-France', '75001', 'France'), (14, 'Liam', 'Thomas', 'liamt@yahoo.com', '555-4567', '222 Cedar Ave', 'Lyon', 'Auvergne-Rhône-Alpes', '69001', 'France'), (15, 'Megan', 'Taylor', 'megant@outlook.com', '555-5678', '333 Redwood Ave', 'Marseille', 'Provence-Alpes-Côte Azur', '13001', 'France'), (16, 'Nathan', 'Moore', 'nathanm@hotmail.com', '555-6789', '444 Willow Ave', 'Tokyo', 'TK', '100-0001', 'Japan'), (17, 'Olivia', 'Jackson', 'oliviaj@gmail.com', '555-7890', '555 Birch Ave', 'Osaka', 'OS', '530-0001', 'Japan'), (18, 'Paul', 'White', 'paulw@yahoo.com', '555-8901', '666 Maple Blvd', 'Kyoto', 'KY', '600-8001', 'Japan'), (19, 'Quincy', 'Lee', 'quincyl@outlook.com', '555-9012', '777 Oak Blvd', 'Seoul', 'SO', '04547', 'South Korea'), (20, 'Rachel', 'Harris', 'rachelh@hotmail.com', '555-0123', '888 Pine Blvd', 'Busan', 'BU', '48058', 'South Korea'), (21, 'Sam', 'Clark', 'samc@gmail.com', '555-1234', '999 Cedar Blvd', 'Incheon', 'IC', '22382', 'South Korea'), (22, 'Tina', 'Allen', 'tinaallen@yahoo.com', '555-2345', '1010 Redwood Blvd', 'Mexico City', 'CMX', '01000', 'Mexico'), (23, 'Ursula', 'Scott', 'ursulas@outlook.com', '555-3456', '1111 Willow Blvd', 'Guadalajara', 'JAL', '44100', 'Mexico'), (24, 'Victor', 'Adams', 'victora@hotmail.com', '555-4567', '1212 Birch Blvd', 'Monterrey', 'NLE', '64000', 'Mexico'), (25, 'Walter', 'Baker', 'walterb@live.com', '555-5678', '1313 Oak Blvd', 'New York', 'NY', '10001', 'USA'), (26, 'Xander', 'Nelson', 'xandern@gmail.com', '555-6789', '1414 Cedar Blvd', 'Los Angeles', 'CA', '90001', 'USA'), (27, 'Yvonne', 'Carter', 'yvonnec@yahoo.com', '555-7890', '1515 Maple Dr', 'Chicago', 'IL', '60601', 'USA'), (28, 'Zane', 'Mitchell', 'zanem@outlook.com', '555-8901', '1616 Redwood Dr', 'Houston', 'TX', '77001', 'USA'), (29, 'Anna', 'Roberts', 'annar@hotmail.com', '555-9012', '1717 Willow Dr', 'Sydney', 'NSW', '2000', 'Australia'), (30, 'Ben', 'King', 'benk@live.com', '555-0123', '1818 Birch Dr', 'Melbourne', 'VIC', '3000', 'Australia'), (31, 'Chloe', 'Green', 'chloeg@gmail.com', '555-1234', '1919 Oak Dr', 'Toronto', 'ON', 'M4B1B3', 'Canada'), (32, 'Daniel', 'Evans', 'daniele@yahoo.com', '555-2345', '2020 Cedar Dr', 'Vancouver', 'BC', 'V5K0A1', 'Canada'), (33, 'Ella', 'Collins', 'ellac@outlook.com', '555-3456', '2121 Redwood Dr', 'London', 'England', 'SW1A 1AA', 'UK'), (34, 'Finn', 'Morris', 'finnm@hotmail.com', '555-4567', '2222 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'), (35, 'Grace', 'Lee', 'gracel@live.com', '555-5678', '2323 Birch St', 'Berlin', 'BE', '10117', 'Germany'), (36, 'Holly', 'Martinez', 'hollym@gmail.com', '555-6789', '2424 Oak St', 'Munich', 'BY', '80331', 'Germany'), (37, 'Ian', 'Robinson', 'ianr@yahoo.com', '555-7890', '2525 Cedar St', 'Warsaw', 'WA', '00-001', 'Poland'), (38, 'Jasmine', 'Walker', 'jasminew@outlook.com', '555-8901', '2626 Redwood St', 'Lisbon', 'LI', '1100-148', 'Portugal'), (39, 'Kyle', 'Young', 'kyley@hotmail.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201','USA'), (40, 'Liam', 'Harris', 'liamh@live.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220','USA');
select c.Country, o.OrderDate,o.CustomerID  from Customers c
LEFT join Orders o on c.CustomerID=o.CustomerID
where o.OrderDate   BETWEEN '2023-01-01' AND '2023-12-31'
AND c.Country='USA'


SELECT o.customerid, count(o.orderid) as totalorder, c.firstname, c.lastname FROM Customers c
join orders o  on o.customerid=o.customerid
group by  o.customerid, o.orderid, c.firstname, c.lastname

Return: ProductName, SupplierName
Task: Display the names of products that are supplied by either Gadget Supplies or Clothing Mart.
Tables Used: Products, Suppliers
CREATE TABLE Suppliers ( SupplierID INT PRIMARY KEY, SupplierName VARCHAR(100), ContactName VARCHAR(100), Email VARCHAR(150) );
INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Email) VALUES (1, 'Tech Distributors', 'Alice Johnson', 'alice@techdist.com'), (2, 'Gadget Supplies', 'Bob Smith', 'bob@gadgetsupplies.com'), (3, 'Office Essentials', 'Charlie Davis', 'charlie@officeessentials.com'), (4, 'Furniture Hub', 'Diana Adams', 'diana@furniturehub.com'), (5, 'Clothing Mart', 'Ethan Clark', 'ethan@clothingmart.com'), (6, 'Car Parts', 'Tom Hanks', 'tom@carparts.com'), (7, 'Toys', 'John Adams', 'john@toysff.com');
CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Price DECIMAL(10, 2), Category VARCHAR(50), StockQuantity INT, SupplierID INT, FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID) );
INSERT INTO Products (ProductID, ProductName, Price, Category, StockQuantity, SupplierID) VALUES (1, 'Laptop', 1200.00, 'Electronics', 30, 1), (2, 'Smartphone', 800.00, 'Electronics', 50, 1), (3, 'Tablet', 400.00, 'Electronics', 40, 1), (4, 'Monitor', 250.00, 'Electronics', 60, 1), (5, 'Keyboard', 50.00, 'Accessories', 100, 2), (6, 'Mouse', 30.00, 'Accessories', 120, 2), (7, 'Chair', 150.00, 'Furniture', 80, 4), (8, 'Desk', 200.00, 'Furniture', 75, 4), (9, 'Pen', 5.00, 'Stationery', 300, 3), (10, 'Notebook', 10.00, 'Stationery', 500, 3), (11, 'Printer', 180.00, 'Electronics', 25, 1), (12, 'Camera', 500.00, 'Electronics', 40, 1), (13, 'Flashlight', 25.00, 'Tools', 200, 2), (14, 'Shirt', 30.00, 'Clothing', 150, 5), (15, 'Jeans', 45.00, 'Clothing', 120, 5), (16, 'Jacket', 80.00, 'Clothing', 70, 5), (17, 'Shoes', 60.00, 'Clothing', 100, 5), (18, 'Hat', 20.00, 'Accessories', 50, 2), (19, 'Socks', 10.00, 'Clothing', 200, 5), (20, 'T-Shirt', 25.00, 'Clothing', 150, 5), (21, 'Lamp', 60.00, 'Furniture', 40, 4), (22, 'Coffee Table', 100.00, 'Furniture', 35, 4), (23, 'Book', 15.00, 'Stationery', 250, 3), (24, 'Rug', 90.00, 'Furniture', 60, 4), (25, 'Cup', 5.00, 'Accessories', 500, 2), (26, 'Bag', 25.00, 'Accessories', 300, 2), (27, 'Couch', 450.00, 'Furniture', 15, 4), (28, 'Fridge', 600.00, 'Electronics', 20, 1), (29, 'Stove', 500.00, 'Electronics', 15, 1), (30, 'Microwave', 120.00, 'Electronics', 25, 1), (31, 'Air Conditioner', 350.00, 'Electronics', 10, 1), (32, 'Washing Machine', 450.00, 'Electronics', 15, 1), (33, 'Dryer', 400.00, 'Electronics', 10, 1), (34, 'Hair Dryer', 30.00, 'Accessories', 100, 2), (35, 'Iron', 40.00, 'Electronics', 50, 1), (36, 'Coffee Maker', 50.00, 'Electronics', 60, 1), (37, 'Blender', 35.00, 'Electronics', 40, 1), (38, 'Juicer', 55.00, 'Electronics', 30, 1), (39, 'Toaster', 40.00, 'Electronics', 70, 1), (40, 'Dishwasher', 500.00, 'Electronics', 20, 1);
select * from Products
select * from Suppliers
SELECT
    p.productname
FROM
    products p
JOIN
    suppliers s ON p.supplierid = s.supplierid
WHERE
    s.suppliername = 'Gadget Supplies'
    OR s.suppliername = 'Clothing Mart'
GROUP BY
    p.productname

select c.LastName, c.FirstName, o.OrderDate, o.OrderID, o.CustomerID   from Customers c
left join Orders o on c.CustomerID=o.CustomerID

 
select * from Orders
select o.Totalamount,o.OrderID,o.CustomerID, c.firstname, c.lastname  from Customers c
left join Orders o on o.CustomerID=c.CustomerID
where o.Totalamount> 500

Return: ProductName, SaleDate, SaleAmount
Task: List product sales where the sale was made in 2022 or the sale amount exceeded 400.
Tables Used: Products, 

SELECT 
    p.productid,
    p.productname,
    s.saleid,
    s.saledate,
    s.Saleamount
FROM 
    products p
JOIN 
    sales s ON p.productid = s.productid
WHERE s.saledate between '2022-01-01' and '2022-12-31'
    s.saleamount > 400
select * from Sales
select * from Products
CREATE TABLE Sales ( SaleID INT PRIMARY KEY, ProductID INT, CustomerID INT, SaleDate DATE, SaleAmount DECIMAL(10, 2) );

INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES (1, 1, 1, '2023-01-01', 150.00), (2, 2, 2, '2023-01-02', 200.00), (3, 3, 3, '2023-01-03', 250.00), (4, 4, 4, '2023-01-04', 300.00), (5, 5, 5, '2023-01-05', 350.00), (6, 6, 6, '2023-01-06', 400.00), (7, 7, 7, '2023-01-07', 450.00), (8, 8, 8, '2023-01-08', 500.00), (9, 9, 9, '2023-01-09', 550.00), (10, 10, 10, '2023-01-10', 600.00), (11, 1, 1, '2023-01-11', 150.00), (12, 2, 2, '2023-01-12', 200.00), (13, 3, 3, '2023-01-13', 250.00), (14, 4, 4, '2023-01-14', 300.00), (15, 5, 5, '2023-01-15', 350.00), (16, 6, 6, '2023-01-16', 400.00), (17, 7, 7, '2023-01-17', 450.00), (18, 8, 8, '2023-01-18', 500.00), (19, 9, 9, '2023-01-19', 550.00), (20, 10, 10, '2023-01-20', 600.00), (21, 1, 2, '2023-01-21', 150.00), (22, 2, 3, '2023-01-22', 200.00), (23, 3, 4, '2023-01-23', 250.00), (24, 4, 5, '2023-01-24', 300.00), (25, 5, 6, '2023-01-25', 350.00), (26, 6, 7, '2023-01-26', 400.00), (27, 7, 8, '2023-01-27', 450.00), (28, 8, 9, '2023-01-28', 500.00), (29, 9, 10, '2023-01-29', 550.00), (30, 10, 1, '2023-01-30', 600.00), (31, 1, 2, '2023-02-01', 150.00), (32, 2, 3, '2023-02-02', 200.00), (33, 3, 4, '2023-02-03', 250.00), (34, 4, 5, '2023-02-04', 300.00), (35, 5, 6, '2023-02-05', 350.00), (36, 6, 7, '2023-02-06', 400.00), (37, 7, 8, '2023-02-07', 450.00), (38, 8, 9, '2023-02-08', 500.00), (39, 9, 10, '2023-02-09', 550.00), (40, 10, 1, '2023-02-10', 600.00);

select * from Products
select * from Sales
select  COALESCE(SUM(s.saleamount), 0) AS total_sales_amount, s.ProductID, p.ProductName from  Products p
left join Sales s on s.ProductID=p.ProductID
group by  s.ProductID, p.ProductName
select * from Employees
select * from Departments
select d.DepartmentName, e.name, e.salary, e.employeeid from  Departments d
join Employees e on d.DepartmentID=e.DepartmentID
where d.DepartmentName='Human Resources'
and e.salary > 50000




 
select p.ProductID, s.saledate, p.stockQuantity, p.productName from Products p
join Sales s on p.ProductID=s.ProductID
where p.stockQuantity> 50
and s.saledate between '2023-01-01' and '2023-12-31'

select * from Employees
select d.DepartmentID,d.DepartmentName, e.Hiredate from Departments d
JOIN 
    Employees e ON e.departmentid = d.departmentid
WHERE 
    d.departmentname = 'Sales'
    OR e.hiredate > '2020-12-31'

select O.CustomerID, O.OrderID, O.OrderDate, C.address, C.Country from Customers c
join Orders o on O.CustomerID=c.CustomerID
where C.Country= 'USA'
AND c.address LIKE '____%'





select p.ProductID, p.category, s.saleamount, s.SaleID, p.ProductName  from Products p
join Sales s on p.ProductID= s.ProductID
WHERE 
    p.category = 'Electronics' OR s.SaleAmount > 350

select c.categoryname, p.Productname, count (p.ProductID) as numberproducts  from Products P
JOIN Categories c on p.category=c.categoryname
group by c.categoryname, p.Productname


 CREATE TABLE Categories ( CategoryID INT PRIMARY KEY IDENTITY, CategoryName VARCHAR(50) UNIQUE );

 INSERT INTO Categories (CategoryName) VALUES ('Electronics'), ('Accessories'), ('Furniture'), ('Stationery'), ('Tools'), ('Clothing');

select * from Customers
select * from Orders
SELECT 
    o.orderid,
    o.orderdate,
    o.totalamount,
    c.customerid,
    c.FirstName, c.LastName,
    c.city
FROM 
    orders o
JOIN 
    customers c ON o.customerid = c.customerid
WHERE 
    c.city = 'Los Angeles'
    AND o.totalamount > 300






Return: EmployeeName, DepartmentName
Task: Display employees who are in the HR or Finance department, or whose name contains at least 4 vowels.
Tables Used: , 
select* from  Employees
select* from Departments
SELECT 
    e.employeeid,
    e.name,
    d.departmentname
FROM 
    employees e
JOIN 
    departments d ON e.departmentid = d.departmentid
WHERE 
    d.departmentname IN ('HR', 'Finance')
    OR e.name like '[auio]%'
 
select * from Sales
select * from Products
SELECT 
    p.productid,
    p.productname,
    p.price,
    s.saleid,
    p.stockquantity
FROM 
    products p
JOIN 
    sales s ON p.productid = s.productid
WHERE 
    p.price > 500
    AND p.stockquantity > 100


SELECT 
    e.employeeid,
    e.name,
    d.departmentname,
    e.salary
FROM 
    employees e
JOIN 
    departments d ON e.departmentid = d.departmentid
WHERE 
    d.departmentname IN ('Sales', 'Marketing')
    AND e.salary > 60000


	select * from Departments
	select * from Employees