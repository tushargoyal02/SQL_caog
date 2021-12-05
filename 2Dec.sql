

select * from employees;


select
    employeeWorker.employee_id, employeeWorker.first_name,employeeWorker.manager_id,
    employeeManager.first_name
    from employees employeeWorker,
        employees employeeManager
        where employeeWorker.manager_id=employeeManager.employee_id;
        
-- subquery
select salary from employees where employee_id=114;

select * from employees where salary > 11000;

-- make this aas subquery

select * from employees
where salary > (select salary from employees where employee_id=114);


-- find out the first_name, last_name, salary of a person where job_id is equals to job-id of person
-- with last_name as 'John';
select job_id from employees where last_name='Abel' or last_name='Hall';
select * from employees where job_id='SA_REP';

select * from employees 
where job_id=(select job_id from employees where last_name='Abel');

select salary from employees where department_id in (60);
--
select * from employees 
where salary IN (select salary from employees where department_id=60);

select * from employees 
where salary >ALL (select salary from employees where department_id=60);


--   < any  ( less than the maximum of result set
--    > any  more than the min of result set
--    <ALL     ( less than the mini
--    > ALL     ( more than the maximum of result set


-- creating an dummy table 
create table emp_cp
as
select employee_id, first_name, salary from employees where employee_id between 100 and 105;

--drop table emp_cp;
--
select * from emp_cp;

-- DML  - insert, update, delete
-- insert into tableName [(col1,col2)] values [val1,(val2)]

insert into emp_cp(employee_id, salary) 
    values(106,100000);
    
insert into emp_cp 
    values(107,'tushar1',null);
    
-- update table set col=Val  [where condition]
update emp_cp set salary=109 where employee_id=100;
select * from emp_cp;

delete emp_cp;
rollback;