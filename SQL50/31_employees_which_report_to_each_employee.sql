# Write your MySQL query statement below

WITH manager_table AS
(
SELECT
    reports_to AS manager_id,
    COUNT(reports_to) AS reports_count,
    AVG(age) average_age 
FROM Employees
GROUP BY reports_to
HAVING reports_count > 0
)

SELECT
    manager_id AS employee_id,
    name,
    reports_count,
    ROUND(average_age) AS average_age
FROM manager_table m
JOIN Employees e
ON m.manager_id = e.employee_id
ORDER BY employee_id;