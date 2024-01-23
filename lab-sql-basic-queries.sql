USE sakila;
# Display all available tables in the Sakila database.
SHOW tables;
# Retrieve all the data from the tables actor, film and customer.
Select * from actor, film, customer;
# 3.1 Titles of all films from the film table
select title from film;
# 3.2 List of languages used in films, with the column aliased as language from the language table
select * from language;
#3.3 List of first names of all employees from the staff table
select * from staff;
select first_name from staff;
# Retrieve unique release years.
Select * from film;
Select distinct release_year from film;
# 5.1 Determine the number of stores that the company has.
select * FROM STORE;
select count(*) as store_id from store;
# 5.2 Determine the number of employees that the company has.
select * from staff;
select count(*) as staff_id from staff;
#5.3 Determine how many films are available for rent and how many have been rented.
select count(*) film_id from film;
#and how many have been rented
select * from rental;
select count(*) as film_id from rental;
# Retrieve the 10 longest films.
select title from film order by length desc limit 10;
# 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name = "SCARLETT";
#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from film;
select * from film where title like "%ARMAGEDDON%";
#7.3 Determine the number of films that include Behind the Scenes content
select count(*) from film where special_features like "%Behind the Scenes%";