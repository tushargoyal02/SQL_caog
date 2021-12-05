set SERVEROUTPUT ON;

declare
    v_name emp_cp.first_name%type;
    v_sal  emp_cp.salary%type; 
    
begin
    
    select first_name,salary into v_name,v_sal from emp_cp where employee_id=103;
    dbms_output.put_line(v_name ||  ' '||v_sal );
    
end;