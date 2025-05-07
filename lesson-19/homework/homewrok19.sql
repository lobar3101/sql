 create database homework19
 CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products VALUES
(1, 'Mouse', 20.99), (2, 'Keyboard', 35.50), (3, 'Monitor', 120.00),
(4, 'Printer', 85.75), (5, 'USB Cable', 5.00), (6, 'Laptop', 999.99),
(7, 'Speaker', 45.00), (8, 'Camera', 150.25), (9, 'Microphone', 60.00),
(10, 'Tablet', 299.00), (11, 'SSD', 89.99), (12, 'HDD', 55.49),
(13, 'RAM', 70.00), (14, 'Motherboard', 140.00), (15, 'Fan', 15.00),
(16, 'Power Supply', 80.00), (17, 'Case', 45.00), (18, 'Webcam', 40.00),
(19, 'WiFi Adapter', 25.00), (20, 'Stylus', 12.50);

CREATE TABLE ProductUpdates (
    ProductID INT,
    ProductName NVARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Assume ProductID 1-10 are updated, 21-25 are new
INSERT INTO ProductUpdates VALUES
(1, 'Mouse', 21.99), (2, 'Keyboard', 34.00), (3, 'Monitor', 119.00),
(4, 'Printer', 83.75), (5, 'USB Cable', 5.50), (6, 'Laptop', 950.99),
(7, 'Speaker', 46.00), (8, 'Camera', 149.00), (9, 'Mic', 59.00),
(10, 'Tablet', 310.00), (21, 'Smartwatch', 199.00), (22, 'Projector', 499.00),
(23, 'Charger', 18.00), (24, 'Dock Station', 99.99), (25, 'Pen Drive', 15.00);
select * from Products
 select * from  ProductUpdates

 MERGE Products AS TARGET
USING ProductUpdates AS SOURCE

ON TARGET.ProductID = SOURCE.ProductID

WHEN MATCHED
THEN
	UPDATE 
		SET TARGET.ProductName = SOURCE.ProductName,
			TARGET.price = SOURCE.price
			

WHEN NOT MATCHED BY TARGET --NOT IN EMPLOYEES
THEN
	INSERT (
		ProductID,
		ProductName,
		Price)
	VALUES
		(
		SOURCE.ProductID,
		SOURCE.ProductName,
		SOURCE.Price
		)
WHEN NOT MATCHED BY SOURCE
THEN
	DELETE;
	
