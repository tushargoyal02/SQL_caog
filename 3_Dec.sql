--
select * from employees;

-- DML oommands  -- CRUD ( create,retrieve update, delete
-- dml statement executed -> start the transaction
-- rollback or commit
    -- DDL or DCL commands
    -- close the sql developer or sql plus
    -- Crash
    
    
--commit;  permanent changes in database

SELECT
    *
FROM emp_cp;


insert into emp_cp values(106,'t',1000);
commit;
select * from emp_cp;

insert into emp_cp values(107,'tushar',1000);
delete from emp_cp where employee_id=100;
commit;
rollback;

select * from emp_cp;
--savepoint
insert into emp_cp values(108,'tushar',1000);
insert into emp_cp values(109,'tushar',1000);
delete from emp_cp where employee_id=101;
savepoint empCp_savepoint;
insert into emp_cp values(110,'tushar',1000);

rollback to savepoint empCp_savepoint;

commit;
rollback;


-- ddl ( create, alter, dropm, rename , truncate)

-- data types
-- varchar2(size) : 32767 | 4000 Variable length character data
-- char((size)   : fixed length character, 2,000

-- varchar2(20) : 20 bytes  -->  "tushar"

-- number[(p,n)]   number(10)
-- date



--ddl
drop table emptest;
create table emptest(eid number(4), ename varchar2(20), salary number(5,2), hiredate date default sysdate);

desc emptest;

insert into emptest(eid,ename,salary) values(100,'tushar',100);
select * from emptest;

Select * from user_tables;

select owner, table_name from all_tables where owner='HR';

--constraints
--not null
-- unique
-- primary key : Not null + unique ( index)  ->
-- check : 
--  foreign key


drop table emptest;

create table 
    emptest(eid number(4) primary key, ename varchar2(20) CONSTRAINT HR_EmpTest_Const_ename_UK unique,
    currentworking char(1) check (currentworking IN ('Y','N')) );

insert into emptest(eid,ename,currentworking) values(2,'capgemini1','N');
rollback;
select * from emptest;
desc emptest;


--  foreign key (course_id) references other_table(column)
-- alter statement
desc emptest;

alter table emptest
    add (newsalary number(5) default 0);
select * from emptest;

alter table emptest
    modify (newsalary varchar2(10));
update emptest set newsalary=null;

desc emptest;


-- sequences : Generate unique number
/*
create sequence sequence
    increment by | start with
    [max , minvalue, 
    cycle, nocycle]
*/


create sequence seq_emp
    start with 5
    increment by 5;

desc emptest;
insert into emptest values(seq_emp.nextval,'tushar','Y','100','10');
insert into emptest values(seq_emp.nextval,'tushar1','Y','100','10');

select seq_emp.nextval from dual;

insert into emptest values(seq_emp.nextval,'tushar6','Y','100');


select * from emptest;
--rollback;
--drop sequence seq_emp;


select * from emp_cp;

drop view emp_view;
create view emp_view
as 
select employee_id, first_name from emp_cp;

select * from emp_view;

insert into emp_view values(110,'th');
