/*------------------------------- CONSTRAINS ------------------------------*/
USE company;

ALTER TABLE details 
ADD pan INT UNIQUE,
MODIFY name VARCHAR(50) NOT NULL,
MODIFY job_desc VARCHAR(50) DEFAULT 'unassigned';

ALTER TABLE details MODIFY pan VARCHAR(50) NOT NULL;

SELECT * FROM details
WHERE pan IS NULL;

UPDATE details
SET pan = 925452212
WHERE pan IS NULL LIMIT 1;

INSERT INTO details(id, name, salary, Hire_Date, pan)
VALUES (13, "Lucy", 425366, CURDATE(), 2345678),
(14, "mnkn", 425356, CURDATE(), 2545678);

ALTER TABLE details
ADD CONSTRAINT cutoff_salary CHECK (salary > 100000);  -- impt

ALTER TABLE details
MODIFY id INT AUTO_INCREMENT;

DEScribe details;
show tables;
show table status;

INSERT INTO details(name, salary, Hire_Date, pan)
VALUES ("Lavender", 10000000, '2020-07-19', 98765432);

INSERT INTO details(name, salary, Hire_Date, pan)
VALUES ("Micky", 1500000, '1019-04-01', 1234567);

SELECT * FROM details;