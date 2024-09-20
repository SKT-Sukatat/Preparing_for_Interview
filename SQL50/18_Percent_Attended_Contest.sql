# Write your MySQL query statement below

WITH count_all_user AS(
    SELECT
        COUNT(user_id) count_users
    FROM Users 
)

SELECT
    r.contest_id,
    IFNULL(ROUND(COUNT(DISTINCT r.user_id)*100 / c.count_users, 2), 0) percentage
FROM Users u
LEFT JOIN Register r
ON u.user_id = r.user_id
CROSS JOIN count_all_user c
GROUP BY r.contest_id
HAVING contest_id IS NOT NULL
ORDER BY percentage DESC, r.contest_id ASC;