-- SUBQUERIES

select *
from employee_demographics
where employee_id in 
				(select employee_id 
                from employee_salary where dept_id=1
);

select first_name,salary ,
(select avg(salary) from employee_salary) as avg_sal
from employee_salary
;




select first_name, salary,
(select avg(salary) from employee_salary) from employee_salary;

select avg(max_age) from 
(select
gender, 
max(age) as max_age, 
min(age) as min_age, 
avg(age) as avg_age, 
count(age)
from employee_demographics group by gender) as agg_table;



select dem.first_name, dem.last_name, gender,
avg(salary) over(partition by gender) as avg_salary
from employee_demographics dem join employee_salary sal on dem.employee_id=sal.employee_id;