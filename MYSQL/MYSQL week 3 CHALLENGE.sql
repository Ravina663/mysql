use sakila
-- 1)query to select all record from table customer (schema - sakila).
select *from customer;

-- 2) query to select record from table customer for fields customer_id (Alias - ID), first_name (FName),
--  last_name (LName), email (EmailID) (schema - sakila).
select customer_id as ID,first_name as FNAME,last_name AS LNAME,email AS EmailID from customer;
 
 -- 3)
 select title from film where title like "A%r";
 
 -- 4) query to display first 100 records from table customer (schema - sakila)
 select *from customer limit 100;
 
 -- 5)
select payment_id, amount, round(amount) as Round_off, sqrt(amount) as Square_Root from payment;

