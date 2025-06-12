-- Example: Schema for a simple Bookstore

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INTEGER REFERENCES authors(author_id),
    published_year INTEGER,
    price NUMERIC(6,2)
);
