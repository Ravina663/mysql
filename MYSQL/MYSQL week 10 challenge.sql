/* 1. Write query to create procedure getaddress using cursor to fetch address from address table (schema – sakila).  

Query to use - SELECT address FROM  address;

Cursor Name – addressdetail */
use sakila;

delimiter $$
create  procedure getaddress(inout a varchar(16000))
begin
	declare finished int default 0;
    declare addresslist varchar(400) default '';
    
    declare addressdetails cursor for
		select address from address;
        
	declare continue handler for not found set finished =1;
    
    open addressdetails;
    loopstart:
    loop
		fetch addressdetails into addresslist;
        if finished = 1 then 
			leave loopstart;
		end if;
        
        set a = concat(addresslist,';',a);
	end loop loopstart;
    close addressdetails;
end$$
delimiter ;


set @a=' ';
call getaddress(@a);
select @a;

/* 2. Write query to create procedure getactorname using cursor to fetch first_name,last_name from actor table (schema – sakila).  

Query to use - SELECT first_name, last_name FROM  actor;

Cursor Name – actornamedetail*/

delimiter $$
create  procedure getactorname(inout firstname varchar(16000),inout lastname varchar(16000))
begin
	declare finished int default 0;
    declare firstnamelist varchar(400) default '';
    declare lastnamelist varchar(400) default '';
    
    declare actornamedetail cursor for
		select first_name,last_name from actor;
        
	declare continue handler for not found set finished =1;
    
    open actornamedetail;
    loopstart:
    loop
		fetch actornamedetail into firstnamelist,lastnamelist;
        if finished = 1 then 
			leave loopstart;
		end if;
        set firstname = concat(firstnamelist,';',firstname);
        set lastname = concat(lastnamelist,';',lastname);
	end loop loopstart;
    close actornamedetail;
end$$
delimiter $$

set @f='';
set @l='';
call getactorname(@f,@l);
select @f Firstname,@l Lastname;

