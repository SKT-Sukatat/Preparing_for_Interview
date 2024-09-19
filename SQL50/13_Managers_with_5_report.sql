# Write your MySQL query statement below

SELECT
    e.name,
    e.id,
    m.managerId
FROM Employee e
INNER JOIN Employee m
ON e.id = m.managerId;

SELECT name 
FROM Employee 
WHERE id IN (
    SELECT managerId 
    FROM Employee 
    GROUP BY managerId 
    HAVING COUNT(*) >= 5);