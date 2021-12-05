set SERVEROUTPUT ON;

declare
    v_empdetails emp_cp%ROWTYPE;
    
begin
    
    select * into v_empdetails from emp_cp where employee_id=103;
    dbms_output.put_line(v_empdetails.employee_id );
    
end;