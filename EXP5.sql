SQL> SET SERVEROUTPUT ON;
SQL> CREATE OR REPLACE PROCEDURE Sum_Proc(a IN number, b IN number) IS c number;
  2  BEGIN
  3  c := a + b;
  4  dbms_output.put_line('Sum of two nos = '|| c);
  5  END Sum_Proc;
  6  /

Procedure created.


SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  x number; y number;
  3  BEGIN
  4  x := &x;
  5  y := &y; Sum_Proc(x,y);
  6  END;
  7  /
Enter value for x: 10
old   4: x := &x;
new   4: x := 10;
Enter value for y: 30
old   5: y := &y; Sum_Proc(x,y);
new   5: y := 30; Sum_Proc(x,y);
Sum of two nos = 40                                                             

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT ON;
SQL> CREATE OR REPLACE FUNCTION Sum_Func (a IN number, b IN number) RETURN number
  2  IS c number;
  3  BEGIN
  4  c := a + b; RETURN c;
  5  END Sum_Func;
  6  /

Function created.



SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  no1 number;
  3  no2 number;
  4  result
  5  number;
  6  BEGIN
  7  no1 := &no1;
  8  no2 := &no2;
  9  result := Sum_func(no1,no2);
 10  dbms_output.put_line('Sum of two nos='||result);
 11  END;
 12  /
Enter value for no1: 5
old   7: no1 := &no1;
new   7: no1 := 5;
Enter value for no2: 5
old   8: no2 := &no2;
new   8: no2 := 5;
Sum of two nos=10                                                               

PL/SQL procedure successfully completed.

