-- Sample data for countries table
INSERT INTO countries (code, cap_lat, surface_area, indep_year, cap_long, capital, local_name, gov_form, name, continent, region)
VALUES
  ('NGA', 9.05785, 923768, 1960, 7.49508, 'Abuja', 'Nigeria', 'Federal Republic', 'Nigeria', 'Africa', 'Western Africa'),
  ('USA', 38.89511, 9833517, 1776, -77.03637, 'Washington D.C.', 'United States', 'Federal Republic', 'United States of America', 'North America', 'Northern America'),
  ('BRA', -15.79389, 8515767, 1822, -47.88278, 'Brasília', 'Brasil', 'Federal Republic', 'Brazil', 'South America', 'South America');

-- Sample data for populations table
INSERT INTO populations (year, fertility_rate, life_expentancy, size, country_code)
VALUES
  (2020, 5.3, 54.3, 206139589, 'NGA'),
  (2020, 1.8, 78.5, 331002651, 'USA'),
  (2020, 1.7, 75.9, 212559417, 'BRA'),
  (2010, 5.6, 48.5, 158503197, 'NGA'),
  (2010, 2.0, 76.3, 309349689, 'USA'),
  (2010, 1.9, 73.8, 195713635, 'BRA');

-- Sample data for economies table
INSERT INTO economies (imports, exports, year, gdp_percapita, gross_savings, inflation_rate, total_investment, unemployment_rate, code, income_group)
VALUES
  (49000, 34000, 2020, 2222.5, 13.2, 13.2, 15.3, 9.7, 'NGA', 'Lower middle income'),
  (2600000, 2100000, 2020, 63583.6, 17.8, 1.2, 20.5, 7.8, 'USA', 'High income'),
  (180000, 220000, 2020, 8920.7, 14.6, 3.2, 18.6, 13.5, 'BRA', 'Upper middle income'),
  (32000, 21000, 2010, 1540.0, 9.1, 11.2, 13.0, 8.2, 'NGA', 'Lower middle income'),
  (1900000, 1300000, 2010, 48200.0, 19.0, 1.6, 21.1, 9.8, 'USA', 'High income'),
  (120000, 130000, 2010, 5750.0, 15.3, 5.0, 19.9, 7.0, 'BRA', 'Upper middle income');

-- Sample data for languages table
INSERT INTO languages (code, name, percent, official)
VALUES
  ('NGA', 'English', 53.0, true),
  ('NGA', 'Hausa', 18.0, false),
  ('NGA', 'Yoruba', 15.0, false),
  ('NGA', 'Igbo', 14.0, false),
  ('USA', 'English', 78.0, true),
  ('USA', 'Spanish', 13.0, false),
  ('BRA', 'Portuguese', 97.0, true),
  ('BRA', 'Spanish', 1.0, false);

-- Done!
