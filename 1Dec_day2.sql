-- fetch clause

select * from hr.employees order by salary desc;

/*
-- fetch clause
select * from hr.employees
fetch first 5 rows only;


select * from hr.employees
fetch first 80 percent rows only;


select * from hr.employees
offset 5 rows fetch first 5 rows only;

*/

-- substitution variable

select * from employees where employee_id=&e_id;

select * from employees where first_name='&e_name';


define empid=100;
select * from employees where employee_id=&empid;

undefine empid;

-- empid2 = 103
select * from employees where employee_id=&&empid2;

-- Functions:
-- single row functions,    one row  --> function  -> output
-- functions [(arg1),(arg2)]
--- upper[args]  , instr(args1,(arg2),(arg3))

/*
character
number
date
data type conversion
genral task( handle null value)

*/
-- single row function on character ( case conversion function)
select first_name, upper(first_name),lower(last_name),initcap(lower(last_name))
    from employees;
    
-- character - manipulation function
select first_name, concat(first_name, last_name)
    from employees;

-- capgemini company  substr(col,m,n)
select first_name, substr(first_name,2,2)
    from employees;


-- instr ( index position of any character
select first_name,instr(first_name,'am',1,1) 
    from employees 
        where first_name='William';


-- dummy table which pseudo column

select 1+2 from dual;

select sysdate from dual;

-- trim clause 

select '    capgemini ' from dual;

select trim( Leading ' ' from '     capgemini     ') from dual;

select trim( 'c' from 'cccccap ccccgeminicccc') from dual;


-- number functions 


select round(10.5) from dual;
--  100
select round(642.998,-3) from dual;

select mod(2,3) from dual;

-- trunc


select * from employees;
desc employees;

select sysdate+3 from dual;

-- days working is done by a person from the hire_date
select first_name, hire_date,sysdate,
    round(sysdate-hire_date ),round ((sysdate-hire_date )/7) as weeksNo
    from employees;

-- add months
select hire_date,add_months(hire_date,4) from employees;

-- 
select current_date from dual;

Alter session set NLS_DATE_FORMAT='DD-MON-YYYY HH:MI:SS';