Select * from parks_and_recreation.employee_salary where salary in (100000,75000);

Select employee_id, first_name, salary+0.1*salary as salary_with_bonus from parks_and_recreation.employee_salary where salary>=10000;

Select * from parks_and_recreation.employee_salary -- where first_name like 'c%' -- 
;

Select occupation, avg(salary) as average_salary from parks_and_recreation.employee_salary group by occupation;

select * from employee_demographics order by gender desc, age desc;

select occupation, avg(salary) as avg_Salary from employee_salary where occupation like '%manager%' group by occupation having avg(salary) > 60000;

select * from employee_salary limit 3;
select * from employee_salary where salary > 60000;

select * from employee_salary 
