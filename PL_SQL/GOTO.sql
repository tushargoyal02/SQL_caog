set serveroutput on;


begin
    GOTO second_hello;

    <<first_hello>>
    dbms_output.put_line('hello starting');
    goto last_hello;
    
    
    <<second_hello>>
    dbms_output.put_line('hello second block');
    goto first_hello;
    
    <<last_hello>>
    dbms_output.put_line('Hello this is my last block');
    
    
end;