--QUESITION 1 -- help
select first_name, last_name
from customer 
inner join address 
on customer.address_id = address.address_id 
where district = 'Texas'

-- QUESTION 2 --
select payment_id, amount
from payment 
where amount > 6.99;

--QUESTION 3--
select *
from customer 
where customer_id in (
	select customer_id 
	from payment 
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
);

--QUESTION 4--
select * 
from customer 
where address_id in (
	select address_id 
	from address 
	where city_id in(
		select city_id
		from city 
		where country_id in(
			select country_id
			from country 
			where country = 'Nepal'
		)
	)
);


--QUESTION 5-- 
select first_name, last_name, count(payment.staff_id)
from staff 
inner join payment 
on staff.staff_id = payment.staff_id 
group by first_name, last_name
order by count(payment.staff_id) desc

--QUESTION 6--
select rating ,count(film_id)
from film
group by rating; 

--QUESTION 7-- 
select *
from customer 
where customer_id in (
	select customer_id 
	from payment
	where amount > 6.99
	group by customer_id 
	having count(*) = 1
	
);

--QUESTION 8--
select count(rental_id)
from payment
where amount = 0


   
   
   