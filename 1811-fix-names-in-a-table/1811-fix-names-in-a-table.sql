/* Write your T-SQL query statement below */
SELECT user_id, UPPER(LEFT(name, 1)) + LOWER(SUBSTRING(name, 2, LEN(name))) AS name
FROM Users
ORDER BY user_id

/*
    UPPER를 통해 맨 앞글자 LEFT(name, 1)을 통해 대문자로 변경
    LOWER와 SUBSTRING을 통해 맨 앞글자 제외 소문자로 변경
*/