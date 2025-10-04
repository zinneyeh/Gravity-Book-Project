-- Query: Top 10 cities by customer count
SELECT
    a.city,
    cn.country_name,
    COUNT(DISTINCT c.customer_id) AS customer_count
FROM
    customer c
JOIN
    customer_address ca ON c.customer_id = ca.customer_id
JOIN
    address a ON ca.address_id = a.address_id
JOIN
    country cn ON a.country_id = cn.country_id
GROUP BY
    a.city, cn.country_name
ORDER BY
    customer_count DESC
LIMIT 10;
