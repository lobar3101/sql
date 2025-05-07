lesson-12 Practice

You can find tsql2012 database in here: https://gist.github.com/alejotima/cac70484db23834591b142ad07e79e67

Notes before doing the tasks: Tasks should be solved using SQL Server. It does not matter the solutions are uppercase or lowercase, which means case insensitive. Using alies names does not matter in scoring your work. Students are scored based on what their query returns(does it fulfill the requirments). One way of solution is enough if it is true, other ways might be suggested but should not affect the score.

1. Combine Two Tables
-----------------------------------------------------
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |
+-------------+---------+

personId is the primary key (column with unique values) for this table.
This table contains information about the ID of some persons and their first and last names.

Create table  Person (personId int, firstName varchar(255), lastName varchar(255))
Create table Address (addressId int, personId int, city varchar(255), state varchar(255))
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')

insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California')
-----------------------------------------------------
select * from person 
select * from Address
Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |
+-------------+---------+
addressId is the primary key (column with unique values) for this table.
Each row of this table contains information about the city and state of one person with ID = PersonId.
 
-----------------------------------------------------
Write a solution to report the first name, last name, city, and state of each person in the Person table.
If the address of a personId is not present in the Address table, report null instead.

Return the result table in any order.

The result format is in the following example.

Input: 
Person table:
+----------+----------+-----------+
| personId | lastName | firstName |
+----------+----------+-----------+
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |
+----------+----------+-----------+
Address table:
+-----------+----------+---------------+------------+
| addressId | personId | city          | state      |
+-----------+----------+---------------+------------+
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |
+-----------+----------+---------------+------------+
Output: 
+-----------+----------+---------------+----------+
| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |
+-----------+----------+---------------+----------+

Explanation: 
There is no address in the address table for the personId = 1 so we return null in their city and state.
addressId = 1 contains information about the address of personId = 2.

-----------------------------------------------------
Create table If Not Exists Person (personId int, firstName varchar(255), lastName varchar(255))
Create table If Not Exists Address (addressId int, personId int, city varchar(255), state varchar(255))
Truncate table Person
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')
Truncate table Address
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California')

select  p.firstname, p.lastname, a.city, a.state
from person p
left join address a on a.personid=p.personid

----------------------------------------------------------------------------------------------------------
2.Employees Earning More Than Their Managers

-----------------------------------------------------

Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 
-----------------------------------------------------


Write a solution to find the employees who earn more than their managers.

Return the result table in any order.

The result format is in the following example.

 
-----------------------------------------------------

Input: 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
Output: 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
Explanation: Joe is the only employee who earns more than his manager.


Create table Employee (id int, name varchar(255), salary int, managerId int)

insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3')
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4')
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL)
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL)
select * from employee
select e.name from Employee e
join employee b on b.id=e.managerid
where e.salary>b.salary

----------------------------------------------------------------------------------------------------------
3.Duplicate Emails

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+

id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 
-----------------------------------------------------

Write a solution to report all the duplicate emails. 
Note that it''s guaranteed that the email field is not NULL.

Return the result table in any order.

The result format is in the following example.

 
-----------------------------------------------------
Input: 
Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
Output: 
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Explanation: a@b.com is repeated two times.


-----------------------------------------------------

Create table Persons (id int, email varchar(255))

insert into Persons (id, email) values ('1', 'a@b.com')
insert into Persons (id, email) values ('2', 'c@d.com')
insert into Persons (id, email) values ('3', 'a@b.com')
select p.email from persons p
 join persons b on p.email=b.email and p.id<b.id 
 SELECT 
    email AS Email
FROM 
    Persons
GROUP BY 
    email
HAVING 
    COUNT(*) > 1;



----------------------------------------------------------------------------------------------------------
4. Delete Duplicate Emails

Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 

Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

Please note that you are supposed to write a DELETE statement and not a SELECT one.



After running your script, the answer shown is the Person table.
The driver will first compile and run your piece of code and then show the Person table.
The final order of the Person table does not matter.

The result format is in the following example.
Create table Persons (id int, email varchar(255))

insert into Persons (id, email) values ('1', 'john@example.com ')
insert into Persons (id, email) values ('2', ' bob@example.com ')
insert into Persons (id, email) values ('3', 'john@example.com ')

select * from persons
 SELECT 
    email AS Email
FROM 
    Persons
GROUP BY 
    email
HAVING 
    COUNT(*) >= 1;
Input: 
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output: 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
Explanation: john@example.com is repeated two times. We keep the row with the smallest Id = 1.



