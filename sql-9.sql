USE sakila;

-- 1. How many distinct (different) actors' last names are there?
SELECT DISTINCT a.first_name, a.last_name
FROM sakila.film f
JOIN sakila.film_actor fa
ON f.film_id = fa.film_id
JOIN sakila.actor a
ON fa.actor_id = a.actor_id
GROUP BY f.title
ORDER BY count(a.last_name) DESC;


-- STILL IN PROGRESS, I NEED TO SLEEP