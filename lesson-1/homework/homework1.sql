create database hometask1
--Easy
Define the following terms: data, database, relational database, and table.
List five key features of SQL Server.
--Data:
Raw facts, figures, or observations that represent qualitative or quantitative attributes of variables. Data can be numbers, text, images, etc., and becomes meaningful when processed and interpreted.

Database:
An organized collection of structured data stored electronically in a computer system. It allows for efficient data retrieval, insertion, updating, and deletion.

Relational Database:
A type of database that organizes data into structured tables with rows (records) and columns (attributes), where relationships between tables are established using keys (primary/foreign keys). Follows E.F. Codd’s relational model.

Table:
A structured set of data in a relational database, organized into rows (tuples/records) and columns (fields/attributes). Each table typically represents an entity (e.g., Customers, Orders).

Five Key Features of SQL Server:
Transact-SQL (T-SQL):
Microsoft’s proprietary SQL extension with added features like procedural programming (loops, error handling) and local variables.

High Availability:
Supports failover clustering, database mirroring, and Always On Availability Groups for minimal downtime.

Security:
Offers row-level security, dynamic data masking, transparent data encryption (TDE), and built-in authentication/authorization.

Integration Services (SSIS):
ETL (Extract, Transform, Load) tool for data migration and workflow automation.

Scalability & Performance:
In-memory OLTP (Online Transaction Processing), columnstore indexes, and query optimization for handling large datasets efficiently.


What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
1. Windows Authentication (Integrated Security)
Uses the Windows user account credentials (Active Directory or local machine) to log in.
No separate username/password is required for SQL Server.
More secure as it leverages Windows security policies (e.g., Kerberos, NTLM).
Best for enterprise environments with centralized user management.

2. SQL Server Authentication
Requires a dedicated SQL Server username and password.
Credentials are stored within SQL Server (independent of Windows accounts).
Used when Windows domain authentication isn’t available (e.g., remote access).
Requires strong passwords to mitigate security risks.
Medium
Create a new database in SSMS named SchoolDB.
CREATE DATABASE SchoolDB;

Write and execute a query to create a table called Students with columns:
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

Describe the differences between SQL Server, SSMS, and SQL.
Differences Between SQL Server, SSMS, and SQL:
SQL Server

A relational database management system (RDBMS) developed by Microsoft
The actual server software that stores, processes, and secures data
Handles database operations like storage, retrieval, and data integrity
Runs as a Windows service (or Linux in newer versions)
SQL Server Management Studio (SSMS)
A graphical user interface (GUI) tool for managing SQL Server
Provides visual tools for database administration and development
Allows executing SQL queries, designing tables, and monitoring performance
Free IDE from Microsoft (not the database engine itself)
SQL (Structured Query Language)
Standard language for interacting with relational databases
Used to create, read, update, and delete data (CRUD operations)
Common across all RDBMS platforms (with dialect variations)
Includes DDL (CREATE/ALTER), DML (SELECT/INSERT), and DCL (GRANT/REVOKE)

Hard
Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
DQL (Data Query Language)
Purpose: Retrieve data from databases

Commands: SELECT

2. DML (Data Manipulation Language)
Purpose: Modify data in tables

Commands: INSERT, UPDATE, DELETE, MERGE

3. DDL (Data Definition Language)
Purpose: Define/modify database structures

Commands: CREATE, ALTER, DROP, TRUNCATE, RENAME


4. DCL (Data Control Language)
Purpose: Manage access permissions

Commands: GRANT, REVOKE, DENY


5. TCL (Transaction Control Language)
Purpose: Manage database transactions

Commands: COMMIT, ROLLBACK, SAVEPOINT
Write a query to insert three records into the Students table.
INSERT INTO Students (StudentID, Name, Age)
VALUES 
    (1, 'John Smith', 20),
    (2, 'Emily Davis', 22),
    (3, 'Michael Johnson', 21);
GO
Create a backup of your SchoolDB database and restore it. (write its steps to submit)
BACKUP DATABASE SchoolDB 
TO DISK = 'C:\Backups\SchoolDB.bak'
WITH COMPRESSION, STATS = 10;
GO


