create database homework2
1. Create Employees Table

CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);
2. Insert Records Using Different Approaches
Single-row insert

INSERT INTO Employees (EmpID, Name, Salary) 
VALUES (1, 'John Smith', 50000.00);

INSERT INTO Employees (EmpID, Name, Salary) 
VALUES 
    (2, 'Emily Davis', 65000.50),
    (3, 'Michael Johnson', 72000.75);
3. Update Salary for EmpID = 1

UPDATE Employees 
SET Salary = 55000.00 
WHERE EmpID = 1;
4. Delete Record Where EmpID = 2

DELETE FROM Employees 
WHERE EmpID = 2;
5. Demonstrate DELETE, TRUNCATE, and DROP
Create test table

CREATE TABLE TestTable (ID INT, Data VARCHAR(20));
INSERT INTO TestTable VALUES (1, 'Record1'), (2, 'Record2');
DELETE (removes specific rows, can be rolled back)

DELETE FROM TestTable WHERE ID = 1;
-- Row with ID=1 is removed, table structure remains
TRUNCATE (removes all rows quickly, cant be rolled back)

TRUNCATE TABLE TestTable;
-- All rows removed, table structure remains
DROP (removes entire table structure)

DROP TABLE TestTable;
-- Table and all its data are completely removed
6. Modify Name Column to VARCHAR(100)

ALTER TABLE Employees 
ALTER COLUMN Name VARCHAR(100);
7. Add Department Column

ALTER TABLE Employees 
ADD Department VARCHAR(50);
8. Change Salary Data Type to FLOAT

ALTER TABLE Employees 
ALTER COLUMN Salary FLOAT;
9. Create Departments Table

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
10. Remove All Records from Employees Without Deleting Structure

TRUNCATE TABLE Employees;

1. Insert five records into Departments using INSERT INTO SELECT


INSERT INTO Employees (EmpID, Name, Salary, Department)
VALUES 
    (4, 'Sarah Williams', 48000.00, 'HR'),
    (5, 'David Lee', 52000.00, 'IT'),
    (6, 'Lisa Chen', 58000.00, 'Finance'),
    (7, 'Robert Brown', 62000.00, 'Marketing'),
    (8, 'Jennifer Taylor', 55000.00, 'Operations');
INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 
    ROW_NUMBER() OVER (ORDER BY Department) AS DepartmentID,
    Department
FROM 
    (SELECT DISTINCT Department FROM Employees WHERE Department IS NOT NULL) AS Dept;
2. Update Department of employees with Salary > 50000 to 'Management'

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 50000;
3. Remove all employees but keep table structure

TRUNCATE TABLE Employees;

DELETE FROM Employees;

4. Drop the Department column from Employees

ALTER TABLE Employees
DROP COLUMN Department;
5. Rename Employees table to StaffMembers

EXEC sp_rename 'Employees', 'StaffMembers';

6. Completely remove Departments table

DROP TABLE Departments;

1. Create Products Table with CHECK Constraint

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price > 0),
    Manufacturer VARCHAR(100),
    DateAdded DATE DEFAULT GETDATE()
);
2. Add StockQuantity Column with DEFAULT

ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;
3. Rename Category to ProductCategory

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
4. Insert 5 Records

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Manufacturer, StockQuantity)
VALUES
    (1, 'Wireless Mouse', 'Electronics', 29.99, 'Logitech', 100),
    (2, 'Mechanical Keyboard', 'Electronics', 89.99, 'Corsair', 75),
    (3, 'Desk Lamp', 'Furniture', 45.50, 'IKEA', DEFAULT),
    (4, 'Notebook', 'Stationery', 4.99, 'Moleskine', 200),
    (5, 'Coffee Mug', 'Kitchen', 12.75, 'Starbucks', 150);
5. Create Backup Table with SELECT INTO

SELECT * INTO Products_Backup FROM Products;
6. Rename Products to Inventory

EXEC sp_rename 'Products', 'Inventory';
7. Change Price Data Type to FLOAT

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
8. Add IDENTITY Column (ProductCode)

ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);