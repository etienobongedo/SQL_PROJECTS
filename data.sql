-- Sample data for the Bookstore schema

INSERT INTO authors (name, bio) VALUES
('Jane Austen', 'Author of classic novels including Pride and Prejudice.'),
('George Orwell', 'Known for 1984 and Animal Farm.');

INSERT INTO books (title, author_id, published_year, price) VALUES
('Pride and Prejudice', 1, 1813, 12.99),
('1984', 2, 1949, 15.50),
('Animal Farm', 2, 1945, 9.99);
