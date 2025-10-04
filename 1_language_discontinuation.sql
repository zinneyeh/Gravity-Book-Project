-- Query: Count books by language, ordered from least to most
SELECT
    l.language_id,
    l.language_name,
    COUNT(b.book_id) AS num_books
FROM
    language l
LEFT JOIN
    book b ON l.language_id = b.language_id
GROUP BY
    l.language_id, l.language_name
ORDER BY
    num_books ASC;
