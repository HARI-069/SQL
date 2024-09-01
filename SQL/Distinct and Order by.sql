/*------------------------------- DISTINCT AND ORDER BY ------------------------------*/
USE company;

-- /////////////////// DISTINCT ///////////////////

SELECT DISTINCT job_desc
FROM details;

-- /////////////////// ORDER BY ///////////////////

SELECT *
FROM details
ORDER BY salary DESC;

SELECT name
FROM details
ORDER BY name ASC;

SELECT DISTINCT job_desc, id
FROM details
ORDER BY id, job_desc DESC;

-- Preference or Specific Order

SELECT * 
FROM details
ORDER BY (CASE job_desc 
	WHEN 'ANALYST' THEN 1
    WHEN 'HR' THEN 2
    ELSE 100 END
), salary DESC;


SELECT * FROM details ORDER BY id DESC;

