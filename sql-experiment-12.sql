DROP TABLE IF EXISTS EMP;
CREATE TABLE EMP(ID INT, NAME VARCHAR(20) NOT NULL, AGE INT, ADDRESS VARCHAR(20), SALARY INT);
INSERT INTO EMP(ID, NAME, AGE, ADDRESS, SALARY) VALUES(1, "Ramesh", 32, "Ahmedabad", 2000), (2, "Khilan", 25, "Delhi", 1500), (3, "Kaushik", 23, "Kota", 2000), (4, "Chaitall", 25, "Mumbai", 6500), (5, "Hardik", 27, "Bhopal", 8500), (6, "Komal", 22, "MP", 4500);
SELECT * FROM EMP;
delimiter $$
CREATE TRIGGER T_EMP
BEFORE UPDATE
ON EMP FOR EACH ROW
BEGIN
	SET NEW.SALARY=OLD.SALARY+500;
END$$
delimiter ;
SELECT * FROM EMP;
UPDATE EMP SET AGE=26 WHERE ID=2;
SELECT * FROM EMP;


		
