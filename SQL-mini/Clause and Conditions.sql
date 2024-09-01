CREATE DATABASE company;
USE company;

CREATE TABLE details(
	id INT PRIMARY KEY,
    name VARCHAR(15),
    job_desc VARCHAR(15),
    salary INT
);
DESCRIBE details;

-- /////////////////// INSERT /////////////////// 
INSERT INTO details VALUES (1, "Hariharan", "CEO", 2500000), 
(2, "Lawliet", "HR", 2100000),
(3, "Light Yagami", "MANAGER", 2600000);

/*------------------------------- CLAUSE AND CONDITIONS ------------------------------*/

-- /////////////////// SELECT WHERE /////////////////// 
SELECT * FROM details
WHERE salary > 2100000;

SELECT name, salary FROM details
WHERE salary BETWEEN 2100000 AND 2500000000;

SELECT name, salary FROM details
LIMIT 2;

INSERT INTO details VALUES (4, "Ryuk", "HOD", 3000000); 

SELECT name FROM details WHERE job_desc = "CEO";

INSERT INTO details VALUES (5, "L", "HR", 2300000);

SELECT name, salary FROM details WHERE salary BETWEEN 2100000 AND 2600000;
SELECT * FROM details WHERE job_desc IN('CEO', 'HR');
SELECT * FROM details WHERE job_desc NOT IN('CEO', 'HR');

SELECT name FROM details WHERE name LIKE 'L%';
SELECT name FROM details WHERE name NOT LIKE ('L%');

/* Instead of doing this 👇
` SELECT name FROM details WHERE name LIKE ('l%' '%T'); `

DO THIS 👇
` SELECT name FROM deatails WHERE name LIKE 'l%T'; `

Both of these gives the same Result
*/

SELECT name FROM details WHERE name LIKE 'L%T';

-- /////////////////// UPDATE SET WHERE/////////////////// 
SET SQL_SAFE_UPDATES = 0;

UPDATE details
SET job_desc = "ANALYST"
WHERE job_desc = "CEO";

-- /////////////////// DETELE WHERE /////////////////// 
DELETE FROM details
WHERE name = "L";

-- SET SQL_SAFE_UPDATES = 1;

SELECT * FROM details;

 