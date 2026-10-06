
SQL> CREATE TABLE customer10(customerID INT PRIMARY KEY,name VARCHAR(50),age INT,address VARCHAR(100),salary INT);

Table created.

SQL> INSERT INTO customer10(customerID,name,age,address,salary)VALUES(1,'jeeva','19','amman kovil street','25000');

1 row created.

SQL> INSERT INTO customer10(customerID,name,age,address,salary)VALUES(2,'bhavan','29','sivan kovil street','35000');

1 row created.

SQL> INSERT INTO customer10(customerID,name,age,address,salary)VALUES(3,'akash','39','murugan kovil street','45000');

1 row created.

SQL> INSERT INTO customer10(customerID,name,age,address,salary)VALUES(4,'jeevanantham','49','parumal kovil street','55000');

1 row created.

SQL> INSERT INTO customer10(customerID,name,age,address,salary)VALUES(5,'gowtham','18','raja kovil street','85000');

1 row created.


SQL> SELECT*FROM customer10;

CUSTOMERID NAME                                                      AGE
---------- -------------------------------------------------- ----------
ADDRESS
--------------------------------------------------------------------------------
    SALARY
----------
         1 jeeva                                                      19
amman kovil street
     25000

         2 bhavan                                                     29
sivan kovil street
     35000

CUSTOMERID NAME                                                      AGE
---------- -------------------------------------------------- ----------
ADDRESS
--------------------------------------------------------------------------------
    SALARY
----------

         3 akash                                                      39
murugan kovil street
     45000

         4 jeevanantham                                               49
parumal kovil street

CUSTOMERID NAME                                                      AGE
---------- -------------------------------------------------- ----------
ADDRESS
--------------------------------------------------------------------------------
    SALARY
----------
     55000

         5 gowtham                                                    18
raja kovil street
     85000


SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  c_id customer.id%type:=5;
  3  c_name customer.name%type;
  4  c_addr customer.address%type;
  5  BEGIN
  6  SELECT name, address INTO c_name, c_addr
  7  FROM customer10 where customerID=c_id;
  8  dbms_output.put_line('name:'||c_name);
  9  dbms_output.put_line('address:'||c_addr);
 10  EXCEPTION
 11  WHEN no_data_found THEN
 12  dbms_output.put_line('no such customer!');
 13  WHEN others THEN
 14  dbms_output.put_line('error!');
 15  END;
 16  /
name:gowtham
address:raja kovil street

PL/SQL procedure successfully completed.


SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  c_id customers.id%type :=&cc_id;
  3  c_name customers.name%type; c_addr customers.address%type;
  4  ex_invalid_id EXCEPTION;
  5  BEGIN
  6  IF c_id<= 0 THEN RAISE ex_invalid_id;
  7  ELSE
  8  SELECT name, address INTO c_name, c_addr FROM customer10 WHERE customerID=c_id;
  9  DBMS_OUTPUT.PUT_LINE ('Name:'||c_name);
 10  DBMS_OUTPUT.PUT_LINE ('Address:'||c_addr);
 11  END IF;
 12  EXCEPTION
 13  WHEN ex_invalid_id THEN
 14  dbms_output.put_line('ID must be greater than zero!');
 15  WHEN no_data_found THEN dbms_output.put_line('No such customer!');
 16  WHEN others THEN dbms_output.put_line('Error!');
 17  END;
 18  /
Enter value for cc_id: -6
old   2: c_id customers.id%type :=&cc_id;
new   2: c_id customers.id%type :=-6;
ID must be greater than zero!

PL/SQL procedure successfully completed.

