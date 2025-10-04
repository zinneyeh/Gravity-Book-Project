# Gravity Books Data Analysis

This repository contains SQL queries and insights derived from the Gravity Books database to help optimize inventory, promotions, customer outreach, and logistics.

---

## Table of Contents
- [1. Language Discontinuation](#1-language-discontinuation)
- [2. Author Promotion](#2-author-promotion)
- [3. Top Customers to Contact](#3-top-customers-to-contact)
- [4. Warehouse Location Recommendation](#4-warehouse-location-recommendation)
- [5. Additional Insights](#5-additional-insights)
- [6. References](#6-references)

---

## 1. Language Discontinuation

**Purpose:** Identify languages with the lowest number of books to consider discontinuing stocking.

**Summary:**  
Languages such as Dutch, Norwegian, Serbian, and several others each have only 1 or 2 books in stock, indicating low demand.

**Recommendation:**  
Discontinue stocking languages with very low inventory to focus resources on languages with higher demand (e.g., English, Spanish, French).

---

## 2. Author Promotion

**Purpose:** Find the author with the most books in the system to select for a special promotion.

**Result:**  
Stephen King has the highest number of books (70) in the inventory.

**Recommendation:**  
Leverage Stephen King’s large catalog for promotional campaigns to attract customers and increase sales.

---

## 3. Top Customers to Contact

**Purpose:** Identify the top 10 customers by total spending for targeted sales outreach.

**Result:**  
Top customers have spent between approximately $978 and $1,779.

**Recommendation:**  
Focus sales efforts on these high-value customers with personalized promotions and loyalty programs.

---

## 4. Warehouse Location Recommendation

**Purpose:** Determine the best city and country to locate a new warehouse for optimizing shipping.

**Result:**  
- Top cities by customer count: Västerås (Sweden) and Chengguan (China)  
- Total customers: China (589) vs. Sweden (94)

**Recommendation:**  
Open the warehouse in **Chengguan, China** to leverage the larger customer base and better logistical infrastructure.

---

## 5. Additional Insights

- The database follows normalization principles with many-to-many relationships to reduce redundancy.  
- Address duplication might exist; applying database constraints could improve data integrity.

---

## 6. References

- Guasch, C. G. (2024). *How to remove Duplicate Records & Data in SQL?* SQL Easy Tutorial.  
  [https://www.sql-easy.com/learn/how-to-remove-duplicates-in-sql/](https://www.sql-easy.com/learn/how-to-remove-duplicates-in-sql/)

---

## How to Use

- All SQL queries are included in the `/queries` directory.  
- Run queries against your Gravity Books database to reproduce results.

---

If you have any questions or want to contribute, feel free to open an issue or submit a pull request!

---


