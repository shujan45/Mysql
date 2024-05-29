Delimiter $$
create trigger employee_insert 
	After insert on employee_salary 
    For each row 
Begin
	Insert into employee_demographics (employee_id, first_name, last_name)
    values (New.employee_id, new.first_name, new.last_name);
End $$
delimiter ;

-- triger while deleting employee from table
delimiter $$
create trigger delete_employee
	after delete on employee_demographics
    for each row
begin
	delete from employee_salary where employee_id=old.employee_id;
end $$
delimiter ;

drop trigger if exists delete_employee;

delete from employee_demographics where employee_id=15;

select * from employee_salary;



-- events

select * from employee_demographics;

delimiter $$
create event delete_retiress
On schedule every 30 second
DO
Begin
	Delete from employee_demographics where age>=60;
End $$
Delimiter ;

select * from employee_salary;
insert into employee_salary values(15,'Hero','Nepal','Office Manager','600000',1);
update employee_demographics set age=30, gender='Male'where employee_id=15;


show variables like 'event%';