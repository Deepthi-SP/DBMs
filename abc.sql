DELIMITER //
create procedure abc(IN vid int(10),IN vname varchar(20),IN age int(10),IN city varchar(20),IN state varchar(20))
begin
declare msg varchar(40);
if age>=18 then
insert into voter (vid,vname,age,addr)
values(vid,vname,age,city);
set msg="row inserted";
else
set msg="voter not eligible";
end if;
select msg; 
end //
DELIMITER ;
