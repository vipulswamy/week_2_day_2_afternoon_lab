/*
 Lab| SQL Queries - Lesson 2.5
*/
USE sakila;
/*
Select all the actors with the first name ‘Scarlett’.
*/
select * from actor
where first_name = "scarlett";

/*
How many films (movies) are available for rent and how many films have been rented?
*/
-- assuming inventory_id and customer_id are unique
select inventory_id,customer_id from rental
order by inventory_id,customer_id; 
-- the records in inventory coloumns are not unique
-- so apply a unique function to inventory_id
select count(inventory_id) - count(distinct inventory_id) from rental; -- available movies
/*
What are the shortest and longest movie duration? Name the values max_duration and min_duration.
*/
select max(length) as max_duration, min(length) as min_duration from film;

/*
What's the average movie duration expressed in format (hours, minutes)?
*/
-- i tried to convert the average lenth into varchar before i formatted into a hour/min/second
select FORMAT(LTRIM(STR(avg(length))),'##-##-##') from film;

/*
How many distinct (different) actors' last names are there?
*/
/*
Since how many days has the company been operating (check DATEDIFF() function)?
*/
/*
Show rental info with additional columns month and weekday. Get 20 results.
*/
/*
Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
*/
/*
Get release years.
*/
/*
Get all films with ARMAGEDDON in the title.
*/
/*
Get all films which title ends with APOLLO.
*/
/*
Get 10 the longest films.
*/
/*
How many films include Behind the Scenes content?
*/