-- Example: List all books with their authors

SELECT
    b.title,
    a.name AS author,
    b.published_year,
    b.price
FROM
    books b
JOIN
    authors a ON b.author_id = a.author_id
ORDER BY
    b.published_year;
