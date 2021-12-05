set serveroutput on;


declare
    msg varchar2(20) default 'capgemini';
begin
     msg := 'hello world how?';
     dbms_output.put_line(msg);
     dbms_output.put_line('hello world123');
end;