-- 1. Write a single query to select payment_id, customer_id, staff_id, rental_id, amount from table payment (schema - sakila) which satisfies both below mentioned conditions.

-- Range for customer_id 10,20,30,40,50,60,70,80,90,100
-- staff_id is 2
use sakila;
select payment_id,customer_id,staff_id,rental_id ,amount 
from payment 
where customer_id in (10,20,30,40,50,60,70,80,90,100) and staff_id=2;


-- 2. Write query to display record of table film (schema - sakila) ordered by rating in descending order.
select * from film 
order by rating desc;

-- 3. Write a single query to display payment_id, amount and updated_amount from table payment (schema - sakila) which supports the result set with below mentioned criteria.

-- amount is greater than 5.0,
-- updated_amount is double of amount and rounded off
select payment_id,amount,round(amount*2,0) updated_amount 
from payment 
where amount>5.0 ;

-- 4. Write a single query to display below mentioned values from table payment for each customer (customer_id) (schema - sakila)

-- customer_id ,Total sum of the payment,Average of the payment,Standard deviation of the payment,Variance of the payment

select customer_id,sum(amount) 'Total sum of payment',
avg(amount) 'Average of payment',stddev(amount) 'Standard deviation of payment',var_pop(amount) 'Variance of payment' 
from payment group by customer_id;

-- 5. Write a query to display city_id, city, country_id from table city for country name starting with A and B (schema - sakila) (Hint: Use subquery).

select city_id,city,country_id from city 
where country_id = all 
(select country_id from country where country like 'A%' and country like 'B%');


-- 6. What is the difference between ANY and ALL keywords with respect to subquery in SQL? (MCQ)
-- a. ALL – Comparison with every value ANY – Comparison with atleast one value
-- b. ALL – Comparison with atleast one value ANY – Comparison with every value
-- c. ALL – Comparison with every value ANY – Comparison with atleast two value
-- d. ALL – Comparison with atleast two value ANY – Comparison with atleast one value
-- Answer: a.ALL – Comparison with every value, ANY – Comparison with atleast one value
