-- Sample data for the schema

-- Sample data for films table
INSERT INTO films (title, release_year, country, duration, language, certification, gross, budget) VALUES
('Inception', 2010, 'USA', 148, 'English', 'PG-13', 829895144, 160000000),
('Parasite', 2019, 'South Korea', 132, 'Korean', 'R', 258700000, 11400000),
('Amélie', 2001, 'France', 122, 'French', 'R', 174200000, 10000000),
('Spirited Away', 2001, 'Japan', 125, 'Japanese', 'PG', 395580000, 19000000),
('The Godfather', 1972, 'USA', 175, 'English', 'R', 250341816, 6000000);

-- Sample data for people table
INSERT INTO people (name, birthdate, deathdate) VALUES
('Christopher Nolan', '1970-07-30', NULL),
('Song Kang-ho', '1967-01-17', NULL),
('Audrey Tautou', '1976-08-09', NULL),
('Rumi Hiiragi', '1987-08-01', NULL),
('Marlon Brando', '1924-04-03', '2004-07-01');

-- Sample data for roles table
INSERT INTO roles (film_id, person_id, role) VALUES
(1, 1, 'Director'),           -- Christopher Nolan, Inception
(1, 6, 'Actor'),              -- Leonardo DiCaprio, Inception
(2, 2, 'Director'),           -- Bong Joon-ho, Parasite
(3, 3, 'Director'),           -- Jean-Pierre Jeunet, Amélie
(4, 9, 'Actor'),              -- Rumi Hiiragi, Spirited Away
(5, 10, 'Actor');             -- Marlon Brando, The Godfather

-- Sample data for reviews table
INSERT INTO reviews (film_id, num_user, num_critic, imdb_score, num_votes, facebook_likes) VALUES
(1, 1200, 350, 8.8, 2200000, 1500000),    -- Inception
(2, 950, 210, 8.5, 700000, 800000),       -- Parasite
(3, 800, 160, 8.3, 700000, 500000),       -- Amélie
(4, 1100, 200, 8.6, 800000, 650000),      -- Spirited Away
(5, 1300, 400, 9.2, 1800000, 900000);     -- The Godfather
