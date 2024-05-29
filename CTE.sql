with CTEexample as
(
select gender, avg(salary) avgSalary, min(salary) minSalary, max(salary) maxSalary, count(salary) countSalary
from employee_demographics dem join employee_salary sal
on dem.employee_id =sal.employee_id group by gender
)
select avg(avgSalary) as TotalAvgSalary from CTEexample
;


select * from employee_demographics;

with CTExample1 as(
select *, sum(age) over(partition by gender) as avgAge from employee_demographics
),
CTExample2 as(
select * from employee_salary
)
select distinct * from CTExample1 join CTExample2 on CTExample1.employee_id=CTExample2.employee_id order by gender
;
