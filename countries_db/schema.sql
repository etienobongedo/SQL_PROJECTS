-- Table: countries
CREATE TABLE countries (
    code VARCHAR PRIMARY KEY,
    name VARCHAR,
    continent VARCHAR,
    region VARCHAR,
    surface_area REAL,
    indep_year INT,
    local_name VARCHAR,
    gov_form VARCHAR,
    capital VARCHAR,
    cap_long REAL,
    cap_lat REAL
);

-- Table: languages
CREATE TABLE languages (
    lang_id SERIAL PRIMARY KEY,
    code VARCHAR,
    name VARCHAR,
    percent REAL,
    official BOOLEAN
);

-- Table: economies
CREATE TABLE economies (
    econ_id SERIAL PRIMARY KEY,
    code VARCHAR,
    year INT,
    income_group VARCHAR,
    gdp_percapita REAL,
    gross_savings REAL,
    inflation_rate REAL,
    total_investment REAL,
    unemployment_rate REAL,
    exports REAL,
    imports REAL
);

-- Table: populations
CREATE TABLE populations (
    pop_id SERIAL PRIMARY KEY,
    country_code VARCHAR,
    year INT,
    fertility_rate REAL,
    life_expentancy REAL,
    size REAL
);

-- Table: cities
CREATE TABLE cities (
    name VARCHAR PRIMARY KEY,
    country_code VARCHAR,
    city_proper_pop REAL,
    metroarea_pop REAL,
    urbanarea_pop REAL
);

-- Table: currencies
CREATE TABLE currencies (
    curr_id INT PRIMARY KEY,
    code VARCHAR,
    basic_unit VARCHAR,
    curr_code VARCHAR,
    frac_unit VARCHAR,
    frac_perbasic REAL
);
