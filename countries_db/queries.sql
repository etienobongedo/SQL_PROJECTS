-- Match cities to the countries & regions they're located 
SELECT cities.name AS City, countries.name AS Country, countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- fetching the inflation rate of countries and the years of occurrence using country codes and names
SELECT c.code country_code, name, year, inflation_rate
FROM countries AS c
INNER JOIN economies AS e
ON c.code = e.code

  -- countries and the languages they speak - both official and unofficial ones
SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
USING (code);

--countries where Bhojpuri language is spoken
SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
WHERE l.name = 'Bhojpuri'; --ANS: Mauritius & Nepal

--checking a relationship between fertility and unemployment rates
SELECT name,  fertility_rate, e.year, unemployment_rate
-- Inner join countries, economies and populations, aliased, on code
FROM countries AS c
INNER JOIN economies AS e
USING (code)
INNER JOIN populations AS p
ON c.code = p.country_code

