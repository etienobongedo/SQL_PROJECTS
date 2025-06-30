-- Sample data for countries table
INSERT INTO countries (
    code, name, continent, region, surface_area, indep_year, local_name, gov_form, capital, cap_long, cap_lat
) VALUES
    ('NGA', 'Nigeria', 'Africa', 'Western Africa', 923768, 1960, 'Nigeria', 'Federal Republic', 'Abuja', 7.49508, 9.05785),
    ('USA', 'United States of America', 'North America', 'Northern America', 9833517, 1776, 'United States', 'Federal Republic', 'Washington D.C.', -77.03637, 38.89511),
    ('BRA', 'Brazil', 'South America', 'South America', 8515767, 1822, 'Brasil', 'Federal Republic', 'Brasília', -47.88278, -15.79389);

-- Sample data for languages table
INSERT INTO languages (
    lang_id, code, name, percent, official
) VALUES
    (1, 'NGA', 'English', 53.0, TRUE),
    (2, 'NGA', 'Igbo', 14.0, FALSE),
    (3, 'USA', 'English', 78.0, TRUE),
    (4, 'USA', 'Spanish', 13.0, FALSE),
    (5, 'BRA', 'Portuguese', 97.0, TRUE),
    (6, 'BRA', 'Spanish', 1.0, FALSE);

-- Sample data for economies table
INSERT INTO economies (
    econ_id, code, year, income_group, gdp_percapita, gross_savings, inflation_rate, total_investment, unemployment_rate, exports, imports
) VALUES
    (1, 'NGA', 2020, 'Lower middle income', 2222.5, 13.2, 13.2, 15.3, 9.7, 34000, 49000),
    (2, 'USA', 2020, 'High income', 63583.6, 17.8, 1.2, 20.5, 7.8, 2100000, 2600000),
    (3, 'BRA', 2020, 'Upper middle income', 8920.7, 14.6, 3.2, 18.6, 13.5, 220000, 180000),
    (4, 'NGA', 2010, 'Lower middle income', 1540.0, 9.1, 11.2, 13.0, 8.2, 21000, 32000),
    (5, 'USA', 2010, 'High income', 48200.0, 19.0, 1.6, 21.1, 9.8, 1300000, 1900000),
    (6, 'BRA', 2010, 'Upper middle income', 5750.0, 15.3, 5.0, 19.9, 7.0, 130000, 120000);

-- Sample data for populations table
INSERT INTO populations (
    pop_id, country_code, year, fertility_rate, life_expentancy, size
) VALUES
    (1, 'NGA', 2020, 5.3, 54.3, 206139589),
    (2, 'USA', 2020, 1.8, 78.5, 331002651),
    (3, 'BRA', 2020, 1.7, 75.9, 212559417),
    (4, 'NGA', 2010, 5.6, 48.5, 158503197),
    (5, 'USA', 2010, 2.0, 76.3, 309349689),
    (6, 'BRA', 2010, 1.9, 73.8, 195713635);
