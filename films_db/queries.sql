								--TO EXPLORE YOUR DB

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE table_schema = ‘public’;
---displays all info about all tables in a db whose schema is rendered ‘public’

--to view the various column names & their datatype in a particular table in a db. Input the name of the table in the vacant space
SELECT column_name, data_type
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = ‘…’;

--to get an overview of the data in each table
SELECT *
FROM /table_name/;

-- unique languages in the films table
SELECT DISTINCT language
FROM films;

-- unique countries from the films table in alphabetical order
SELECT DISTINCT country as countries
FROM films
ORDER BY 1 ASC;

---title of movies released after year 2000
SELECT title
FROM films
WHERE release_year > 2000;

-- title and release_year for all German-language films released before 2000
SELECT title,  release_year
FROM films
WHERE language = 'German' AND release_year < 2000;

--title and release_year of films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;

-- films (title & release_year) over two hours long released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000) AND duration > 120;

-- displaying the duration of films in hours
SELECT title, duration/60.0 as duration_hours
FROM films;

--release year, duration, and title of films sorted by release year and duration
SELECT release_year, duration, title
FROM films
ORDER BY release_year, duration;

										--AGGREGATES

--count of records in the people table
SELECT COUNT(*) AS total_records
FROM people;

-- number of films per release_year
SELECT release_year, count(*) as film_count
FROM films
GROUP BY release_year;

-- average duration of films per release_year
SELECT release_year, AVG(duration) as avg_duration
FROM films
GROUP BY release_year;

---release_year with the most language diversity
SELECT release_year, COUNT(DISTINCT language)
FROM films
GROUP BY 1
ORDER BY 2 DESC;

--number of films in Spanish
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';

-- Count of English-language films with unique titles released between 1990 & 1999 rated for teens (having certifications of G, PG, and PG-13)
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
WHERE release_year BETWEEN 1990 AND 1999
	AND language = 'English'
	AND certification IN ('G', 'PG', 'PG-13');

-- average duration of all films grouped by the DECADE in which they were released
SELECT AVG(duration) as average_duration, TRUNC(release_year, -1)
FROM films
GROUP BY 2
ORDER BY 2 ASC;

--lowest gross film in 1990
SELECT MIN(gross) as lowest_gross
FROM films
WHERE release_year = 1990;

-- highest gross film released between 2000-2012
SELECT MAX(gross) as highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2013;

--average number of facebook_likes rounded to one decimal place
SELECT ROUND(AVG(facebook_likes), 1) as avg_facebook_likes
FROM reviews;

-- total average budget rounded to the thousands
SELECT ROUND(AVG(budget), -3) as avg_budget_thousands
FROM films;

-- country with the highest budget in each release_year
SELECT release_year, country, max(budget) as max_budget
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;

-- countries with highest average film_budget
SELECT country, ROUND(AVG(budget), 2) as average_budget
FROM films
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING ROUND(AVG(budget), 2) > 1000000000
ORDER BY average_budget DESC

--percentage of people who are no longer alive
SELECT count(deathdate) * 100.0 / 8397.0 AS percentage_dead
FROM people;

--the number of decades the films table covers
SELECT (max(release_year) - min(release_year)) / 10 AS number_of_decades
FROM films;		--ANS: 10

--title and duration of longest film
SELECT title, max(duration)
FROM films
WHERE duration IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;  --ANS:334mins

-- release_year of films with highest average budget and gross earnings each year after 1990 if the average budget is greater than 60 million.
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
ORDER BY avg_gross DESC
LIMIT 1;

										--JOINS

--identifying each person by name, the role they play, and in what movie. Ordered by the movie title
SELECT people.name, roles.role, films.title
FROM people
INNER JOIN roles
ON roles.person_id = people.id 
INNER JOIN films
ON films.id = roles.film_id
ORDER BY 3 ASC;
