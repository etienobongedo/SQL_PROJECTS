--TO EXPLORE YOUR DB

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE table_schema = ‘public’
---displays all info about all tables in a db whose schema is rendered ‘public’

--to view the various column names & their datatype in a particular table in a db. Input the name of the table in the vacant space
SELECT column_name, data_type
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = ‘…’

--to get an overview of the data in each table
SELECT *
FROM /table_name/

--count of records in the people table
SELECT COUNT(*) AS total_records
FROM people;

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
WHERE release_year > 2000

--number of films in Spanish
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish'

-- title and release_year for all German-language films released before 2000
SELECT title,  release_year
FROM films
WHERE language = 'German' AND release_year < 2000

--title and release_year of films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000

-- films (title & release_year) over two hours long released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000) AND duration > 120;

-- Count of English-language films with unique titles released between 1990 & 1999 rated for teens (having certifications of G, PG, and PG-13)
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
WHERE release_year BETWEEN 1990 AND 1999
	AND language = 'English'
	AND certification IN ('G', 'PG', 'PG-13');

-- average duration of all films grouped by the decade in which they were released
SELECT AVG(duration) as average_duration, TRUNC(release_year, -1)
FROM films
GROUP BY 2
ORDER BY 2 ASC;

--identifying each person by name, the role they play, and in what movie. Ordered by the movie title
SELECT people.name, roles.role, films.title
FROM people
INNER JOIN roles
ON roles.person_id = people.id 
INNER JOIN films
ON films.id = roles.film_id
ORDER BY 3 ASC