----------------------------------------------------------------------------------------------------------
5. Find those parents who has only girls.

CREATE TABLE boys (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100)
);

CREATE TABLE girls (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100)
);




INSERT INTO boys (Id, name, ParentName) 
VALUES 
(1, 'John', 'Michael'),  
(2, 'David', 'James'),   
(3, 'Alex', 'Robert'),   
(4, 'Luke', 'Michael'),  
(5, 'Ethan', 'David'),    
(6, 'Mason', 'George');  


INSERT INTO girls (Id, name, ParentName) 
VALUES 
(1, 'Emma', 'Mike'),  
(2, 'Olivia', 'James'),  
(3, 'Ava', 'Robert'),    
(4, 'Sophia', 'Mike'),  
(5, 'Mia', 'John'),      
(6, 'Isabella', 'Emily'),
(7, 'Charlotte', 'George');
select * from boys
select * from girls
select distinct g.parentname from girls as g left join boys as b on g.parentname=b.parentname
where b.parentname is null

select distinct parentname from girls
where parentname not in (select parentname from boys)
----------------------------------------------------------------------------------------------------------
6.Total over 50 and least

Find total Sales amount for the orders which weights more than 50 for each customer
along with their least weight.
(from TSQL2012 database, Sales.Orders Table)
select * from TSQL2012.Sales.Orders where custid=1
select custid, SUM(CASE WHEN FREIGHT>50 THEN FREIGHT ELSE 0 END), MIN(FREIGHT)
FROM TSQL2012.Sales.Orders
GROUP BY CUSTID

----------------------------------------------------------------------------------------------------------
7.Carts

You have the tables below, write a query to get the expected output


DROP TABLE IF EXISTS Cart1;
DROP TABLE IF EXISTS Cart2;
GO

CREATE TABLE Cart1
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

CREATE TABLE Cart2
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

INSERT INTO Cart1 (Item) VALUES
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
GO

INSERT INTO Cart2 (Item) VALUES
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');
GO
-----------------------------------------------------
SELECT * FROM Cart1
SELECT * FROM Cart2

Expected Output.
-----------------------------
| Item Cart 1 | Item Cart 2 |  
|-------------|-------------|  
| Sugar       | Sugar       |  
| Bread       | Bread       |  
| Juice       |             |  
| Soda        |             |  
| Flour       |             |  
|             | Butter      |  
|             | Cheese      |  
|             | Fruit       |  
-----------------------------

SELECT isnull(c1.item, ' '),
       isnull(c2.item,' ')
	   from cart1 c1 
	   full join cart2 c2 on c1.item=c2.item
	   order by
	   case when c1.item is not null and c2.item is not null then 0
	   when c1.item is not null then 1
	   else 2 
	   end

----------------------------------------------------------------------------------------------------------
8.Matches

Resultga yutgan jamoaning nomi chiqsin agar durrang bo''lsa 'Draw' so''zi chiqsin.
(Hisob 10:11 yoki 111:99 bo''lishi ham mumkin :)  )


Input:
---------------------------------------
| MatchID | Match             | Score |  
|---------|-------------------|-------|  
|    1    | Italy-Spain       |  2:0  |  
|    2    | Spain-France      |  2:1  |  
|    3    | France-Belgium    |  0:0  |  
|    4    | Belgium-Spain     |  2:2  |  
|    5    | Belgium-Italy     |  0:3  |  
|    6    | Italy-France      |  2:0  |
---------------------------------------

Expected Output:
------------------------------------------------
| MatchID | Match             | Score | Result |  
|---------|-------------------|-------|--------|  
|    1    | Italy-Spain       |  2:0  | Italy  |  
|    2    | Spain-France      |  2:1  | Spain  |  
|    3    | France-Belgium    |  0:0  | Draw   |  
|    4    | Belgium-Spain     |  2:2  | Draw   |  
|    5    | Belgium-Italy     |  0:3  | Italy  |  
|    6    | Italy-France      |  2:0  | Italy  | 
------------------------------------------------

create table match1 (MatchID int, Match varchar(30), Score varchar(5))
insert into match1 values 
		      (1,'Italy-Spain','2:0'),
              (2,'Spain-France','2:1'),
              (3,'France-Belgium','0:0'),
              (4,'Belgium-Spain','2:2'),
              (5,'Belgium-Italy','0:3'),
              (6,'Italy-France','2:0');

