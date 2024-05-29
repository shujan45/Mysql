-- using group by
select dept_id , avg(salary) as avgSalary 
from employee_demographics dem 
join employee_salary sal on
sal.employee_id=dem.employee_id group  by dept_id 
;

-- using window function i.e. over(partition by   )
select dem.first_name ,dept_id, avg(salary) Over(partition by dept_id) 
from 
employee_demographics dem
join 
employee_salary sal
on dem.employee_id=sal.employee_id
;


select dem.employee_id,dem.first_name ,dept_id, sum(salary) Over(partition by dept_id order by dem.employee_id) as rolling_total 
from 
employee_demographics dem
join 
employee_salary sal
on dem.employee_id=sal.employee_id
;


select *, sum(salary) over(order by dem.employee_id) as sumAge  from employee_demographics dem 
join employee_salary sal on sal.employee_id=dem.employee_id;

select *, 
row_number() over(partition by gender order by salary desc) as rowNum,
rank() over(partition by gender order by salary desc) as rankNum,
dense_rank() over(partition by gender order by salary desc) as denseRankNum
from employee_demographics dem 
join employee_salary sal on sal.employee_id=dem.employee_id;
