-- stored procedure

create procedure largeSalaries()
select * from employee_salary where salary>=50000;
