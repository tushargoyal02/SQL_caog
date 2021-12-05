set serveroutput on;

declare
    sales number:=80;
    
begin
    if sales=10 then
        dbms_output.put_line('Sales value is:'|| sales);
    ELSIF sales=80 then
        dbms_output.put_line('Sales value is greater or equal:'|| sales);
    else
        dbms_output.put_line('Sales value is not found');
    end if;
    
    
end;