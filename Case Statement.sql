select first_name,
last_name,
age,
case 
	when age<=30 then 'Young'
    when age between 31 and 50 then 'Middle Age'
    when age>=50 then 'Old'
end as label
from employee_demographics;

-- pay increase and bonus
-- < 50000=5%
-- > 50000=7%
-- Finance = 10% bonus

select first_name,last_name,salary,
case
	when salary <= 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
end as new_salary,
case
	when department_name='Finance' then salary * 0.1
end as bonus
from employee_salary as sal join parks_departments as dep on sal.dept_id=department_id;

select * from employee_salary join parks_departments on dept_id=department_id;
select * from parks_departments;