select *, matchid as result from match1
SELECT 
    MatchID,
    Match,
    Score,
    CASE 
        WHEN Score = '0:0' THEN 'Draw'
        WHEN Score LIKE '%:0' THEN LEFT(Match, CHARINDEX('-', Match) - 1)
        WHEN Score LIKE '0:%' THEN RIGHT(Match, LEN(Match) - CHARINDEX('-', Match))
        WHEN LEFT(Score, 1) > RIGHT(Score, 1) THEN LEFT(Match, CHARINDEX('-', Match) - 1)
        ELSE RIGHT(Match, LEN(Match) - CHARINDEX('-', Match))
    END AS Result
FROM 
    match1;
----------------------------------------------------------------------------------------------------------
9.Customers Who Never Order

-----------------------------------------------------

Table: Customers

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID and name of a customer.
 

Table: Orders

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
customerId is a foreign key (reference columns) of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
 

-----------------------------------------------------


Write a solution to find all customers who never order anything.

Return the result table in any order.

The result format is in the following example.

 
-----------------------------------------------------
Input: 
Customers table:
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders table:
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+


Output: 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
select c.name from customers c
left join orders o on c.id=o.customerid
where customerid is null

-----------------------------------------------------

Create table Customers (id int, name varchar(255))
Create table  Orders (id int, customerId int)
insert into Customers (id, name) values ('1', 'Joe')
insert into Customers (id, name) values ('2', 'Henry')
insert into Customers (id, name) values ('3', 'Sam')
insert into Customers (id, name) values ('4', 'Max')
insert into Orders (id, customerId) values ('1', '3')
insert into Orders (id, customerId) values ('2', '1')
select * from customers
select * from orders



----------------------------------------------------------------------------------------------------------
10.Students and Examinations


-----------------------------------------------------

Table: Students

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+
student_id is the primary key (column with unique values) for this table.
Each row of this table contains the ID and the name of one student in the school.
 

Table: Subjects

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+

subject_name is the primary key (column with unique values) for this table.
Each row of this table contains the name of one subject in the school.
 

Table: Examinations

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+

There is no primary key (column with unique values) for this table. It may contain duplicates.
Each student from the Students table takes every course from the Subjects table.
Each row of this table indicates that a student with ID student_id attended the exam of subject_name.

 
-----------------------------------------------------

Write a solution to find the number of times each student attended each exam.

Return the result table ordered by student_id and subject_name.

The result format is in the following example.

 
-----------------------------------------------------

Input: 
Students table:
+------------+--------------+
| student_id | student_name |
+------------+--------------+
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |
+------------+--------------+

Subjects table:
+--------------+
| subject_name |
+--------------+
| Math         |
| Physics      |
| Programming  |
+--------------+

Examinations table:
+------------+--------------+
| student_id | subject_name |
+------------+--------------+
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |
+------------+--------------+

Output: 
+------------+--------------+--------------+----------------+
| student_id | student_name | subject_name | attended_exams |
+------------+--------------+--------------+----------------+
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |
+------------+--------------+--------------+----------------+

-----------------------------------------------------

Explanation: 
The result table should contain all students and all subjects.
Alice attended the Math exam 3 times, the Physics exam 2 times, and the Programming exam 1 time.
Bob attended the Math exam 1 time, the Programming exam 1 time, and did not attend the Physics exam.
Alex did not attend any exams.
John attended the Math exam 1 time, the Physics exam 1 time, and the Programming exam 1 time.

-----------------------------------------------------
Create table  Students (student_id int, student_name varchar(20))
Create table  Subjects (subject_name varchar(20))
Create table  Examinations (student_id int, subject_name varchar(20))
insert into Students (student_id, student_name) values ('1', 'Alice')
insert into Students (student_id, student_name) values ('2', 'Bob')
insert into Students (student_id, student_name) values ('13', 'John')
insert into Students (student_id, student_name) values ('6', 'Alex')
insert into Subjects (subject_name) values ('Math')
insert into Subjects (subject_name) values ('Physics')
insert into Subjects (subject_name) values ('Programming')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Programming')
insert into Examinations (student_id, subject_name) values ('2', 'Programming')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Programming')
insert into Examinations (student_id, subject_name) values ('13', 'Physics')
insert into Examinations (student_id, subject_name) values ('2', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
select * from students
select * from subjects
select * from Examinations

select  s.student_id,
    s.student_name,
    b.subject_name,
    COUNT(e.student_id) AS attended_exams from students s

left join   Examinations e on s.student_id=e.student_id
left join subjects b on b.subject_name= e.subject_name

group by s.student_id, s.student_name, b.subject_name
ORDER BY 
    s.student_id, b.subject_name;