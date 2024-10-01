# Write your MySQL query statement below

WITH emp_one_department AS
(
    SELECT
        employee_id,
        department_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(employee_id) = 1
),
emp_primary_flag AS
(
    SELECT
        employee_id,
        department_id
    FROM Employee
    WHERE primary_flag = 'Y'
)

SELECT * FROM emp_one_department
UNION
SELECT * FROM emp_primary_flag;