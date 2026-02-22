-- Lab 1: Analytical Queries
-- Author: [aida]
-- Date: 2026-02-22

-- Query 1: Top 3 longest books
SELECT title, author, pages, category
FROM books_read
ORDER BY pages DESC
LIMIT 3;

-- Query 2: Average rating by category
SELECT category, AVG(rating) AS avg_rating
FROM books_read
GROUP BY category;

-- Query 3: Reading streak (consecutive months with books finished)
WITH months AS (
    SELECT DISTINCT DATE_TRUNC('month', date_finished) AS month
    FROM books_read
),
numbered AS (
    SELECT month,
           ROW_NUMBER() OVER (ORDER BY month) AS rn
    FROM months
)
SELECT MAX(rn - EXTRACT(YEAR FROM month)*12 - EXTRACT(MONTH FROM month)) AS longest_streak
FROM numbered;

-- Query 4: Authors with multiple books read
SELECT author, COUNT(*) AS books_read, AVG(rating) AS avg_rating
FROM books_read
GROUP BY author
HAVING COUNT(*) > 1;
