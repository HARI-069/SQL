/*------------------------------- FUNCTIONS ------------------------------*/
USE company;

DESCRIBE details;
SELECT id FROM details;

ALTER TABLE details MODIFY job_desc VARCHAR(50);

INSERT INTO details VALUES(6, 'Blue', 'UX Researcher', 1900000),
	(7, 'Yellow', 'Product Designer', 2000000),
    (8, 'Me', 'Junior UI Designer', 1000000),
    (9, 'Alter', 'Web Dev', 29000000);
    
INSERT INTO details VALUES (10, 'Lorem', 'Product Manager', 2000000),
	(11, 'Levi', 'Web Dev', 2700000),
    (12, 'Yren', 'Web Dev', 2700000);

SET SQL_SAFE_UPDATES = 0;

UPDATE details
SET job_desc = 'Product Manager'
WHERE job_desc = 'Product Designer';

-- Aggression Functions
-- 1. Average

SELECT AVG(salary) AS AvgSalary
FROM details
WHERE job_desc = "Web Dev";

-- 2. Sum

SELECT SUM(salary) AS SUMSalary
FROM details
WHERE job_desc = "Web Dev";

-- 3. Maximum

SELECT SUM(salary) AS SUMSalary
FROM details
WHERE job_desc = "Web Dev";

-- 4. Minimum

SELECT MIN(salary) AS MinSalary
FROM details
WHERE job_desc = "Web Dev";
    
 -- 5. Maximum

SELECT MAX(salary) AS MiaxSalary
FROM details
WHERE job_desc = "Web Dev";

-- String Functions
-- 1. toUpperCase  

SELECT UPPER(name) UpperNames
From details;

-- 2. Character Length

SELECT name, CHAR_LENGTH(name)count 
FROM details;

-- 3. Concate 

SELECT name, CONCAT('Rs. ',salary) Salary
FROM details; 

-- 4. Format

SELECT name, CONCAT('Rs. ', FORMAT(salary,0)) Salary
FROM details; 

-- 5. To Return Left most Chars

SELECT name, LEFT(job_desc, 4)
FROM details;


-- 6. To Return Right most Chars

SELECT name, RIGHT(job_desc, 4)
FROM details;

UPDATE details
SET name = "Yeren"
WHERE name = 'Yren';

-- Date & Time Function
Alter Table details Add column Hire_Date date;

update details
set hire_date = '2021-12-15';

update details
set hire_date = '2022-11-25'
where job_desc in ('CEO', 'HR');

update details
set hire_date = '2018-04-06'
where job_desc = 'HOD';

update details
set hire_date = '2011-11-15'
where job_desc  = 'MANAGER';

-- 1. Current time & date

Select now();

-- 2. current date

select date(now());

-- 3. current system date

select curdate();

-- 4. to change the display format. use %d %m and %y or %Y in required format.

select date_format(curdate(), "%d--%m--%Y") New_Format;

-- 5. to calculate date difference

select datediff(curdate(), '2018-04-06') In_Days;

-- 6. Date and Interval

select curdate() 'today', 
date_add(curdate(), interval 1 day) 'tommorrow',
date_add(curdate(), interval 1 week) '1 week later',
date_add(curdate(), interval 1 year)  'After 1 whole year';
    
SELECT * FROM details;

