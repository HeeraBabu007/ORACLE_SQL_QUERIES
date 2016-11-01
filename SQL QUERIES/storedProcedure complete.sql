drop table employees;
create table employees( employee_id number, name varchar2(20), address varchar2(20));

insert into employees values(101, 'heera', 'delhi');
insert into employees values(102, 'heera singh', 'delhi');
insert into employees values(103, 'heera babu', 'delhi');
insert into employees values(104, 'heera Navi', 'delhi');


select * from employees;


CREATE PROCEDURE remove_emp (employee_id NUMBER) AS
   tot_emps NUMBER;
   BEGIN
      DELETE FROM employees
      WHERE employees.employee_id = remove_emp.employee_id;
   tot_emps := tot_emps - 1;
   END;
/


execute remove_emp(101);

select * from employees;

ALTER PROCEDURE remove_emp
   COMPILE;
   
drop PROCEDURE remove_emp;
SET serveroutput ON
CREATE OR REPLACE PROCEDURE p1(
        i_employee_id IN employees.employee_id%type,
        o_name OUT employees.name%type)
    AS
    BEGIN
      SELECT name INTO o_name FROM employees WHERE employee_id = i_employee_id;
    END;
    /
    
  CREATE OR REPLACE
  PROCEDURE p2(i_employee_id IN employees.employee_id%TYPE,
      o_name OUT employees.name%type)
  AS
  BEGIN
    p1(103, o_name);
    dbms_output.put_line('Inside P2 : Procedure P1 output is '||o_name);
  END;
  /
  
DECLARE
      i_employee_id employees.employee_id%TYPE := 103;
      o_name employees.name%type;
    BEGIN
      p2(i_employee_id, o_name);
END;/
    
    