# Write your MySQL query statement below

SELECT
    p.project_id,
    IFNULL(ROUND(SUM(e.experience_years) / COUNT(p.employee_id), 2), 0) average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;