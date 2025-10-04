3_top_customers.sql
-- Query: Top 10 customers by total spending
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(ol.price) AS total_spent
FROM
    customer c
JOIN
    cust_order co ON c.customer_id = co.customer_id
JOIN
    order_line ol ON co.order_id = ol.order_id
JOIN
    customer_address ca ON c.customer_id = ca.customer_id
JOIN
    address a ON ca.address_id = a.address_id
JOIN
    country cn ON a.country_id = cn.country_id
GROUP BY
    c.customer_id, c.first_name, c.last_name
ORDER BY
    total_spent DESC
LIMIT 10;
