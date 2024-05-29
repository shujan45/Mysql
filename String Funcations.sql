select Length("sujan");

Select first_name,length(first_name) as Length_of_Name from employee_demographics order by 2 limit 5;

select upper("sky");
select lower("sky");

select ltrim('     s   ujan    ');
select trim(first_name) from employee_demographics;


select first_name,
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as month_employee_were_born
from employee_demographics order by 6;


select first_name, replace(first_name, 'a','z')
from employee_demographics;

select locate('s','sujan');

select 
locate('An', first_name) 
from employee_demographics ;

select first_name, last_name,
concat(first_name,'  ',last_name) as Full_Name
from employee_demographics;