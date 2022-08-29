# data lemur
# QUESTION 1
SELECT
  users.city AS city, COUNT (trades.user_id) AS total_orders
FROM
  trades
JOIN
  users
USING 
  (user_id)
WHERE
  trades.status = 'Completed'
GROUP BY
  users.city
ORDER BY
  total_orders DESC
LIMIT
  3;
# QUESTION 2
SELECT
  pages.page_id
FROM
  pages
LEFT OUTER JOIN
  page_likes
USING
  (page_id)
WHERE
  page_likes.liked_date IS NULL
ORDER BY 
  page_id ASC;
# QUESTION 3
SELECT
  SUM(
  CASE WHEN device_type = 'laptop'
    THEN 1 ELSE 0 END
    ) AS laptop_views,
  SUM(
  CASE WHEN device_type IN ('tablet', 'phone')
    THEN 1 ELSE 0 END
    ) AS mobile_views
FROM
  viewership;