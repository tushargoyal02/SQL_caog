set serveroutput on;

begin
    
    for num1 in 1..10
        LOOP
            dbms_output.put_line(num1);
        End loop;
    
    DBMS_OUTPUT.put_line('Outside Loop');
end;