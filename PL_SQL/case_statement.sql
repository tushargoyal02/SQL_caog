set serveroutput on;

declare
    sales number:=880;
    
begin

    case sales
        when 10 then
            dbms_output.put_line('Sales value is:'|| sales);
        when 80 then
            dbms_output.put_line('Sales value is 80 :'|| sales);
        else
            dbms_output.put_line('Sales value is not found');
    end case;
    
    
end;