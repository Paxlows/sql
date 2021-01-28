delimiter $
drop procedure if exists addition;
create procedure addition()
begin
	declare
	a,b,c int;
	set a=10, b=20;
	set c=a+b;
	select c;
end $
delimiter ;
call addition
