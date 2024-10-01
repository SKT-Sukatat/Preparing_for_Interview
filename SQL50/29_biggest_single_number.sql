# Write your MySQL query statement below

WITH FIND_SINGLE_NUMBER AS
(
    SELECT
        num AS single_num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

SELECT
    IFNULL(MAX(single_num), null) AS num
FROM FIND_SINGLE_NUMBER;