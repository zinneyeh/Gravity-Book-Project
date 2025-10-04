-- Query: Find author with the most books
SELECT
    a.author_name,
    COUNT(ba.book_id) AS book_count
FROM
    book_author ba
JOIN
    author a ON ba.author_id = a.author_id
GROUP BY
    a.author_name
ORDER BY
    book_count DESC
LIMIT 1;
