
SQL>  CREATE SEQUENCE student_seq2 START WITH 1 INCREMENT BY 1;

Sequence created.


SQL>  CREATE TABLE students21 (student_id INT PRIMARY KEY, student_name varchar(100),student_email varchar(100));

Table created.


SQL> INSERT INTO students21 (student_id, student_name, student_email) values(student_seq2.nextval,'alice johnson','alice@example.com');

1 row created.

SQL>  INSERT INTO students21 (student_id, student_name, student_email) VALUES (student_seq2.NEXTVAL, 'Bob Smith', 'bob@example.com');

1 row created.

SQL> INSERT INTO students21 (student_id, student_name, student_email) VALUES (student_seq2.NEXTVAL, 'Charlie Brown', 'charlie@example.com');

1 row created.


SQL> select*from students21;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
alice johnson
alice@example.com

         2
Bob Smith
bob@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------

         3
Charlie Brown
charlie@example.com


SQL> CREATE VIEW student21_view AS SELECT student_id, student_name, student_email FROM students21;

View created.



SQL> INSERT INTO students21 (student_id, student_name, student_email) values(student_seq2.nextval,'diana prince','diana@example.com');

1 row created.


SQL> select*from students21;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
alice johnson
alice@example.com

         2
Bob Smith
bob@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------

         3
Charlie Brown
charlie@example.com

         4
diana prince

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
diana@example.com


SQL> UPDATE students21 SET student_email = 'new_bob@example.com' WHERE student_name ='Bob Smith';

1 row updated.


SQL> SELECT*FROM STUDENTS21;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
alice johnson
alice@example.com

         2
Bob Smith
new_bob@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------

         3
Charlie Brown
charlie@example.com

         4
diana prince

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
diana@example.com


SQL> DELETE FROM students21 WHERE student_name = 'Charlie Brown';

1 row deleted.



SQL> SELECT * FROM student_view21;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
alice johnson
alice@example.com

         2
bob smith
new_bob@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------

         4
diana prince
diana@example.com


SQL> CREATE INDEX indx_student_email ON students21 (student_email);

Index created.


SQL> SELECT * FROM students21;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
alice johnson
alice@example.com

         2
Bob Smith
new_bob@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------

         4
diana prince
diana@example.com


