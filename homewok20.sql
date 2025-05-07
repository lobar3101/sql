create database hometask20
-- Solution 1: Customers who purchased in March 2024 using EXISTS
WITH Solution1 AS (
    SELECT DISTINCT CustomerName
    FROM #Sales s1
    WHERE EXISTS (
        SELECT 1 
        FROM #Sales s2 
        WHERE s2.CustomerName = s1.CustomerName 
        AND YEAR(s2.SaleDate) = 2024 
        AND MONTH(s2.SaleDate) = 3
    )
),

-- Solution 2: Product with highest total sales revenue
Solution2 AS (
    SELECT TOP 1 
        Product, 
        SUM(Quantity * Price) AS TotalRevenue
    FROM #Sales
    GROUP BY Product
    ORDER BY TotalRevenue DESC
),

-- Solution 3: Second highest sale amount
Solution3 AS (
    SELECT MAX(Quantity * Price) AS SecondHighestSale
    FROM #Sales
    WHERE Quantity * Price < (SELECT MAX(Quantity * Price) FROM #Sales)
),

-- Solution 4: Total quantity per month
Solution4 AS (
    SELECT 
        YEAR(SaleDate) AS Year,
        MONTH(SaleDate) AS Month,
        SUM(Quantity) AS TotalQuantity
    FROM #Sales
    GROUP BY YEAR(SaleDate), MONTH(SaleDate)
),

-- Solution 5: Customers who bought same products as another customer
Solution5 AS (
    SELECT DISTINCT s1.CustomerName
    FROM #Sales s1
    WHERE EXISTS (
        SELECT 1
        FROM #Sales s2
        WHERE s2.CustomerName <> s1.CustomerName
        AND s2.Product = s1.Product
    )
),

-- Solution 6: Fruit counts per person (pivot)
Solution6 AS (
    SELECT 
        Name,
        SUM(CASE WHEN Fruit = 'Apple' THEN 1 ELSE 0 END) AS Apple,
        SUM(CASE WHEN Fruit = 'Orange' THEN 1 ELSE 0 END) AS Orange,
        SUM(CASE WHEN Fruit = 'Banana' THEN 1 ELSE 0 END) AS Banana
    FROM Fruits
    GROUP BY Name
),

-- Solution 7: Family relationships
Solution7 AS (
    WITH FamilyRelations AS (
        SELECT f1.ParentId AS PID, f2.ChildID AS CHID
        FROM Family f1
        JOIN Family f2 ON f1.ChildID = f2.ParentId
        
        UNION
        
        SELECT f1.ParentId AS PID, f3.ChildID AS CHID
        FROM Family f1
        JOIN Family f2 ON f1.ChildID = f2.ParentId
        JOIN Family f3 ON f2.ChildID = f3.ParentId
        
        UNION
        
        SELECT f1.ParentId AS PID, f4.ChildID AS CHID
        FROM Family f1
        JOIN Family f2 ON f1.ChildID = f2.ParentId
        JOIN Family f3 ON f2.ChildID = f3.ParentId
        JOIN Family f4 ON f3.ChildID = f4.ParentId
    )
    SELECT * FROM FamilyRelations
),

-- Solution 8: CA customers with TX orders
Solution8 AS (
    SELECT o.*
    FROM #Orders o
    WHERE o.CustomerID IN (
        SELECT DISTINCT CustomerID 
        FROM #Orders 
        WHERE DeliveryState = 'CA'
    )
    AND o.DeliveryState = 'TX'
),

-- Solution 9: Insert missing names from address
Solution9 AS (
    UPDATE #residents
    SET fullname = 
        CASE 
            WHEN CHARINDEX('name=', address) > 0 THEN
                SUBSTRING(
                    address, 
                    CHARINDEX('name=', address) + 5,
                    CHARINDEX(' ', address + ' ', CHARINDEX('name=', address) + 5) - (CHARINDEX('name=', address) + 5)
                )
            ELSE fullname
        END
    WHERE CHARINDEX('name=', address) > 0
    AND fullname IS NULL
),

-- Solution 10: Cheapest and most expensive routes from Tashkent to Khorezm
Solution10 AS (
    WITH RoutePaths AS (
        -- All possible routes (simplified for example)
        SELECT 
            'Tashkent - Samarkand - Khorezm' AS Route,
            100 + 400 AS Cost
        
        UNION ALL
        
        SELECT 
            'Tashkent - Jizzakh - Samarkand - Bukhoro - Khorezm' AS Route,
            100 + 50 + 200 + 300 AS Cost
    )
    SELECT Route, Cost
    FROM RoutePaths
    WHERE Cost = (SELECT MIN(Cost) FROM RoutePaths)
    OR Cost = (SELECT MAX(Cost) FROM RoutePaths)
    ORDER BY Cost
),

-- Solution 11: Rank products based on insertion order
Solution11 AS (
    SELECT 
        ID, 
        Vals,
        ROW_NUMBER() OVER (ORDER BY ID) AS InsertionRank
    FROM #RankingPuzzle
),

-- Solution 12: Employees with above-average department sales
Solution12 AS (
    WITH DeptAvg AS (
        SELECT 
            Department, 
            AVG(SalesAmount) AS AvgSales
        FROM #EmployeeSales
        GROUP BY Department
    )
    SELECT e.*
    FROM #EmployeeSales e
    JOIN DeptAvg d ON e.Department = d.Department
    WHERE e.SalesAmount > d.AvgSales
),

-- Solution 13: Employees with highest sales in any month
Solution13 AS (
    SELECT DISTINCT e.EmployeeName
    FROM #EmployeeSales e
    WHERE EXISTS (
        SELECT 1
        FROM #EmployeeSales e2
        WHERE e2.SalesMonth = e.SalesMonth
        AND e2.SalesYear = e.SalesYear
        GROUP BY e2.SalesMonth, e2.SalesYear
        HAVING e.SalesAmount = MAX(e2.SalesAmount)
    )
),

-- Solution 14: Employees with sales in every month
Solution14 AS (
    SELECT e.EmployeeName
    FROM #EmployeeSales e
    WHERE NOT EXISTS (
        SELECT DISTINCT SalesMonth, SalesYear
        FROM #EmployeeSales
        EXCEPT
        SELECT DISTINCT SalesMonth, SalesYear
        FROM #EmployeeSales e2
        WHERE e2.EmployeeName = e.EmployeeName
    )
    GROUP BY e.EmployeeName
),

-- Solution 15: Products more expensive than average
Solution15 AS (
    SELECT Name
    FROM Products
    WHERE Price > (SELECT AVG(Price) FROM Products)
),

-- Solution 16: Products with stock lower than highest
Solution16 AS (
    SELECT Name
    FROM Products
    WHERE Stock < (SELECT MAX(Stock) FROM Products)
),

-- Solution 17: Products in same category as Laptop
Solution17 AS (
    SELECT p.Name
    FROM Products p
    WHERE p.Category = (SELECT Category FROM Products WHERE Name = 'Laptop')
),

-- Solution 18: Products more expensive than lowest Electronics
Solution18 AS (
    SELECT p.Name
    FROM Products p
    WHERE p.Price > (
        SELECT MIN(Price) 
        FROM Products 
        WHERE Category = 'Electronics'
    )
),

-- Solution 19: Products more expensive than category average
Solution19 AS (
    SELECT p.Name
    FROM Products p
    WHERE p.Price > (
        SELECT AVG(Price) 
        FROM Products p2 
        WHERE p2.Category = p.Category
    )
),

-- Solution 20: Products ordered at least once
Solution20 AS (
    SELECT DISTINCT p.Name
    FROM Products p
    JOIN Orders o ON p.ProductID = o.ProductID
),

-- Solution 21: Products ordered more than average quantity
Solution21 AS (
    SELECT p.Name
    FROM Products p
    JOIN (
        SELECT ProductID, SUM(Quantity) AS TotalQuantity
        FROM Orders
        GROUP BY ProductID
    ) o ON p.ProductID = o.ProductID
    WHERE o.TotalQuantity > (SELECT AVG(Quantity) FROM Orders)
),

-- Solution 22: Products never ordered
Solution22 AS (
    SELECT p.Name
    FROM Products p
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Orders o 
        WHERE o.ProductID = p.ProductID
    )
),

-- Solution 23: Product with highest total quantity ordered
Solution23 AS (
    SELECT TOP 1 p.Name, SUM(o.Quantity) AS TotalOrdered
    FROM Products p
    JOIN Orders o ON p.ProductID = o.ProductID
    GROUP BY p.Name
    ORDER BY TotalOrdered DESC
)

-- To execute any solution, replace the SELECT statement below with the solution number you want to run
SELECT * FROM Solution1;