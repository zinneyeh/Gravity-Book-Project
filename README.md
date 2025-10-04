 Which language should they discontinue stocking?
Query Used:

SELECT book_language.language_id, language_name, COUNT(book.book_id) AS num_books
FROM book
JOIN book_language ON book.language_id = book_language.language_id
GROUP BY book_language.language_id
ORDER BY num_books ASC;

## Why This Query?
This query counts the number of books available per language, ordered from least to most, helping identify languages with minimal inventory that could be discontinued.

Results Summary:
Languages like Dutch, Norwegian, Serbian, Galician, Turkish, Welsh, Gaelic, Arabic, Aleut, and Malaysian each have only 1 book, indicating low stock or demand.

Recommendation:
Discontinue languages with minimal inventory (1-2 books) to optimize stock and focus on high-demand languages like English, Spanish, and French.
What author should they pick for a special promotion?

Query Used:

SELECT a.author_name, COUNT(*) AS book_count
FROM book_author ba
JOIN author a ON ba.author_id = a.author_id
GROUP BY a.author_name
ORDER BY book_count DESC
LIMIT 1;


Why This Query?
Counts books per author to find the one with the largest catalog, indicating popularity and potential for promotion.

Results:
Stephen King has the most books (70), making him an ideal candidate.

Recommendation:
Focus promotion on Stephen King due to his wide catalog and strong market presence, allowing diverse marketing campaigns.

3. What 10 customers should the sales team contact?

Query Used:

SELECT c.customer_id, c.first_name, c.last_name, SUM(ol.price) AS total_spent
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN country cn ON a.country_id = cn.country_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;


Why This Query?
Aggregates total spending per customer to identify the top 10 highest spenders for targeted outreach.

Results:
Top customers include Rozamond Farrell, Modesta Gullefant, Pierrette Diess, among others.

Recommendation:
Prioritize these customers for loyalty programs and personalized promotions to maximize revenue.

4. Where should Gravity Books add a new warehouse?

Query 1: Top 10 cities by customer count

SELECT a.city, c.country_name, COUNT(*) AS customer_count
FROM customer_address ca
JOIN address a ON ca.address_id = a.address_id
JOIN country c ON a.country_id = c.country_id
GROUP BY c.country_name, a.city
ORDER BY customer_count DESC
LIMIT 10;


Query 2: Total customers in China and Sweden

SELECT c.country_name, COUNT(cus.customer_id) AS total_customers
FROM customer cus
JOIN customer_address ca ON cus.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN country c ON a.country_id = c.country_id
WHERE c.country_name IN ('China', 'Sweden')
GROUP BY c.country_name
ORDER BY total_customers DESC;


Analysis:

Chengguan, China, and Västerås, Sweden, tie as top cities by customers.

China has 589 total customers; Sweden has 94.

Recommendation:
Open the warehouse in Chengguan, China, due to its larger customer base and logistical advantages.

Summary

Discontinue low-stock languages with fewer than 3 books.

Promote Stephen King based on largest book catalog.

Target top 10 highest-spending customers for sales efforts.

Locate new warehouse in Chengguan, China for optimized shipping.

This analysis was conducted using SQL queries on the Gravity Books database to support business decision-making.


---
