/*------------------------------- JOINS ------------------------------*/
use company;

set sql_safe_updates = 0;
update details
set branch_id = case
	when id = 4 then 3
    when id = 5 then 2
    when id = 6 then 1
    when id = 7 then 3
    when id = 8 then 2
    when id = 9 then 1
    when id = 10 then 3
    when id = 11 then 2
    when id = 12 then 1
    when id = 13 then 3
    -- when id = 14 then 2
--     when id = 15 then 1
end;

update details
set pan = 55774564
where id = 12;

update details
set pan = case
	when id = 2 then 98762873
    when id = 3 then 56365904
    when id = 4 then 83270841
    when id = 5 then 65487924
    when id = 6 then 30429403
    when id = 7 then 78646875
    when id = 8 then 47398479
    when id = 9 then 92850292
    when id = 10 then 12098349
    when id = 11 then 53487992
    when id = 1 then 53285687
    when id = 12 then 73246124
    when id = 13 then 26178468
    when id = 14 then 28193874
	when id = 15 then 56838723
end;

-- INNER JOINS
select d.id, d.name, d.job_desc, d.salary, d.pan, b.loc
from details as d
inner join branch as b
on d.branch_id = b.branch_id
order by (
case d.job_desc
	when 'CEO' then 1
    when 'HR' then 2
    else 100
end), d.salary desc;

/*  Same INNER JOIN process can be archived using WHERE clause too */


-- LEFT JOINS
select d.id, d.name, d.job_desc, d.salary, b.addr
from details as d
left join branch as b
on d.branch_id = b.branch_id;


SELECT b.loc, COUNT(d.id) AS count
FROM branch AS b
JOIN details AS d
ON b.branch_id = d.branch_id
GROUP BY B.branch_id;

delete from details
where id IN (16,17);

select * from details;
select * from branch;