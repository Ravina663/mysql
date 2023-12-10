-- 1. Write query to display result set shown in figure 1 using inner join (schema - sakila) 
use sakila;
select 
	ci.city_id,
    ci.city,
    co.country_id,
    co.country
from 
	city ci
		inner join
	country co on ci.country_id = co.country_id;


-- 2. Write query to join tables film, film_category and category using inner join. 
-- Result set should be like shown in figure 2 (schema - sakila)
 select 
	f.film_id,
    f.title,
    f.description,
    fc.category_id,
    c.name
from 
	film f 
		inner join
	film_category fc on f.film_id = fc.film_id
		inner join
	category c on fc.category_id = c.category_id;


-- 3. Write query to join tables film, inventory and film_text using left join.
-- Result set should be like shown in figure 3 (schema - sakila) 
select 
	f.film_id,
    f.title,
    f.description,
    i.inventory_id,
    ft.description
from
	film f 
		inner join
	inventory i on f.film_id=i.film_id
		inner join
	film_text ft on i.film_id=ft.film_id;
    
    
    -- 4. Write query to display the staff_id, first_name, last_name, payment amount, payment_date, rental_date and return_date from tables staff, payment and rental (schema - sakila) 
    select * from rental;
select 
	s.staff_id,
    s.first_name,
    s.last_name,
    p.amount,
    p.payment_date,
    r.rental_date,
    r.return_date
from
	staff s 
		inner join
	payment p on s.staff_id = p.staff_id
		inner join
	rental r on p.staff_id=r.staff_id;