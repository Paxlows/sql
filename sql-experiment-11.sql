delimiter $
drop procedure if exists fact;
create procedure fact()
begin
	declare
	f, i, n int;
	set n=3, i=1, f=1;
	while i<=n do
		set f=f*i;
		set i=i+1;
	end while;
	select f;
end $
delimiter ;
call fact
