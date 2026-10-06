SQL> Create table Student12(StudentID int PRIMARY KEY, Name varchar(30), Age int,address varchar(30),salary int);

Table created.


SQL> Insert into Student12 values(1,'ramesh',32,'ahmadabad',2000.00);

1 row created.

SQL> Insert into Student12 values(2,'khilan',25,'delhi',1500.00);

1 row created.

SQL> Insert into Student12 values(3,'khaushik',23,'kota',2000.00);

1 row created.

SQL> Insert into Student12 values(4,'chaitali',25,'mumbai',6500.00);

1 row created.

SQL> Insert into Student12 values(5,'hardik',27,'bhopal',8500.00);

1 row created.

SQL> Insert into Student12 values(6,'komal',22,'mp',4500.00);

1 row created.


SQL> select*from student12;

 STUDENTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                            SALARY
------------------------------ ----------
         1 ramesh                                 32
ahmadabad                            2000

         2 khilan                                 25
delhi                                1500

         3 khaushik                               23
kota                                 2000


 STUDENTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                            SALARY
------------------------------ ----------
         4 chaitali                               25
mumbai                               6500

         5 hardik                                 27
bhopal                               8500

         6 komal                                  22
mp                                   4500


6 rows selected.


SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  total_rows number(2);
  3  BEGIN
  4  UPDATE student12 set salary=salary+500;
  5  IF sql%notfound THEN
  6  dbms_output.put_line('no students selected');
  7  ELSIF sql%found THEN
  8  total_rows := sql%rowcount;
  9  dbms_output.put_line( total_rows || 'students selected');
 10  END IF;
 11  END;
 12  /

6 students selected

PL/SQL procedure successfully completed.


SQL> select*from student12;

 STUDENTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                            SALARY
------------------------------ ----------
         1 ramesh                                 32
ahmadabad                            2500

         2 khilan                                 25
delhi                                2000

         3 khaushik                               23
kota                                 2500


 STUDENTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                            SALARY
------------------------------ ----------
         4 chaitali                               25
mumbai                               7000

         5 hardik                                 27
bhopal                               9000

         6 komal                                  22
mp                                   5000


6 rows selected.



SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  c_id student12.studentid%type;
  3  c_name student12.name%type;
  4  c_addr student12.address%type;
  5  CURSOR c_student12 IS
  6  SELECT studentid, name, address
  7  FROM student12;
  8  BEGIN OPEN c_student12;
  9  LOOP
 10  FETCH c_student12 INTO c_id, c_name, c_addr;
 11  EXIT WHEN c_student12%notfound;
 12  dbms_output.put_line(c_id || '' || c_name || '' || c_addr);
 13  END LOOP;
 14  CLOSE c_student12;
 15  end;
 16  /

1  ramesh    ahmadabad
2  khilan    delhi
3  khaushik  kota
4  chaitali  mumbai
5  hardik    bhopal
6  komal     mp

PL/SQL procedure successfully completed.

