DROP TABLE book;
CREATE TABLE book
    (bookNo INT(10), bookName VARCHAR(20), Author VARCHAR(10), Price FLOAT(20));
INSERT INTO book(bookNo, bookName, Author, Price)
VALUES(101,'JAVA','TM Lee',699.50), 
    (102,'C++','Swami',399), 
    (103,'C','Hartz',250.50);
SELECT * FROM book;
SELECT * FROM book WHERE Price > 500;
UPDATE book SET Price=Price+50 WHERE 1;
SELECT * FROM book;
DELETE FROM book WHERE bookNo=102;
SELECT * FROM book;