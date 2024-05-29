create temporary table tableName(
first_name varchar(100),
last_name varchar(100),
favMovie varchar(100));

insert into tableName values
('Sujan', 'Sapkota', 'Panchayat');

select * from salary_over_50k;

create temporary table salary_over_50k 
select * from employee_salary where salary >= 50000;