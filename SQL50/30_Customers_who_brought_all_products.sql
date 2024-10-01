# Write your MySQL query statement below

WITH count_all_products AS
(
SELECT
    COUNT(DISTINCT product_key) product_count
FROM Product
),
product_of_customer AS
(
SELECT
    customer_id,
    COUNT(DISTINCT product_key) count_product_of_customer
FROM Customer
GROUP BY customer_id
)

SELECT
    customer_id
FROM count_all_products
CROSS JOIN product_of_customer
WHERE product_count = count_product_of_customer;