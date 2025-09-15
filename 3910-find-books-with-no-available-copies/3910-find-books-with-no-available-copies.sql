/* Write your T-SQL query statement below */
-- return date가 NULL 이면 빌리고 있는 상태
-- total_copies에서 borrwing_records의 book_id의 수를 뺐을 때 0인것을 추출
WITH CTE_TEMP AS (
    SELECT book_id, COUNT(book_id) AS cnt
    FROM borrowing_records
    WHERE return_date IS NULL
    GROUP BY book_id
)

SELECT l.book_id, l.title, l.author, l.genre, l.publication_year, l.total_copies AS current_borrowers
FROM library_books l JOIN CTE_TEMP c ON l.book_id = c.book_id
WHERE l.total_copies - c.cnt = 0
ORDER BY current_borrowers DESC, l.title