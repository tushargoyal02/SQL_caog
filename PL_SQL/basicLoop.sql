set serveroutput on;

declare 
    num1 number:=10;
    
begin
    LOOP
        dbms_output.put_line(num1);
        num1 := num1+5;
        
        exit when num1=20;
    END LOOP;
    
    DBMS_OUTPUT.put_line('Outside Loop');
end;