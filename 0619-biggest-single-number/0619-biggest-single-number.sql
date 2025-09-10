/* Write your T-SQL query statement below */
WITH CTE_NUM AS (SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(*) = 1)

SELECT MAX(num) AS num
FROM CTE_NUM