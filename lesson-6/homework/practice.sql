 
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
