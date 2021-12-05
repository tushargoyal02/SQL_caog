

select * from employees;

select first_name,last_name from employees;

select first_name,employee_id, last_name
    from employees;
    

-- keyword & the fields are not case sensitive
SELECT first_name,Last_name from Employees;


-- null value are not same as zero or "a white space"   
-- any operation on null will get you null
select first_name, commission_pct, commission_pct*100 from employees;


-- concate & change the name of your columns (alias)
SELECT first_name|| ' ' ||Last_name as FullName from Employees;

-- define the structure of the table
describe employees;
desc employees;

/*
PROJECTION :selecting the columns from the table
SELECTION  : select the rows from the table
*/

select * from employees;

-- selection process operator: restriction 
-- where ( condition over the data)    where column_name=value

-- <>   != not equals to
select * from employees 
    where employee_id <> 100;
    

    
select first_name from employees where first_name>'A';

-- BETWEEN value and second value

select * from employees where manager_id between 125 and 145;

select first_name from employees where first_name > 'A' order by first_name;
select first_name from employees where first_name > 'Alc' order by first_name;

-- in operator  ( list of values)

-- 97 a- ,  A-65

select * from employees where manager_id in (120,125,145);

-- like : character pattern 
-- %  ( zero or more character together
--    _ (underscore  -- only 1 character

select * from employees;
select * from employees where first_name like 'J%';

-- first_name starting with J and ending with n
select * from employees where first_name like 'J%n';

select * from employees where first_name like '_o%n';

-- Logical operator and or 
-- truth
/*
x   y   xandy   xory
T   T   T       T
T   F   F       T
F   T   F       T
F   F   F       F
*/

select employee_id, first_name,department_id,salary from employees
    where salary>9000 and department_id=100;


select employee_id, first_name,department_id,salary from employees
    where salary>9000 or department_id=100;
    
    
-- get the data of employee job_id SA_REP or AD_PRES and salary > 10000;
select employee_id, first_name,salary,job_id from employees
    where (job_id='SA_REP' or job_id='AD_PRES') and salary>10000;
    
    
    
create table job_cp 
as select job_id from jobs;


select * from job_cp;

insert into job_cp values('PUS_CLERK');
insert into job_cp values('TUR_CLERK');

select * from job_cp where job_id like 'PU_%';