
SQL> create table authors1(authorID INT PRIMARY KEY,firstname VARCHAR(50),lastname VARCHAR(50));

Table created.

SQL> INSERT INTO authors1(authorID,firstname,lastname)VALUES(1,'jeeva','nantham');

1 row created.

SQL> INSERT INTO authors1(AuthorID, FirstName, LastName) VALUES (2,'bhavan','chander');

1 row created.

SQL> INSERT INTO authors1(AuthorID, FirstName, LastName) VALUES (3,'gowtham','raj');

1 row created.

SQL> SELECT*FROM authors1;

  AUTHORID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
         1 jeeva
nantham

         2 bhavan
chander

         3 gowtham
raj



SQL> create table books1(bookID INT PRIMARY KEY,title VARCHAR(100),genre VARCHAR(50),publicationyear INT);

Table created.

SQL> INSERT INTO books1(bookID, title,genre,publicationyear)VALUES(1,'1984','jeeva',1949);

1 row created.

SQL> INSERT INTO books1(bookID, title,genre,publicationyear)VALUES(2,'brave new world','bhavan',1932);

1 row created.

SQL> INSERT INTO books1(bookID, title,genre,publicationyear)VALUES(3,'harry potter','gowtham',1997);

1 row created.

SQL> SELECT*FROM books1;

    BOOKID
----------
TITLE
--------------------------------------------------------------------------------
GENRE                                              PUBLICATIONYEAR
-------------------------------------------------- ---------------
         1
1984
jeeva                                                         1949

         2
brave new world
bhavan                                                        1932

    BOOKID
----------
TITLE
--------------------------------------------------------------------------------
GENRE                                              PUBLICATIONYEAR
-------------------------------------------------- ---------------

         3
harry potter
gowtham                                                       1997


SQL> CREATE TABLE Borrowers(brrowerID INT PRIMARY KEY,firstname VARCHAR(100),lastname VARCHAR(50),membershipdate DATE);

Table created.


SQL> INSERT INTO Borrowers(brrowerID, FirstName, LastName, MembershipDate)VALUES(1,'john','kumar',DATE'2023-01-01');

1 row created.

SQL> INSERT INTO Borrowers(brrowerID, FirstName, LastName, MembershipDate)VALUES(2,'raj','kumar',DATE'2023-03-20');

1 row created.


SQL> SELECT*FROM borrowers;

 BRROWERID
----------
FIRSTNAME
--------------------------------------------------------------------------------
LASTNAME                                           MEMBERSHI
-------------------------------------------------- ---------
         1
john
kumar                                              01-JAN-23

         2
raj
kumar                                              20-MAR-23

 BRROWERID
----------
FIRSTNAME
--------------------------------------------------------------------------------
LASTNAME                                           MEMBERSHI
-------------------------------------------------- ---------



SQL> CREATE TABLE bookauthors1(bookID INT,authorID INT,PRIMARY KEY(bookID,authorID),FOREIGN KEY(bookID)REFERENCES books1(bookID),FOREIGN KEY(authorID)REFERENCES authors1(authorID));

Table created.

SQL> INSERT INTO BookAuthors1(BookID, AuthorID)VALUES(1, 1);

1 row created.

SQL> INSERT INTO BookAuthors1(BookID, AuthorID)VALUES(2, 2);

1 row created.

SQL> INSERT INTO BookAuthors1(BookID, AuthorID)VALUES(3, 3);

1 row created.

SQL> SELECT*FROM bookauthors1;

    BOOKID   AUTHORID
---------- ----------
         1          1
         2          2
         3          3



SQL> CREATE TABLE BorrowedBooks1(brrowerID INT,BookID INT, BorrowedDate DATE,ReturnDate DATE, PRIMARY KEY(brrowerID, BookID),FOREIGN KEY(brrowerID)REFERENCES Borrowers(brrowerID),FOREIGN KEY(BookID)REFERENCES Books1(BookID));

Table created.

SQL> INSERT INTO BorrowedBooks1(brrowerID,BookID,BorrowedDate,ReturnDate)VALUES(1,1,DATE'2023-03-01',DATE'2023-03-20');

1 row created.

SQL> INSERT INTO BorrowedBooks1(brrowerID,BookID,BorrowedDate,ReturnDate)VALUES(2,3,DATE'2023-03-05',DATE'2023-03-15');

1 row created.

SQL> SELECT*FROM BorrowedBooks1;

 BRROWERID     BOOKID BORROWEDD RETURNDAT
---------- ---------- --------- ---------
         1          1 01-MAR-23 20-MAR-23
         2          3 05-MAR-23 15-MAR-23
