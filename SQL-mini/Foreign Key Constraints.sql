/*------------------------------- FOREIGN KEY CONSTRAINTS ------------------------------*/
use company;

create table branch(
	branch_id int primary key auto_increment,
    loc varchar(50) not null,
    addr varchar(50)
);

describe branch;

alter table details
add branch_id int, 
add CONSTRAINT FK_branch_id foreign key (branch_id) references branch(branch_id);

alter table branch
modify addr varchar(50) default 'unassigned',
add id int,
add constraint FK_id foreign key(id) references details(id);

insert into branch(loc, addr)
values ('pudukkottai', '7/b, xyz street'),
		('chennai', '2/b, abc street'),
        ('trichy','1002, bhu illam');
        
select * from branch;
select * from details;

/*
update details
set branch_id = 3
where id = 1;

update details
set branch_id = 2
where id = 2;

update details
set branch_id = 1
where id = 3;
*/
-- Instead of doing this 

/*
update details
set branch_id = case
when id = 1 then 3
when id = 2 then 2
when id = 3 then 1
else branch_id
end;
*/

set sql_safe_updates = 0;

update details
set branch_id = case
	when id = 1 then 3
    when id = 2 then 2
    when id = 3 then 1
	else branch_id
end;

update branch
set id = case
	when branch_id = 1 then 3
	when branch_id = 2 then 2
	when branch_id = 3 then 1
end;

select * from branch;
select * from details;

show tables;

describe details;