-- Matching cities to the countries & regions they're located 
SELECT 
  cities.name AS City, 
  countries.name AS Country, 
  countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- fetching the inflation rate of countries and the years of occurrence identified by country codes and names
SELECT 
  c.code country_code, 
  name, 
  year, 
  inflation_rate
FROM countries AS c
INNER JOIN economies AS e
ON c.code = e.code

  -- identifying languages spoken in each country and it's percentage in the population. 'official' column is a boolean
SELECT 
  c.name AS country, 
  l.name AS language, 
  percent,
  official
FROM countries AS c
INNER JOIN languages AS l
USING (code);

--identifying countries where Bhojpuri language is spoken
SELECT 
  c.name AS country, 
  l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
WHERE l.name = 'Bhojpuri';       --ANS: Mauritius & Nepal

--checking the relationship between fertility and unemployment rates on country and year
SELECT 
  name,  
  fertility_rate, 
  e.year, 
  unemployment_rate
-- Inner join countries, economies and populations, aliased, on code
FROM countries AS c
INNER JOIN economies AS e
USING (code)
INNER JOIN populations AS p
ON c.code = p.country_code
AND e.year = p.year;

-- fetching the population of each city - their country code, country name, & region located
SELECT                                                                   
    c1.name AS city,
    code,
    c2.name AS country,
    region,
    city_proper_pop
FROM cities AS c1
-- inner join used for country records only present in both tables    
INNER JOIN countries c2
ON c1.country_code = c2.code
ORDER BY code DESC;
     /*FOR LEFT JOIN */          SELECT 
                                  	  c1.name AS city, 
                                      code, 
                                      c2.name AS country,
                                      region, 
                                      city_proper_pop
                                  FROM cities AS c1
                                  -- left join returns all records on left table and matching records on right
                                  LEFT JOIN countries AS c2
                                  ON c1.country_code = c2.code
                                  ORDER BY code DESC;

-- gaining insights into the standard of living (gdp_percapita) of each country in the year 2010
SELECT 
  name, 
  region, 
  gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match both tables on the country's code fields
USING(code)
-- Filter for the year 2010
WHERE year = 2010;

-- calculating the average standard of living (gdp_percapita) in each region in year 2010
SELECT 
  region, 
  AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
-- Group by the non-aggregated column (region)
GROUP BY region;

-- identifying all currencies (basic_unit) for each country in the North American region 
SELECT 
  name AS country, 
  code, 
  region, 
  basic_unit
FROM countries
FULL JOIN currencies
USING (code)
-- filter region for North America
WHERE region = 'North America'
ORDER BY country;

-- getting information for the regions Melanesia & Micronesia - the countries there, their languages and currency
SELECT 
  c1.name AS country, 
  region, 
  l.name AS language,
  basic_unit, 
  frac_unit
FROM countries as c1 
FULL JOIN languages AS l
USING (code)
FULL JOIN currencies AS c2
USING (code)
WHERE region LIKE 'M%esia';

-- countries with the lowest life expectancy for the year 2010
SELECT 
    c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year = 2010
-- Sort by life_exp
ORDER BY life_exp
-- Limit to five records
LIMIT 5;

-- A SELF JOIN on populations, comparing the change in the population size bw 2010 & 2015 census info given.
SELECT 
	p1.country_code, 
	p1.size AS size2010, 
	p2.size AS size2015
-- Join populations as p1 to itself, alias as p2, on country code
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code

	-- SET OPERATORS

-- joining the economies table and the populations table with duplicates
SELECT code, year
FROM economies
-- Set theory clause
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;

-- returning all cities that have the same name as a country
SELECT name
FROM cities
INTERSECT
SELECT name
FROM countries
ORDER BY name;			ANS: Singapore

-- returning all cities that do not have the same name as a country
SELECT name
FROM cities
EXCEPT
SELECT name
FROM countries
ORDER BY name;

-- A SEMI JOIN/ SUBQUERY tp get the distinct languages in the Middle East
SELECT DISTINCT name
FROM languages
-- using bracketed subquery as a filter
WHERE code IN
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;

-- An ANTI JOIN to get names & codes of Oceanian countries not in the currencies table
SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
  AND code NOT IN
    (SELECT code
    FROM currencies);

-- fetching population of countries with life_expectancy 1.15 times higher than the average for the year 2015
SELECT *
FROM populations
WHERE year = 2015
-- Filter for only those populations where life expectancy is 1.15 times higher than average
  AND life_expectancy > 1.15 *
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015);

-- identifying capital cities
SELECT name, country_code, urbanarea_pop
FROM cities
-- Filter for 'capital' on the countries table using a subquery 
WHERE name IN
    (SELECT capital
    FROM countries
    WHERE capital IS NOT NULL)
-- ordered by the highest populated capital city
ORDER BY urbanarea_pop DESC;

-- TOP nine countries with the most number of cities
SELECT 
	countries.name AS Country, 
	count(cities.name) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY countries.name
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, Country
-- Limit the results
LIMIT 9;

-- TOP 10 capital cities in Europe and the Americas by city_perc
SELECT 
	name, 
	country_code, 
	city_proper_pop, 
	metroarea_pop,
 	(city_proper_pop/metroarea_pop * 100) AS city_perc
FROM cities
-- Use subquery to filter for capital city
WHERE name IN 
    (SELECT capital
    FROM countries
    WHERE continent = 'Europe' OR continent LIKE '%America')
-- Add filter condition such that metroarea_pop does not have null values to avoid div0 error
    AND metroarea_pop IS NOT NULL
-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;
