create database homework17
-- Solution 1: Distributor Sales Report by Region
WITH Solution1 AS (
    WITH AllRegions AS (SELECT DISTINCT Region FROM #RegionSales),
    AllDistributors AS (SELECT DISTINCT Distributor FROM #RegionSales),
    AllCombinations AS (
        SELECT r.Region, d.Distributor
        FROM AllRegions r CROSS JOIN AllDistributors d
    )
    SELECT 
        c.Region, c.Distributor, COALESCE(rs.Sales, 0) AS Sales
    FROM AllCombinations c
    LEFT JOIN #RegionSales rs ON c.Region = rs.Region AND c.Distributor = rs.Distributor
    ORDER BY c.Region, c.Distributor
),

-- Solution 2: Managers with at Least Five Direct Reports
Solution2 AS (
    SELECT e1.name
    FROM Employee e1
    JOIN (
        SELECT managerId, COUNT(*) AS report_count
        FROM Employee
        WHERE managerId IS NOT NULL
        GROUP BY managerId
        HAVING COUNT(*) >= 5
    ) e2 ON e1.id = e2.managerId
),

-- Solution 3: Products with 100+ Units Ordered in February 2020
Solution3 AS (
    SELECT p.product_name, SUM(o.unit) AS unit
    FROM Products p
    JOIN Orders o ON p.product_id = o.product_id
    WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY p.product_id, p.product_name
    HAVING SUM(o.unit) >= 100
),

-- Solution 4: Vendor with Most Orders per Customer
Solution4 AS (
    WITH VendorCounts AS (
        SELECT 
            CustomerID, Vendor, COUNT(*) AS order_count,
            RANK() OVER (PARTITION BY CustomerID ORDER BY COUNT(*) DESC) AS rank
        FROM Orders
        GROUP BY CustomerID, Vendor
    )
    SELECT CustomerID, Vendor
    FROM VendorCounts
    WHERE rank = 1
),

-- Solution 5: Prime Number Check (example with 91)
Solution5 AS (
    DECLARE @Check_Prime INT = 91;
    DECLARE @IsPrime BIT = 1;
    DECLARE @i INT = 2;

    IF @Check_Prime < 2
        SET @IsPrime = 0;
    ELSE
    BEGIN
        WHILE @i <= SQRT(@Check_Prime)
        BEGIN
            IF @Check_Prime % @i = 0
            BEGIN
                SET @IsPrime = 0;
                BREAK;
            END
            SET @i = @i + 1;
        END
    END

    SELECT CASE WHEN @IsPrime = 1 THEN 'This number is prime' 
                ELSE 'This number is not prime' END AS Result
),

-- Solution 6: Device Signal Analysis
Solution6 AS (
    WITH LocationStats AS (
        SELECT 
            Device_id, Locations, COUNT(*) AS signal_count,
            RANK() OVER (PARTITION BY Device_id ORDER BY COUNT(*) DESC) AS rank
        FROM Device
        GROUP BY Device_id, Locations
    )
    SELECT 
        d.Device_id,
        COUNT(DISTINCT d.Locations) AS no_of_location,
        (SELECT Locations FROM LocationStats WHERE Device_id = d.Device_id AND rank = 1) AS max_signal_location,
        COUNT(*) AS no_of_signals
    FROM Device d
    GROUP BY d.Device_id
),

-- Solution 7: Employees Earning Above Department Average
Solution7 AS (
    WITH DeptAvg AS (
        SELECT DeptID, AVG(Salary) AS avg_salary
        FROM Employee
        GROUP BY DeptID
    )
    SELECT e.EmpID, e.EmpName, e.Salary
    FROM Employee e
    JOIN DeptAvg d ON e.DeptID = d.DeptID
    WHERE e.Salary > d.avg_salary
),

-- Solution 8: Lottery Winnings Calculation
Solution8 AS (
    WITH WinningNumbers AS (
        SELECT 25 AS Number UNION ALL SELECT 45 UNION ALL SELECT 78
    ),
    TicketMatches AS (
        SELECT 
            t.[Ticket ID],
            SUM(CASE WHEN t.Number IN (SELECT Number FROM WinningNumbers) THEN 1 ELSE 0 END) AS match_count,
            COUNT(*) AS total_numbers
        FROM Tickets t
        GROUP BY t.[Ticket ID]
    )
    SELECT 
        SUM(CASE 
                WHEN match_count = (SELECT COUNT(*) FROM WinningNumbers) THEN 100
                WHEN match_count > 0 THEN 10
                ELSE 0
            END) AS total_winnings
    FROM TicketMatches
),

-- Solution 9: User Spending by Platform
Solution9 AS (
    WITH UserPlatforms AS (
        SELECT 
            User_id, Spend_date,
            CASE 
                WHEN COUNT(DISTINCT Platform) = 2 THEN 'Both'
                ELSE MAX(Platform)
            END AS Platform
        FROM Spending
        GROUP BY User_id, Spend_date
    ),
    PlatformSummary AS (
        SELECT 
            Spend_date, Platform,
            SUM(Amount) AS Total_Amount,
            COUNT(DISTINCT User_id) AS Total_users
        FROM Spending
        GROUP BY Spend_date, Platform
    ),
    AllPlatforms AS (
        SELECT DISTINCT Spend_date FROM Spending
        CROSS JOIN (SELECT 'Mobile' AS Platform UNION SELECT 'Desktop' UNION SELECT 'Both') p
    )
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ap.Spend_date, ap.Platform) AS Row,
        ap.Spend_date, ap.Platform,
        COALESCE(ps.Total_Amount, 0) AS Total_Amount,
        COALESCE(ps.Total_users, 0) AS Total_users
    FROM AllPlatforms ap
    LEFT JOIN PlatformSummary ps ON ap.Spend_date = ps.Spend_date AND ap.Platform = ps.Platform
    ORDER BY ap.Spend_date, 
        CASE ap.Platform WHEN 'Mobile' THEN 1 WHEN 'Desktop' THEN 2 WHEN 'Both' THEN 3 END
),

-- Solution 10: Degrouping Product Quantities
Solution10 AS (
    WITH Numbers AS (
        SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
    )
    SELECT g.Product, 1 AS Quantity
    FROM Grouped g
    JOIN Numbers n ON n.n <= g.Quantity
    ORDER BY g.Product, n.n
)

SELECT * FROM Solution1;