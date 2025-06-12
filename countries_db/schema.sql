-- Schema for Countries Database Project

-- Table: languages
CREATE TABLE languages (
    lang_id SERIAL PRIMARY KEY,
    code VARCHAR,
    name VARCHAR,
    percent REAL,
    official BOOLEAN
);

-- Table: populations
CREATE TABLE populations (
    pop_id SERIAL PRIMARY KEY,
    year INT,
    fertility_rate REAL,
    life_expentancy REAL,
    size REAL,
    country_code VARCHAR
);

-- Table: economies
CREATE TABLE economies (
    econ_id SERIAL PRIMARY KEY,
    imports REAL,
    exports REAL,
    year INT,
    gdp_percapita REAL,
    gross_savings REAL,
    inflation_rate REAL,
    total_investment REAL,
    unemployment_rate REAL,
    code VARCHAR,
    income_group VARCHAR
);

-- Table: countries
CREATE TABLE countries (
    code VARCHAR PRIMARY KEY,
    cap_lat REAL,
    surface_area REAL,
    indep_year INT,
    cap_long REAL,
    capital VARCHAR,
    local_name VARCHAR,
    gov_form VARCHAR,
    name VARCHAR,
    continent VARCHAR,
    region VARCHAR
);
