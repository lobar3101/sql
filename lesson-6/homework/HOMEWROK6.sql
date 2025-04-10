 
 --puzzle 1--
 CREATE TABLE InputTbl (col1 VARCHAR(1), col2 VARCHAR(1))
INSERT INTO InputTbl VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c',  'd'),
('c', 'd'),
('m', 'n'),
('n', 'm')
select *from InputTbl
select  DISTINCT col1, col2
FROM InputTbl;
SELECT col1, col2
FROM InputTbl
GROUP BY col1, col2;
--puzzle 2--
Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting data.

CREATE TABLE TestMultipleZero ( A INT NULL, B INT NULL, C INT NULL, D INT NULL );
INSERT INTO TestMultipleZero(A,B,C,D) VALUES 
(0,0,0,1), (0,0,1,0), (0,1,0,0), 
(1,0,0,0), (0,0,0,0), (1,1,1,0);
select *  from TestMultipleZero
where A!=0 OR B !=0 OR C !=0 OR D!=0
select *  from TestMultipleZero
WHERE A+B+C+D>0


--Puzzle 3: Find those with odd ids
create table section1(id int, name varchar(20)) 
insert into section1 values (1, 'Been'), (2, 'Roma'), (3, 'Steven'), (4, 'Paulo'),
(5, 'Genryh'), (6, 'Bruno'), (7, 'Fred'), (8, 'Andro')
select *  from section1
SELECT id, name 
FROM section1
WHERE id % 2 = 1;
--Puzzle 4: Person with the smallest id (use the table in puzzle 3)
select min(id) as smallest_id from section1
--Person with the highest id (use the table in puzzle 3)
select max(id) as highest_id   from section1

--Puzzle 6: People whose name starts with b (use the table in puzzle 3)
select *  from section1
where name like 'b%'
--Puzle 7: Write a query to return only the rows where the code contains the literal 
underscore _ (not as a wildcard).
CREATE TABLE ProductCodes ( Code VARCHAR(20) );
INSERT INTO ProductCodes (Code) VALUES ('X-123'), 
('X_456'), ('X#789'), ('X-001'), ('X%202'),
('X_ABC'), ('X#DEF'), ('X-999');

select *  from ProductCodes
where Code like '%[_]%'

CREATE TABLE GroupbyMultipleColumns 
( ID INT, Typ VARCHAR(1), Value1 VARCHAR(1), Value2 VARCHAR(1), Value3 VARCHAR(1) );

INSERT INTO GroupbyMultipleColumns(ID, Typ, Value1, Value2, Value3) VALUES 
(1, 'I', 'a', 'b', ''), 
(2, 'O', 'a', 'd', 'f'),
(3, 'I', 'd', 'b', ''), 
(4, 'O', 'g', 'l', ''), 
(5, 'I', 'z', 'g', 'a'),
(6, 'I', 'z', 'g', 'a');


select Typ ,          SUM(case  when Value1 = 'a'  then 1 
					            when Value2 = 'a'  then 1 
					            when  Value2=  'a'  then 1 else 0 end) as COUNT_A
					   
	 from GroupbyMultipleColumns
	 GROUP BY Typ;
	--PUZZLE 3 Find values that appear more than once in the table.--
	 CREATE TABLE TESTDuplicateCount1 ( ID INT, EmpName VARCHAR(100) NOT NULL, EmpDate DATETIME );
	 INSERT INTO TESTDuplicateCount1 (ID,EmpName,EmpDate) VALUES 
	 (1,'Pawan','2014-01-05'), 
	 (2,'Pawan','2014-03-05'), 
	 (3,'Pawan','2014-02-05'), 
	 (4,'Manisha','2014-07-05'), 
	 (5,'Sharlee','2014-09-05'),
	 (6,'Barry','2014-02-05'), 
	 (7,'Jyoti','2014-04-05'), 
	 (8,'Jyoti','2014-05-05');
	 SELECT* FROM TESTDuplicateCount1

	 select EmpName ,     SUM(CASE WHEN EmpName = 'Pawan' THEN 1 
                                   WHEN  EmpName = 'Jyoti' THEN 1 ELSE ' ' END) AS Occurrences
					  
	 from TESTDuplicateCount
	 GROUP BY EmpName;
	
	GROUP BY column_name

SELECT EmpName, COUNT(*) AS Occurrences
FROM TESTDuplicateCount
GROUP BY EmpName
HAVING COUNT(*) > 1;