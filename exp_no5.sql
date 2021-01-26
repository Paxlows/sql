DROP TABLE BOOK;
CREATE TABLE BOOK
    (BookNo INT(10), BookName VARCHAR(20), Category VARCHAR(20), Price FLOAT(20));
INSERT INTO BOOK(BookNo, BookName, Category, Price)
VALUES(101,'JAVA',' Computer',699.50), 
    (102,'Digital',' Electronics',399), 
    (103,'C',' Computer',250.50);
SELECT * FROM BOOK;
SELECT BookNo , BookName , Category FROM BOOK WHERE Price = (SELECT MIN(Price) FROM BOOK);
SELECT Category, AVG(Price) FROM BOOK GROUP BY Category;
