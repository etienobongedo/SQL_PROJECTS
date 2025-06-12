--SCHEMA for the films database

CREATE TABLE films (
        id SERIAL PRIMARY KEY,
        title VARCHAR(256),
        release_year INTEGER,
        country VARCHAR(150),
        duration INTEGER,
        language VARCHAR(20),
        certification VARCHAR(15),
        gross BIGINT,
        budget BIGINT
  );
CREATE TABLE people (
        id SERIAL PRIMARY KEY,
        name VARCHAR(150),
        birthdate DATE,
        deathdate DATE
  );
CREATE TABLE reviews (
        id SERIAL PRIMARY KEY,
        film_id INTEGER REFERENCES films(id),
        num_user INTEGER,
        num_critic INTEGER,
        imdb_score REAL,
        num_votes INTEGER,
        facebook_likes INTEGER
   );
CREATE TABLE roles (
        id SERIAL PRIMARY KEY,
        film_id INTEGER REFERENCES films(id),
        person_id INTEGER REFERENCES people(id),
        role VARCHAR(15)
    );
