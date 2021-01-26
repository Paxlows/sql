create table student(id number,name varchar2(25),programme varchar2(25));
insert into students values(3,’robert’,’diploma’);
insert into students values(4,’tom’,’btech’);
insert into students values(5,’sunny’,’diploma’);
select * from students;
Declare
cursor stud is select * from students where programme =”diploma’;
id students.id%type;
name students.name%type
prog students.programme%type
begin
open stud;
loop
fetch stud into id,name,prog;
exit when stud%notfound;
insert into diploma values(id,name);
endloop;
end;