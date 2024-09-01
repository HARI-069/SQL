/*------------------------------- GROUP BY & HAVING ------------------------------*/

USE company;

SELECT job_desc, count(id) AS count
FROM details
GROUP BY job_desc
HAVING count > 1;

SELECT job_desc, count(id) count
FROM details
WHERE salary <= 3000000
GROUP BY job_desc
HAVING count > 1;


SELECT * FROM details;