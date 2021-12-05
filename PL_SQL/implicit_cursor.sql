set serveroutput on;

declare 
    v_num number(4) :=0;
    
begin
    update emptest 
        set salary=100 where eid=101;
        
    if SQL%FOUND then
        dbms_output.put_line(SQL%ROWCOUNT);
    elsif SQL%NOTFOUND then
        dbms_output.put_line('Number of records affected:' || SQL%ROWCOUNT);
    end if;
    
end;