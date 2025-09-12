/* Write your T-SQL query statement below */
-- 2020년에 로그인 안했으면 포함 x, 2020년에 로그인 한 사람 중 가장 최근 것 뽑아오기
WITH CTE_TEMP AS (
    SELECT * FROM Logins WHERE YEAR(time_stamp) = 2020
)

SELECT user_id, MAX(time_stamp) AS last_stamp
FROM CTE_TEMP
GROUP BY user_id