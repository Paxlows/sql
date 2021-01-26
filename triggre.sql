create table std(name varchar(10), rollno number(3),mark1 number(3),
    mark2 number(3), mark3 number(3));
insert into std values('name','rollno','mark1','mark2','mark3');
Enter value for name: gowri
Enter value for rollno: 101
Enter value for mark1: 78
Enter value for mark2: 89
Enter value for mark3: 99
old 1: insert into std values('name','rollno','mark1','mark2','mark3')
new 1: insert into std values('gowri','101','78','89','99')

Enter value for name: prem
Enter value for rollno: 102
Enter value for mark1: 88
Enter value for mark2: 99
Enter value for mark3: 90
old 1: insert into std values('name','rollno','mark1','mark2','mark3')
new 1: insert into std values('prem','102','88','99','90')

Enter value for name: ravathi
Enter value for rollno: 103
Enter value for mark1: 67
Enter value for mark2: 89
Enter value for mark3: 99
old 1: insert into std values('name','rollno','mark1','mark2','mark3')
new 1: insert into std values('ravathi','103','67','89','99')

set serveroutput on;
declare
tot number;
average number;
cursor c is select * from std;
s std %ROWTYPE;
begin
open c;
dbms_output.put_line('Name Rollno Mark1 Mark2 Mark3 Total Average Grade');
loop
fetch c into s;
tot:=s.mark1+s.mark2+s.mark3;
average:=floor(tot/3);
if(c % notfound)then
exit;
else
if(s.mark1&lt;50 or s.mark2&lt;50 or s.mark3&lt;50)then
dbms_output.put_line(s.name||' '||s.rollno||' '||s.mark1||' '||s.mark2||' '||s.mark3||' '||tot||' '||average||' '||'F');
elsif(average&gt;=90 and average&lt;=100)then
dbms_output.put_line(s.name||' '||s.rollno||' '||s.mark1||' '||s.mark2||' '||s.mark3||' '||tot||' '||average||' '||'S');
elsif(average&gt;=80 and average&lt;90)then
dbms_output.put_line(s.name||' '||s.rollno||' '||s.mark1||' '||s.mark2||' '||s.mark3||' '||tot||' '||average||' '||'A+');
elsif(average&gt;=70 and average&lt;80)then
dbms_output.put_line(s.name||' '||s.rollno||' '||s.mark1||' '||s.mark2||' '||s.mark3||' '||tot||' '||average||' '||'B');
elsif(average&gt;=60 and average&lt;70)then
dbms_output.put_line(s.name||' '||s.rollno||' '||s.mark1||' '||s.mark2||' '||s.mark3||' '||tot||' '||average||' '||'C');
else
dbms_output.put_line(s.name||' '||s.rollno||' '||s.mark1||' '||s.mark2||' '||s.mark3||' '||tot||' '||average||' '||'D');
end if;
end if;
end loop;
close c;
end;
