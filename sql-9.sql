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
SELECT count(film_id) FROM sakila.film
WHERE special_features LIKE '%%Behind the Scenes%%';

SELECT * FROM sakila.film;
-- 6. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, AVG(length) > 120 FROM sakila.film
GROUP BY rating;

-- 7. Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
SELECT title, length, rental_rate FROM sakila.film
ORDER BY length DESC;