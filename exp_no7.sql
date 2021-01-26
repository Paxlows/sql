DROP TABLE Student;
DROP TABLE Book;
CREATE TABLE Student
    (Roll_no int unique,Name varchar(20) not null,Age int,Mark int default 0,check(Age>18)); 
CREATE TABLE Book
    (Book_no int primary key,Book_name varchar(30) not null,Price int default 100);
INSERT INTO Student (Roll_no,Name,Age,Mark)
VALUES (1,'Arun',20,58)
    ,(2,'devan',19,default);
INSERT INTO Book (Book_no, Book_name, Price)
VALUES (1,'The World of Ice and Fire',default)
    ,(2,'A Song of Ice and Fire',850);
SELECT * FROM Student;
SELECT * FROM Book;