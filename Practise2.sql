select * from employee_demographics;

select * from employee_salary;

-- Inner Join or Join
select *
from employee_demographics as demo
join employee_salary as sal 
on demo.employee_id =sal.employee_id
;


-- Outer join
select *
from employee_demographics as demo
right outer join employee_salary as sal 
on demo.employee_id =sal.employee_id
;

-- self join
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_santa,
emp2.first_name as first_name_santa,
emp2.last_name as last_name_santa
from employee_salary as emp1
Join employee_salary as emp2
On emp1.employee_id +1= emp2.employee_id
;

select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

-- joining multiple tables
select demo.first_name, department_name, salary
from employee_demographics as demo
join employee_salary as sal
on demo.employee_id=sal.employee_id
join parks_departments as dep
on sal.dept_id=dep.department_id
order by department_name asc, salary
;


Select first_name, last_name from employee_demographics
union all
select first_name, last_name from employee_salary ;


select first_name, last_name, 'Highly Paid Employee' as Label from employee_salary  where salary >50000 
union 
select first_name, last_name, 'Old Man' as Label from employee_demographics where age>40 and gender = 'male'
union
select first_name, last_name, 'Old Women' as Label from employee_demographics where age>40 and gender= 'female'
order by first_name;


select * from employee_demographics;
select * from employee_salary;