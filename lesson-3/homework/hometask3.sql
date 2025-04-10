create database hometask3
BULK INSERT is a SQL Server command used to import large volumes of data from a file into a table efficiently.

Purpose:

Optimized for high-speed data loading (faster than row-by-row INSERT).
Reduces network overhead by loading directly from a file.
Supports various file formats (CSV, TXT, etc.).
Example:
BULK INSERT Products
FROM 'C:\Data\products.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2  
);
2. Four File Formats Supported by SQL Server
CSV (Comma-Separated Values)
Example: product_id,product_name,price
TXT (Tab-Delimited Text)
Example: 1 Laptop 999.99
Excel (XLS/XLSX)
Requires SQL Server Integration Services (SSIS) or linked servers.
JSON/XML
For semi-structured data
3.CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);
4. Insert Three Records

INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
    (1, 'Laptop', 999.99),
    (2, 'Mouse', 19.99),
    (3, 'Keyboard', 49.99);
5. NULL vs. NOT NULL
NULL	NOT NULL
Represents missing/unknown data.	
Column must always have a value.
6.Add UNIQUE Constraint to ProductName
create TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
7.SQL Comment Example
 -- Retrieve all products priced above $50
SELECT * FROM Products WHERE Price > 50;
8. Create Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);
Key Points:

PRIMARY KEY = Unique + NOT NULL.

UNIQUE allows NULLs (unless combined with NOT NULL).

9. Purpose of IDENTITY Column
Definition:
An IDENTITY column auto-generates incremental values 
Example:
CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,  
    OrderDate DATE DEFAULT GETDATE()
);

1. BULK INSERT to Import Data

BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = '\t',  -- Tab delimiter
    ROWTERMINATOR = '\n',    -- Newline separator
    FIRSTROW = 2             -- Skip header row
);

2. Add FOREIGN KEY to Reference Categories

ALTER TABLE Products
ADD CategoryID INT,
CONSTRAINT FK_Product_Category 
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

3. PRIMARY KEY vs. UNIQUE KEY
1. PRIMARY KEY
Characteristics:
Uniqueness: Must contain unique values (no duplicates)

Non-null: Cannot contain NULL values

Single per table: Only one PRIMARY KEY per table

Clustered index: In most DBMS, creates a clustered index by default

Identity: Often used as the tables main identifier

2. UNIQUE KEY
Characteristics:
Uniqueness: Must contain unique values (no duplicates)

Nullable: Can contain NULL values (but only one NULL in some databases)

Multiple allowed: Can have multiple UNIQUE constraints per table

Non-clustered index: Creates a non-clustered index by default

Alternative uniqueness: Used for columns that need uniqueness but arent identifiers

4. Add CHECK Constraint for Price

ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);
5. Add NOT NULL Stock Column

ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
6. Replace NULLs with ISNULL

-- Replace NULL CategoryID with 0
SELECT 
    ProductID,
    ProductName,
    ISNULL(CategoryID, 0) AS CategoryID  -- Converts NULL to 0
FROM 
    Products;
7. FOREIGN KEY Purpose & Usage
Purpose:
Enforces referential integrity between tables.
Prevents orphaned records (e.g., a product with a non-existent category).

1. Create Customers Table with CHECK Constraint (Age >= 18)

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    RegistrationDate DATE DEFAULT GETDATE()
);
2. Create Table with IDENTITY Column (Start=100, Increment=10)

CREATE TABLE Transactions (
    TransactionID INT IDENTITY(100, 10) PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL,
    TransactionDate DATETIME DEFAULT GETDATE(),
    Description VARCHAR(200)
);
3. Create OrderDetails Table with Composite PRIMARY KEY

CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    UnitPrice DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (OrderID, ProductID),  -- Composite key
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
4. COALESCE vs. ISNULL for Handling NULL Values
ISNULL (SQL Server specific, 2 parameters)

-- Replaces NULL with specified value
SELECT 
    ProductName,
    ISNULL(Description, 'No description available') AS Description
FROM Products;
COALESCE (ANSI standard, multiple parameters)

-- Returns first non-NULL value in the list
SELECT 
    ProductName,
    COALESCE(Description, ShortDescription, 'N/A') AS ProductInfo
FROM Products;
5. Create Employees Table with PRIMARY KEY and UNIQUE KEY

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,  -- Ensures no duplicate emails
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) CHECK (Salary > 0)
);
6. Create FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2),
    CONSTRAINT FK_Order_Customer
    FOREIGN KEY (CustomerID) 
    REFERENCES Customers(CustomerID)
    ON DELETE CASCADE   -- Deletes orders when customer is deleted
    ON UPDATE CASCADE   -- Updates CustomerID in orders when changed in Customers
);

