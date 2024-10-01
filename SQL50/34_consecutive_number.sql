# Write your MySQL query statement below
WITH lag_num AS
(
SELECT
    id,
    num,
    LEAD(num) OVER(ORDER BY id) AS lag_num_1,
    LEAD(num,2) OVER (ORDER BY id) AS lag_num_2,
    LEAD(num,3) OVER (ORDER BY id) AS lag_num_3
FROM Logs
),
case_1 AS
(
SELECT
    num AS ConsecutiveNums
FROM lag_num
WHERE num = lag_num_1 AND num = lag_num_2
),
case_2 AS
(
SELECT
    num AS ConsecutiveNums
FROM lag_num
WHERE num = lag_num_1 AND num = lag_num_2 AND lag_num_1 = lag_num_3
)

SELECT * FROM case_1
UNION
SELECT * FROM case_2;


-- Approach 2
SELECT distinct Num as ConsecutiveNums
FROM Logs
WHERE (Id + 1, Num) in (select * from Logs) and (Id + 2, Num) in (select * from Logs)


-- Approach 3
SELECT distinct(t1.num) as ConsecutiveNums 
FROM logs t1, logs t2 , logs t3
WHERE t1.id=t2.id+1 AND t2.id=t3.id+1 AND t1.num=t2.num AND t2.num=t3.num