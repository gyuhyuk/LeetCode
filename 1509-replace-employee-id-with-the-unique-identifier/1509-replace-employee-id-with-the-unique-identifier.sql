/* Write your T-SQL query statement below */

SELECT eu.unique_id, e.name
FROM Employees e LEFT JOIN EmployeeUNI eu ON e.id = eu.id

/*
    Employees를 기준으로 LEFT JOIN
    Employees의 id = EmployeeUNI의 id
*/