# Write your MySQL query statement below

SELECT
    product_id,
    new_price as price
FROM Products
WHERE (product_id,change_date) IN (SELECT product_id , max(change_date) AS date FROM Products WHERE change_date <='2019-08-16' group by product_id)
UNION
SELECT
    DISTINCT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM Products WHERE change_date <='2019-08-16')