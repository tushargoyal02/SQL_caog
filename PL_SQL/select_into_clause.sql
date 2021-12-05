set SERVEROUTPUT ON;

declare
    v_name varchar2(20);
    
begin
    
    select first_name into v_name from emp_cp where employee_id=103;
    dbms_output.put_line(v_name);
    
end;