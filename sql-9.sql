USE sakila;

-- 1. How many distinct (different) actors' last names are there?
SELECT DISTINCT count(last_name) FROM sakila.actor;


-- 2. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *,  
CASE
when weekday(rental_date) < 6 then 'workday' 
else 'weekend' 
end as day_type  
FROM sakila.rental;


-- 3. Get all films with ARMAGEDDON in the title.
SELECT * FROM sakila.film
WHERE title LIKE '%%ARMAGEDDON%%';

-- 4. Get 10 the longest films.
SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10; 

-- 5. How many films include Behind the Scenes content?



-- STILL IN PROGRESS, I NEED TO SLEEP