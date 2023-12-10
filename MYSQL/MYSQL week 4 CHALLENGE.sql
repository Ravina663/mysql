--1. Write query to select film_id, title, length of title, description (to be displayed in upper case) from table film (schema - sakila)--
use sakila;
select film_id,title,length(title),upper(description) 'Description' from film;

--2. Write query to display result set shown in figure 1 from table film (schema - sakila).
select concat(upper(title),upper(title),upper(title)) title from film;

--3.Write query to display result set shown in figure 2 from table film (schema - sakila).
select film_id,title,description 'Description' from film;

--4.Write query to display result set shown in figure 3 from table film (schema - sakila).
select title,concat(reverse(title),reverse(title)) Codeword from film;

--5.Write query to display number of days since the last update in table actor (schema - sakila).
select datediff(current_date(),last_update) Number_of_days from actor;

--6. Write query to display result set shown in figure 4 from table customer (schema - sakila).
select create_date,date(create_date) Date,time(create_date) Time from customer;
