set SERVEROUTPUT ON;


declare 
    cursor emp_cur is 
        select * from employees;
        
    emp_detail employees%rowtype;
    
begin   
    open emp_cur;
    
    fetch emp_cur into emp_detail;
    dbms_output.put_line(emp_detail.first_name);
    
    while emp_cur%FOUND
        loop
            dbms_output.put_line(emp_detail.first_name|| ' ' ||emp_detail.salary);
            fetch emp_cur into emp_detail;
        end loop;
    close emp_cur;
    
end;
    
    