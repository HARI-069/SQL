create database my_database_01;

use sys;

show tables;

use my_database_01;

show tables;

create table my_table_01 (
	my_column_01 int,
    my_column_02 VARCHAR(20),
    my_column_03 DECIMAL(3,2),
    PRIMARY KEY (my_column_01)
);

describe my_table_01;
describe table my_table_01; 

alter table my_table_01 add my_column_04 varchar(100);
-- alter table my_table_01 drop my_column_04;

INSERT INTO my_table_01 VALUES (1, "Hariharan", 8.20),
 (2, "Lawliet", 9.98),
 (3, "Yagami", 9.97);
 
INSERT INTO my_table_01 VALUES (4, "Ryuk", 9.99);
INSERT INTO my_table_01 (my_column_01, my_column_03) VALUES (5, 1.22), (6, 7.87);

SELECT * FROM my_table_01;
-- SELECT my_column_02, my_column_03 FROM my_table_01;

-- drop table my_table_01;

-- drop database if exists my_database_1;

 