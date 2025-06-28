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

