# Write your MySQL query statement below

SELECT
    s.user_id,
    ROUND(SUM(CASE WHEN cf.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(s.user_id), 2) confirmation_rate
FROM Signups s
LEFT JOIN Confirmations cf
ON s.user_id = cf.user_id
GROUP BY s.user_id;